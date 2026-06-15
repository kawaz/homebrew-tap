class JjWorktree < Formula
  desc "A git shim that translates worktree operations to jj workspace commands"
  homepage "https://github.com/kawaz/jj-worktree"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-aarch64-apple-darwin.tar.gz"
      sha256 "fbd51aaf144048b057f6385fc2c16f6f0c4a8a04232630119631163d9fa69f3d"
    end
    on_intel do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-x86_64-apple-darwin.tar.gz"
      sha256 "e29e747cecbd6e4d2aa538ed17df54a74e9cf3b12d0cfbf72ffb44b9b505c7b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b48c1d0c8f7b803d11b36a1c26097855d36b9d454247e38436c5d18205399280"
    end
    on_intel do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28c90b24ede9ccfc63abd0013dc966c52adb07187383c938aa18ce6627cce147"
    end
  end

  def install
    bin.install "jj-worktree"
  end

  test do
    assert_match "jj-worktree #{version}", shell_output("#{bin}/jj-worktree --version")
  end
end
