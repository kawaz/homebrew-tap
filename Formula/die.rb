class Die < Formula
  desc "Tiny CLI: print ARGS (or stdin) to stderr and exit 1"
  homepage "https://github.com/kawaz/die"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-darwin-arm64"
      sha256 "ff80626b844cad76a84279faa36b37e39edcc52dceda92bd9e013d57095853ea"
    end
    on_intel do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-darwin-amd64"
      sha256 "cf2d9c951d304351e39588154ae119b6c844d7b947f1c8c97bd3eb5e7d2d5026"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-linux-arm64"
      sha256 "49c1c9c78aa0d0e55b7ddd6ca7d79de458729b8aa38e3611ac4554cc11449b45"
    end
    on_intel do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-linux-amd64"
      sha256 "f0c2d2f0f5e55b84497879042dc19a5e16615d4361e5f91aa29e45f37ffac03a"
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
