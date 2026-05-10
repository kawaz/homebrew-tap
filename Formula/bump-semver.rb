class BumpSemver < Formula
  desc "Focused semver bump CLI: detect by basename and operate on Cargo.toml / *.json / VERSION"
  homepage "https://github.com/kawaz/bump-semver"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-arm64"
      sha256 "2e7b7726babc0d565bed3252153e8dbbfc8f7ca80ce88fe12ffcf2c02900e955"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-amd64"
      sha256 "5e470865ade931813dd71251662524e09873de88ef4595894b9222e2dfaea483"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-arm64"
      sha256 "b1a6a0f97e9fc4ebc7781d061fa60feed0d8a4558fad67e72b24456a675f6616"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-amd64"
      sha256 "8d88269238f42fc0d586e7235b2fb4f9c3f75ab258201ed00128bc063e289733"
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
