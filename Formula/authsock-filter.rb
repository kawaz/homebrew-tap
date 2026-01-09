class AuthsockFilter < Formula
  desc "SSH agent proxy with filtering and logging"
  homepage "https://github.com/kawaz/authsock-filter"
  version "0.1.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-aarch64-apple-darwin.tar.gz"
      sha256 "1a63e2282333f0c455a3d24ef29fccbbf50f415295071d935dc3ca01ee13162d"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-x86_64-apple-darwin.tar.gz"
      sha256 "f9f6d864c25d9d03e644f364ce03b87b67bde0c524521060e6f8a2598d3c183d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0de40ac698991b1ba902c13e634c0d044ed14d3e02d374846ae72a873d012fa4"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d26a7c181da2d5e5ca5fa49ab926295fc4ca5a563fd0039e0dbc515a0648dbb"
    end
  end

  def install
    bin.install "authsock-filter"
  end

  test do
    assert_match "authsock-filter #{version}", shell_output("#{bin}/authsock-filter --version")
  end
end
