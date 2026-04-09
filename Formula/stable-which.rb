class StableWhich < Formula
  desc "Resolve the stable PATH entry for a binary, verified by canonical path identity"
  homepage "https://github.com/kawaz/stable-which"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-aarch64-apple-darwin.tar.gz"
      sha256 "08656a1e364699ace1eea73ea97a56f911b708f8f87f7c3e3a0af724ef7b8fe0"
    end
    on_intel do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-x86_64-apple-darwin.tar.gz"
      sha256 "891145892df21c6956b56d7690e4271c2519c28756a13dd6d145350628c445c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3593ea1a2dfed808edc076e89814503cd4385e7c11c41db58c4e6456808f2a9e"
    end
    on_intel do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e1a32ad428a1ded085203f5a51f4d446571aaeba7d1e7bc2d0d59691f34770a"
    end
  end

  def install
    bin.install "stable-which"
  end

  test do
    assert_match "stable-which #{version}", shell_output("#{bin}/stable-which --version")
  end
end
