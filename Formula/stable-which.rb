class StableWhich < Formula
  desc "Resolve the stable PATH entry for a binary, verified by canonical path identity"
  homepage "https://github.com/kawaz/stable-which"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-aarch64-apple-darwin.tar.gz"
      sha256 "e1228060d2198692997a44182a343084021c8b94b8aaca052bd4dcb1c06e92e3"
    end
    on_intel do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-x86_64-apple-darwin.tar.gz"
      sha256 "618fd1ec6fabeca69bbb4b1d397c6e2fed0150bd6e91f3edb142b04e004b01fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0862b2a4c4740c8e7363b41b140ece5cfb3cf81bf2a74c6f6bf7ee72f693e877"
    end
    on_intel do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "606fc7efd7b840ef61c36588e7e9e5f5c4b2e9cdb87d4dfb5d6f26c3f61226f1"
    end
  end

  def install
    bin.install "stable-which"
  end

  test do
    assert_match "stable-which #{version}", shell_output("#{bin}/stable-which --version")
  end
end
