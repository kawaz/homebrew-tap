class JjWorktree < Formula
  desc "A git shim that translates worktree operations to jj workspace commands"
  homepage "https://github.com/kawaz/jj-worktree"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-aarch64-apple-darwin.tar.gz"
      sha256 "2a61085a4f32105645e40de3352dbc68a8e7181bcb79bee19df063fb0ddd65e2"
    end
    on_intel do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-x86_64-apple-darwin.tar.gz"
      sha256 "573b75f25e7f5cbc1e988a68d9c35063d1de48db3287f346fb97a99781ea8aea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0c95958204768f9adef228cf048db1ba4124f0af80c623e9c075ba9032fdfd8"
    end
    on_intel do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "816457b61491164ceab3a29a3b83c54bbbfeebbb4916436931eb91cfaa0bbae9"
    end
  end

  def install
    bin.install "jj-worktree"
  end

  test do
    assert_match "jj-worktree #{version}", shell_output("#{bin}/jj-worktree --version")
  end
end
