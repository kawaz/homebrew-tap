class BumpSemver < Formula
  desc "Focused semver bump CLI: detect by basename and operate on Cargo.toml / *.json / VERSION"
  homepage "https://github.com/kawaz/bump-semver"
  version "0.33.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-arm64"
      sha256 "12422ad4bda41dcadba5abab57060302198eaaa6fe4a74cf770c8da862ac8710"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-amd64"
      sha256 "c5092602a813f5e938cccaa884b1ffd2d9c0d0413a32f647e3494afc0e465878"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-arm64"
      sha256 "b79d14b69be0cd000bb299108271449bdde35af2eb6fc2ee90b3ab25e1fa6029"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-amd64"
      sha256 "ee373cc699bd70d788b1705155af0d3634c12b8cbf1ad00b14d187610053a838"
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
