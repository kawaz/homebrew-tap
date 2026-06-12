class Hyoui < Formula
  desc "Drive claude, REPLs, and TUIs from the outside via CLI - a transparent PTY wrapper with no prefix keys"
  homepage "https://github.com/kawaz/hyoui"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c35e1da06d91d16690681ed25f9f8bea5d130ea37f8f388fffc2bff2b1651d16"
    end
    on_intel do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "13bcf59e197f712ff152a0042b496410dbae25a15d7ade29943c61bd103107f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b360b4a83064e184b29f5b6e35d8b29d1554c9c4ae0231abacb82aa12e1ff44"
    end
    on_intel do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ca6f275739ad4145b7aa43bf6865788aca9a99397957c6416cd19a771e572f3"
    end
  end

  def install
    bin.install "hyoui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyoui --version")
  end
end
