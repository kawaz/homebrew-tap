class AuthsockWarden < Formula
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
      sha256 "2bba2c3e6ca3e15a2849e7a954a89846b2800ff1450988a117e257b30b1e74e8"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
      sha256 "8d9217f153eae5782c6300df107fcce1317c40402cf2734600d83ee33b3d1882"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64a9c521bac2692c5cfde832b2d6be63315e1b0f4cc0cf32cdeb1afaae54907e"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1be1c7e7383ed054f508076e9a84413c90051da69e66469838a6fe52c000ec63"
    end
  end

  def install
    bin.install "authsock-warden"
  end

  test do
    assert_match "authsock-warden", shell_output("#{bin}/authsock-warden --version")
  end
end
