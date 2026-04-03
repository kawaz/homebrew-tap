class AuthsockWarden < Formula
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"
  version "0.1.16"
  license "MIT"

  on_macos do
    odie "Use 'brew install --cask kawaz/tap/authsock-warden' on macOS"
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ccd1c7c51203ead37e76d3750ff97b36513f1ed94a9ab22eb5f094866bf599c2"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afc09712ce08ad886d6e9fe9e05389f03d00870d81cc9451f397cfacca50b3cd"
    end
  end

  def install
    bin.install "authsock-warden"
  end

  test do
    assert_match "authsock-warden", shell_output("#{bin}/authsock-warden --version")
  end
end
