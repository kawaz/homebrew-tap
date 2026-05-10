class BumpSemver < Formula
  desc "Focused semver bump CLI: detect by basename and operate on Cargo.toml / *.json / VERSION"
  homepage "https://github.com/kawaz/bump-semver"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-arm64"
      sha256 "c9c460587323b9b0baed7d73127eccd7664e80fc6a9d30328791ef4cd59f8d17"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-amd64"
      sha256 "c4de44849ce1b66ec089f540962a8667b1cb04cd4f100a0d3a6746fb9e8072e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-arm64"
      sha256 "1cc213e9143ab6704d85710e38539fe66d0c0feedf9c441c820140527f810e8a"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-amd64"
      sha256 "7bfa82b380942502dd48db7f8d2639af59ddc0e47ad626cf63fd0c1f80b28110"
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
