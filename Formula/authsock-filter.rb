class AuthsockFilter < Formula
  desc "SSH agent proxy with filtering and logging"
  homepage "https://github.com/kawaz/authsock-filter"
  version "0.1.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-aarch64-apple-darwin.tar.gz"
      sha256 "b0ba78ca87eb6014d7ae58d6ef20718b92d3d61a42c3472b13bcd5d41d6dc95c"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-x86_64-apple-darwin.tar.gz"
      sha256 "d70fd184c91e3f13df882630b94955678ad18bfc96ffb1bd793ef82eb82a6d13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "185d7e5914dc089ce7cf7c900f5350559a92586db7950043125217e0966081cc"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0478f6d98194a0c92d457fb82573b33128899bfc118cf7fd0704094876dcf117"
    end
  end

  def install
    bin.install "authsock-filter"
  end

  test do
    assert_match "authsock-filter #{version}", shell_output("#{bin}/authsock-filter --version")
  end
end
