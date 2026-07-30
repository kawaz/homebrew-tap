class Hyoui < Formula
  desc "Drive claude, REPLs, and TUIs from the outside via CLI - a transparent PTY wrapper with no prefix keys"
  homepage "https://github.com/kawaz/hyoui"
  version "0.9.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9024744e64ef51948266c2f5463081687f153156d096b35a8a016ca7cf0d387a"
    end
    on_intel do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9dd87935bfa20d174a201123ea7cae0849666e5d91e5e02621a538bc148b3a42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f22d44aff0c13451c6fd94c805b89cd696387c742b38d700fff12940244987ab"
    end
    on_intel do
      url "https://github.com/kawaz/hyoui/releases/download/v#{version}/hyoui-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "879a3c3fb2c52eefde2f08bf05bdb0212e9bfb2cfec33eef4e3995973412ffa1"
    end
  end

  def install
    bin.install "hyoui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyoui --version")
  end
end
