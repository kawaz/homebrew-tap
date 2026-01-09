class AuthsockFilter < Formula
  desc "SSH agent proxy with filtering and logging"
  homepage "https://github.com/kawaz/authsock-filter"
  version "0.1.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-aarch64-apple-darwin.tar.gz"
      sha256 "b3fee05c284cc1e611cc7d5a14f69838422942f4419ac3cb0791bec1e86b6622"
    end
    on_intel do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-x86_64-apple-darwin.tar.gz"
      sha256 "3bbc4ed7ca754d9d027db1fe4a01363dd7b3eb5474856292f5bd9cb461b8f4a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kawaz/authsock-filter/releases/download/v#{version}/authsock-filter-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec707dd182df3846965597d3f407a6328fcc8e021354f9438e80a272847427f3"
    end
  end

  def install
    bin.install "authsock-filter"
  end

  test do
    assert_match "authsock-filter #{version}", shell_output("#{bin}/authsock-filter --version")
  end
end
