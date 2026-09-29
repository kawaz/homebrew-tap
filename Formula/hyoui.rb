class Hyoui < Formula
  desc "Drive claude, REPLs, and TUIs from the outside via CLI - a transparent PTY wrapper with no prefix keys"
  homepage "https://github.com/kawaz/hyoui"
  version "0.9.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2a9f3b1ca1c8de2c9d7318ca00b6c3202fe9c629fecf2a54eb04a419a0b7caf9"
    end
    on_intel do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2e1e4ad75396e75f3be3d6c55d7503a3e67d88e91655222f7f6cc040cdae5ef5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3842150777d6e7f8486108c8a1ee075ba8e5b2977b09ca8fde861e6f8b3d389"
    end
    on_intel do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c74dce6dc12046476ce4374f4e46c05e3ad6cfe5ae43eb17f1550cc3fbf9236e"
    end
  end

  def install
    bin.install "hyoui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyoui --version")
  end
end
