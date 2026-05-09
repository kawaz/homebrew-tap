class BumpSemver < Formula
  desc "Focused semver bump CLI: detect by basename and operate on Cargo.toml / *.json / VERSION"
  homepage "https://github.com/kawaz/bump-semver"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-arm64"
      sha256 "d5c73c4e3ae5718d98264f313102991c1eb2cffc88dd8fa90ebbb59c3e9df302"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-amd64"
      sha256 "895becb3db7f6570551c9aa174bd7fa6c0510e67ea616f0e4a6eb7b3de4c9a11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-arm64"
      sha256 "cdddcab7cbaaaa91528d0666cce3d1c74e4d40da9564d888cb4315ddc2ce18ea"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-amd64"
      sha256 "2e53a6aa5252f5910fddeb42ee43752eac756b0b98915a03e42e742fd425714e"
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
