class AuthsockFilter < Formula
  desc "SSH agent proxy with filtering and logging"
  homepage "https://github.com/kawaz/authsock-filter"
  version "0.1.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-aarch64-apple-darwin.tar.gz"
      sha256 "50c3ca1613ef55c80fcac5dd94b46ad1429c854e5ba64ff2d1b16f75f012f9d9"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-x86_64-apple-darwin.tar.gz"
      sha256 "66ec9328175ad5b3706717af95d8521ee97b021d91afb78434a413117584a431"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38e4650bc6733dc9d58a9321ee68f4567012f92a4925071d7e13bf8080c374db"
    end
  end

  def install
    bin.install "authsock-filter"
  end

  test do
    assert_match "authsock-filter #{version}", shell_output("#{bin}/authsock-filter --version")
  end
end
