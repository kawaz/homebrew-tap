class Sockat < Formula
  desc "Print a path to a Unix domain socket that fits the socket address limit"
  homepage "https://github.com/kawaz/sockat-rs"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "39e612615d0f10a04fe6327d23ff99890f5ac610b8d9635fe2d6056b2d1abf74"
    end
    on_intel do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "07556dd9f2ea5067126c5c7d408f761b742075e99c45aa2eb06555d4ec75ec6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7fa93541244c6eb6f7743b4238ead752f09a415d6d0cd5520ad1f2c7efeec304"
    end
    on_intel do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f626c746744d1e0e573eb1199c4689c73ccad4a51b62c3742b19edc452dbc6e"
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
