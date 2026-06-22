class Hyoui < Formula
  desc "Drive claude, REPLs, and TUIs from the outside via CLI - a transparent PTY wrapper with no prefix keys"
  homepage "https://github.com/kawaz/hyoui"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6878debd11c9633f3d054940b80adc829d965e55a7931c8d85e85394b00883f4"
    end
    on_intel do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f7493f0c2f165d1fea5b0781d52cbf242f590328f6f4d056bf74bcb3e0cf5331"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85a14e44e1da84597c6e8ba24e68010bc82253e683c955ea0ffc3c1cd0c762d2"
    end
    on_intel do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "311082009e31dcd542613bddbe81efbdda5838a7705655f7427f78bcfeafc34e"
    end
  end

  def install
    bin.install "hyoui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyoui --version")
  end
end
