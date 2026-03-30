class JjWorktree < Formula
  desc "A git shim that translates worktree operations to jj workspace commands"
  homepage "https://github.com/kawaz/jj-worktree"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-aarch64-apple-darwin.tar.gz"
      sha256 "a1a802906af2150f4dbee7229d1c84846f1ae22f00676c17e55d7f594d7e80d0"
    end
    on_intel do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-x86_64-apple-darwin.tar.gz"
      sha256 "90b27b5e1dcb9eaea3f5ba7d1b67de9fc5d34f20ea1d5e0f965ba2c9e8541edd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "218f4b841aab137a58ff647f0a38e950892b91127a6704ce691b333493c73409"
    end
    on_intel do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a30543b64f3b99945397390e2d0f4e138fce183e412a55862a5af73c86671b5"
    end
  end

  def install
    bin.install "jj-worktree"
  end

  test do
    assert_match "jj-worktree #{version}", shell_output("#{bin}/jj-worktree --version")
  end
end
