class BumpSemver < Formula
  desc "Focused semver bump CLI: detect by basename and operate on Cargo.toml / *.json / VERSION"
  homepage "https://github.com/kawaz/bump-semver"
  version "0.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-arm64"
      sha256 "44a1a243d8a65dc18242eaff4fd93984c61abc7c3047eabdeabe362341cee2d3"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-amd64"
      sha256 "49c8258026e61b9995d3d40635f38c8c44ed7f09a9d4fecdc0a0bfd09c04fd0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-arm64"
      sha256 "137bd6ec0c850002529a17ac40bdc77f7ae927b307e4efa58a3c665a7be53fab"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-amd64"
      sha256 "2b2949333f7a5d11e098ff2daf5acbd0756792b8513a2c28184ba99c9eab1a72"
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
