class BumpSemver < Formula
  desc "Focused semver bump CLI: detect by basename and operate on Cargo.toml / *.json / VERSION"
  homepage "https://github.com/kawaz/bump-semver"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-arm64"
      sha256 "3fc58373292123c071b4b99a12ff51e95685c34a9f0e7c11a71cc438e829f189"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-amd64"
      sha256 "85aef550cf05acfd54f4a873b18eb6d21283f0106afbb4bb4ce17fdcb9f8b1fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-arm64"
      sha256 "0d9b1f4cfad61e704ae24cb38ff6c667fadf2b480a2b4ff5903103780f25db8b"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-amd64"
      sha256 "20c6a7c4cd6b130065fa0cf9692a745995cfd3c19d4fdc67254fbc1c6443a916"
    end
  end

  def install
    bin.install Dir["bump-semver-*"].first => "bump-semver"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/bump-semver --version")
    # Smoke test: pure --value path exercises argv parser + semver bump
    # without touching the filesystem, which is enough to catch most
    # build / linking regressions on the target platform.
    assert_equal "1.2.4", shell_output("#{bin}/bump-semver patch --value 1.2.3").strip
    assert_equal "2.0.0", shell_output("#{bin}/bump-semver major --value 1.2.3").strip
    assert_equal "1.2.3", shell_output("#{bin}/bump-semver get --value 1.2.3").strip
  end
end
