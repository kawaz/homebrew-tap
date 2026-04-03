class AuthsockWarden < Formula
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
      sha256 "301513437eb68c0983bfc1be245935760519ac14f5772793d820c182b7171336"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
      sha256 "7ffa7706107c8f26dc24974b2c9826cd054028077b30fe47a3e3cd92c1a8fd50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85e33da0fe9ee285313174346ceb5ae70d590b22e714901b3566fef95800f9c0"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "006ae7212267a1000d00bf9981804435d80d71bbd194e53d68d5c198884a3736"
    end
  end

  def install
    if OS.mac?
      prefix.install "AuthsockWarden.app"
      bin.install_symlink prefix/"AuthsockWarden.app/Contents/MacOS/authsock-warden"
    else
      bin.install "authsock-warden"
    end
  end

  test do
    assert_match "authsock-warden", shell_output("#{bin}/authsock-warden --version")
  end
end
