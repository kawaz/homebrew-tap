class BumpSemver < Formula
  desc "Focused semver bump CLI: detect by basename and operate on Cargo.toml / *.json / VERSION"
  homepage "https://github.com/kawaz/bump-semver"
  version "0.31.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-arm64"
      sha256 "24d1027b1d4a9750fc9750721822eac3d42fd3aebb5dc38d3dedcebcfe937517"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-amd64"
      sha256 "739f9c4c5cf937dc3bfbea1e9e3c565b585069054c6fce2036b4c90d1a98f7cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-arm64"
      sha256 "6a6897dcbd512057ad5ed37802a7b814a64b3dfcb61ffb9d7425f471c06fab2f"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-amd64"
      sha256 "cea1287ac8cf6e0284aa85c0601d984f87fc7ff2c4fd4aed74900434ad7e8c78"
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
