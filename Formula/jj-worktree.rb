class JjWorktree < Formula
  desc "A git shim that translates worktree operations to jj workspace commands"
  homepage "https://github.com/kawaz/jj-worktree"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-aarch64-apple-darwin.tar.gz"
      sha256 "61becea4fdb51364a07cea3f9947aa5ae098b09877d24513801f398f445c086b"
    end
    on_intel do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-x86_64-apple-darwin.tar.gz"
      sha256 "be5782fbde12a56c9acf0a4cd4abdd357ce613e9595864a2b91b346f62a9207f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08bc264a8b6c968a42ba99bf552935b3bdc672f04f0da60943b7134b411ac620"
    end
    on_intel do
      url "https://github.com/kawaz/jj-worktree/releases/download/v#{version}/jj-worktree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e7a9a9007d78b8ca180ec86fc0445dcad4ca42035a1b4adcf44acb13b1ad95f"
    end
  end

  def install
    bin.install "jj-worktree"
  end

  test do
    assert_match "jj-worktree #{version}", shell_output("#{bin}/jj-worktree --version")
  end
end
