class AuthsockWarden < Formula
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"
  version "0.1.24"
  license "MIT"

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14da041b4e138b6df1fa500a32858cc39663b1cf52d118e436197a9012126b86"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff239f516823ee58467aa21ebda1985f04cc84a869947c5bd639fd00e9db3750"
    end
  end

  def install
    bin.install "authsock-warden"
  end

  test do
    assert_match "authsock-warden", shell_output("#{bin}/authsock-warden --version")
  end
end
