class AuthsockWarden < Formula
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
      sha256 "879d47bf10bfd2da0d7ab2936e40c0254ffdadba194c3d4226315469817dbb9a"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
      sha256 "9176cddada61fc9154ea3dd371b7d1d9d576f7e3539a0a44d3ed48a60646f740"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3345fe53bde1e4828c60d8834e0c59e538394e11c82e42804e84d0df214893d3"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1cc7e51c8789fa41ee1076e5d58eb8f0c2387afea817d0959facb984a8054f67"
    end
  end

  def install
    bin.install "authsock-warden"
  end

  test do
    assert_match "authsock-warden", shell_output("#{bin}/authsock-warden --version")
  end
end
