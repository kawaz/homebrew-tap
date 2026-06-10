class BumpSemver < Formula
  desc "Focused semver bump CLI: detect by basename and operate on Cargo.toml / *.json / VERSION"
  homepage "https://github.com/kawaz/bump-semver"
  version "0.33.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-arm64"
      sha256 "3964417483f04a6a1a22e739bd800503510ed3e4da86b839bdd725f37a6828ad"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-amd64"
      sha256 "3cf242d6c962f8dee52883241e253d39db6e7a87463df4a418f48a682725b305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-arm64"
      sha256 "1add21d33c119991a5bc111928fce44df929cadc3ba453b48c663ac9ba755960"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-amd64"
      sha256 "301f853920d295c2fec741415975cce933fb80dce2b4ffd788266a62516604de"
    end
  end

  def install
    bin.install Dir["bump-semver-*"].first => "bump-semver"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/bump-semver --version")
    # Smoke test: pure VER positional arg exercises argv parser + semver bump
    # without touching the filesystem, which is enough to catch most
    # build / linking regressions on the target platform.
    assert_equal "1.2.4", shell_output("#{bin}/bump-semver patch 1.2.3").strip
    assert_equal "2.0.0", shell_output("#{bin}/bump-semver major 1.2.3").strip
    assert_equal "1.2.3", shell_output("#{bin}/bump-semver get 1.2.3").strip
    # compare exit codes (0 true / 1 false / 2 error)
    system "#{bin}/bump-semver", "compare", "eq", "1.2.3", "1.2.3"
    assert_predicate 0, :success?
  end
end
