class Die < Formula
  desc "Tiny CLI: print ARGS (or stdin) to stderr and exit 1"
  homepage "https://github.com/kawaz/die"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-darwin-arm64"
      sha256 "b596e1e3bf626662ed76e2054b45bf5aa28842d3bf581c0746dd627dc8505631"
    end
    on_intel do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-darwin-amd64"
      sha256 "cae668eaeb51ed6a5b2fbed4a18e11efd9c33d2fb02f93c47124e9c6e92ca276"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-linux-arm64"
      sha256 "a0a9ff8181a1396129469b672715d160f4a7124462a013a04954d9dd16cfb570"
    end
    on_intel do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-linux-amd64"
      sha256 "5056dcd60a95d9b9c5cb09fdc7818c052bfc0043b643d00f1c087b87498a427c"
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
