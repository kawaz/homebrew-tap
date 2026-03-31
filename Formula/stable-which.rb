class StableWhich < Formula
  desc "Resolve the stable PATH entry for a binary, verified by canonical path identity"
  homepage "https://github.com/kawaz/stable-which"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-aarch64-apple-darwin.tar.gz"
      sha256 "002820750fd7291b531943db54aec2e9628b8acd15ae271fee24cc7698d160f2"
    end
    on_intel do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-x86_64-apple-darwin.tar.gz"
      sha256 "5283784d7a618b6fa14c25c830e86ae5b42891eb5ca44f76a1dd0a697e114a53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a29b6249b1e73e5bb043631793fe2204c92a5cf67c1bcc5f61116d400887f29"
    end
    on_intel do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb112e4ad68ce8cea0f1d42c14c165101d3eee0bff30b86bb18154fc4a37bc4a"
    end
  end

  def install
    bin.install "stable-which"
  end

  test do
    assert_match "stable-which #{version}", shell_output("#{bin}/stable-which --version")
  end
end
