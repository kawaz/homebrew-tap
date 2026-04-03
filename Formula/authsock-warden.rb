class AuthsockWarden < Formula
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"
  version "0.1.17"
  license "MIT"

  on_macos do
    odie "Use 'brew install --cask kawaz/tap/authsock-warden' on macOS"
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4ccd315536643eacfa10fb10bf0c7fd5986b19f6b83d54de06a96a7983c208f"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6bf923d52fa4826854e9020ed500a23e92442a728f1cc6a05048510ecd8d0a06"
    end
  end

  def install
    bin.install "authsock-warden"
  end

  test do
    assert_match "authsock-warden", shell_output("#{bin}/authsock-warden --version")
  end
end
