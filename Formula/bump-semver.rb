class BumpSemver < Formula
  desc "Focused semver bump CLI: detect by basename and operate on Cargo.toml / *.json / VERSION"
  homepage "https://github.com/kawaz/bump-semver"
  version "0.48.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-arm64"
      sha256 "ecfd0499a9e7327b1ddffacf45cc462c930cf05ee237fb84de7317dbaf984dcf"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-amd64"
      sha256 "67f53b98f5ac931b985b6d69ad0bc841ef903e454cda45fcf18fc586c34c3790"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-arm64"
      sha256 "f43bfb521b455f0ba9bf0eb97d2d468e4fb103d44198cbdbea11f7b050ce40fe"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-amd64"
      sha256 "0e2dd28b5d0e718a70894796fefe293d4f9bd2dec3e9cc39f46dfe5f4b534890"
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
