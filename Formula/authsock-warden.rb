class AuthsockWarden < Formula
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
      sha256 "89be8bd484531ffddb4fd4a3dcbbacfa75bc8d12ab24f090c3969722b0d40943"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
      sha256 "0b164297737d8f3fcf6b18d7a71700f768e825498ce6888af4fa6cbf9a197ad9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16483c7e38c60dcbf676cf1a54dbeccfcc37e916170a0f70c1e2433f5c18689d"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "98caf4b3448a96b598feaa8e58c0285e6d07f68b2349a90cce68bfbb698c1d17"
    end
  end

  def install
    bin.install "authsock-warden"
  end

  test do
    assert_match "authsock-warden", shell_output("#{bin}/authsock-warden --version")
  end
end
