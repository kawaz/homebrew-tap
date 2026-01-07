class AuthsockFilter < Formula
  desc "SSH agent proxy with filtering and logging"
  homepage "https://github.com/kawaz/authsock-filter"
  version "0.1.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-aarch64-apple-darwin.tar.gz"
      sha256 "1865fb6925060a1a8ed6385b69439c72c5e11dff899e196e24d0b1d13a0816a5"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-x86_64-apple-darwin.tar.gz"
      sha256 "f306b7add64f2d53a73d7b8145a212ab663de62c2479be6f447ecfacd41f6731"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "388547864a027e21cda9dc72719dc386d4fbf109c868e000a39652865bad5687"
    end
  end

  def install
    bin.install "authsock-filter"
  end

  test do
    assert_match "authsock-filter #{version}", shell_output("#{bin}/authsock-filter --version")
  end
end
