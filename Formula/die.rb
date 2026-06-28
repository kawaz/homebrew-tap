class Die < Formula
  desc "Tiny CLI: print ARGS (or stdin) to stderr and exit 1"
  homepage "https://github.com/kawaz/die"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-darwin-arm64"
      sha256 "fade5b749c18085d03d66b1063252a678345a647b64487329539039f25275cbc"
    end
    on_intel do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-darwin-amd64"
      sha256 "eb63e426aaeb60f30f0536ef9d12f3e9d23471e34c798003d8df6e2a5ec79fae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-linux-arm64"
      sha256 "90fbff9e204aa5066d27bdea59054a7e8a0d6555be5aa604e758528d8caa2763"
    end
    on_intel do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-linux-amd64"
      sha256 "50a1f34b01e02cdbeee527e748b39edc6ebd84e19b641893cc739a247ae0fea7"
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
