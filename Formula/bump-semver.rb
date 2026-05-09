class BumpSemver < Formula
  desc "Focused semver bump CLI: detect by basename and operate on Cargo.toml / *.json / VERSION"
  homepage "https://github.com/kawaz/bump-semver"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-arm64"
      sha256 "fcb67dea79be41490db1f300e032353635f0e115890c12f8f83763a535781dbe"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-darwin-amd64"
      sha256 "09ac4a7281b218d11ffd37bcdd99055f6b84a8f78919a1957ee1edab68878977"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-arm64"
      sha256 "af3157be27c2de0365e84df103161d4ab20260d023e5a0d8cb86f8339cf46776"
    end
    on_intel do
      url "https://github.com/kawaz/bump-semver/releases/download/v#{version}/bump-semver-linux-amd64"
      sha256 "f0fe9d86df0f97ddd7f4b262547fde04884d455bce32301877419cce3cbfd6a6"
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
