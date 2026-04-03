class AuthsockWarden < Formula
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
      sha256 "552b32b331a20fc01d428c9725d35abbdced0b4ac91f580adf96663a936a0183"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
      sha256 "9a46e6c0d6cc8e3d01de47c696eba8b199c020cd60ef242dc2016c4ae08836ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d6df9b49f2558d5f378bbe4f17100f63857c2e7668e0cc5c40c80686c11bac4"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbf8a57bb4a96f50ec7b557bc948919adef3cfe4267a364b934e83452994e56f"
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
