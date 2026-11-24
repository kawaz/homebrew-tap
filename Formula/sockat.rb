class Sockat < Formula
  desc "Print a path to a Unix domain socket that fits the socket address limit"
  homepage "https://github.com/kawaz/sockat-rs"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6848bdb27c5e110e40fb1e26f701952c1dca8392c01d78f5b4db26ff6b503618"
    end
    on_intel do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5876d94883cd6fd1c494ac10ac6ac00f1b0a7980b71308c2adbbe8b0b1a58655"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "374cba7b280423499dfe3e0b3e536a1ae907a8eec9b5429b3105c06d08d3ef3c"
    end
    on_intel do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5caba39aad9cda3bfe775a67b89554bee502cd90871c82d4f1579ef78507bb46"
    end
  end

  def install
    bin.install "sockat"
    generate_completions_from_executable(bin/"sockat", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sockat --version")
  end
end
