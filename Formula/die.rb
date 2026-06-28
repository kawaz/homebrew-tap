class Die < Formula
  desc "Tiny CLI: print ARGS (or stdin) to stderr and exit 1"
  homepage "https://github.com/kawaz/die"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-darwin-arm64"
      sha256 "13628b1e20a9d5faca370bd24e6c7a0703d63b27cfba7cd9d8e30facd0086848"
    end
    on_intel do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-darwin-amd64"
      sha256 "395c8d4cc885ea93d79fac051814970c744aedeb33ac918da19afdf287cb0f1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-linux-arm64"
      sha256 "cc0ebede189be6ed154960c699b31b3c5b4fded00091bbad20abed592d7aea0b"
    end
    on_intel do
      url "https://github.com/kawaz/die/releases/download/v#{version}/die-linux-amd64"
      sha256 "8450fe8844738c8d636fd1a09c2c6bbf34724468797bb249ca82626a1a8439b2"
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
