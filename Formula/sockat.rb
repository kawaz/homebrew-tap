class Sockat < Formula
  desc "Print a path to a Unix domain socket that fits the socket address limit"
  homepage "https://github.com/kawaz/sockat-rs"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d8aa0f85af916ddd794940c3f8fa0a659ffaa07ceb14b7abed935a3a7025e6e3"
    end
    on_intel do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1ea00a767b72b258c212d18fe2914dd58837f970ea1f291ef04f5584bcfa8273"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4cfa0ded27e2a9bccd4d6d8a057c3f996287deaa9f6b28790b113a20a147f1b5"
    end
    on_intel do
      url "https://github.com/kawaz/sockat-rs/releases/download/v#{version}/sockat-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8089349353ce90c0b76a974aeeec4d9df96df70a550aa813b016d9e515c24bb"
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
