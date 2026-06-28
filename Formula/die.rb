class Die < Formula
  desc "Tiny CLI: print ARGS (or stdin) to stderr and exit 1"
  homepage "https://github.com/kawaz/die"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-darwin-arm64"
      sha256 "8607f2c63584129ced498feb72d21daff3d59c4661055c795b709176513f1c16"
    end
    on_intel do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-darwin-amd64"
      sha256 "3e11365a310e4fe7396529a83e27bc62225d1472b6aa3e70a8e7b65fb89e6537"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-linux-arm64"
      sha256 "a57b224363e9c56e0084f79d25cf61e334d2d61579e2abe038ba305c6691e064"
    end
    on_intel do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-linux-amd64"
      sha256 "07c3b57a716aba0147337b2edd498f878a143e203583277b80819932d5f4a727"
    end
  end

  def install
    bin.install Dir["die-*"].first => "die"
  end

  test do
    # die -- "msg" must write "msg\n" to stderr and exit 1.
    output = pipe_output("#{bin}/die -- testmsg 2>&1", nil, 1)
    assert_match "testmsg", output
  end
end
