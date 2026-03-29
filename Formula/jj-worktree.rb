class JjWorktree < Formula
  desc "A git shim that translates worktree operations to jj workspace commands"
  homepage "https://github.com/kawaz/jj-worktree"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-aarch64-apple-darwin.tar.gz"
      sha256 "033ac6b8b0245db1f4160fda445779d1b0da3f90cb3e1c21aee483b016273b58"
    end
    on_intel do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-x86_64-apple-darwin.tar.gz"
      sha256 "f8e0c7af2541fc073521aaae7d43c5ef467ec8784bbf1b8159e0eac6ea32b8a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc74793bf3e1c013cda0d4030acc8391f85abf5d2250289ef92f4eaa92162070"
    end
    on_intel do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e94151ed1b6f9d1173a0427feb9b7fc76fa90f58878e348110e310b071a30ba9"
    end
  end

  def install
    bin.install "jj-worktree"
  end

  test do
    assert_match "jj-worktree #{version}", shell_output("#{bin}/jj-worktree --version")
  end
end
