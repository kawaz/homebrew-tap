class Hyoui < Formula
  desc "Drive claude, REPLs, and TUIs from the outside via CLI - a transparent PTY wrapper with no prefix keys"
  homepage "https://github.com/kawaz/hyoui"
  version "0.9.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dd226c6576438eb6317c18497b78a8a362f9c08dc0102af850153c032d2fa59a"
    end
    on_intel do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0d3b68cb4f47c8b40f4c57715f2022ff380bbf36bccecee2701341e97363693a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f9d8300f109dbbec8e9aa4b4e37da3b4aebfdfb06ac0364f42a38d34ff9aea9"
    end
    on_intel do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17661761c689aa1f3e6ba56d946d769d720d684219b884d8579ff566039eaf63"
    end
  end

  def install
    bin.install "hyoui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyoui --version")
  end
end
