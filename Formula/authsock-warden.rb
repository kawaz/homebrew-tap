class AuthsockWarden < Formula
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"
  version "0.1.18"
  license "MIT"

  on_macos do
    odie "Use 'brew install --cask kawaz/tap/authsock-warden' on macOS"
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa09fc7df59ada1b2ac05bbe25824d83f0493a0d65524f07a01fba0c7b9f51c7"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45a955626c2bc8b0605b25b43c5e4bcda72e5ef73240f9961f80c2f8ffb60899"
    end
  end

  def install
    bin.install "authsock-warden"
  end

  test do
    assert_match "authsock-warden", shell_output("#{bin}/authsock-warden --version")
  end
end
