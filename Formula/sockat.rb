class Sockat < Formula
  desc "Print a path to a Unix domain socket that fits the socket address limit"
  homepage "https://github.com/kawaz/sockat-rs"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c259540419ea328bdc2cc48ccf8627f7f2a60a73faf86af2869e8731071bc165"
    end
    on_intel do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "18b3a41862253e09946b1bb147868b5b987b7ba5945d893e93967e9b502d1836"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65c3fe382f5c36510afdbc59c932ef5fbbf6348a105a4402b220da87289f05a8"
    end
    on_intel do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a3679ecb7f6a590eda33e5e115c1160330cb2b76bdf29641882501e4b331209"
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
