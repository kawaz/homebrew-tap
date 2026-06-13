class StableWhich < Formula
  desc "Resolve the stable PATH entry for a binary, verified by canonical path identity"
  homepage "https://github.com/kawaz/stable-which"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-aarch64-apple-darwin.tar.gz"
      sha256 "f70de28551ae2034beae8fb44f441de7a0146d9e9e715cfdae6be006cbee67c6"
    end
    on_intel do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-x86_64-apple-darwin.tar.gz"
      sha256 "acab50c797d1a330db99809c8aefb6dae241a1c5aed82840160be1340ff775a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49cee07c75813676652e0f64c607d033724d20a478ed7946e2a4fdd5f1add128"
    end
    on_intel do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78459321c24fa2ea26aa5c38dbb0d843b7fb954d8b055b955b848872f2e642d1"
    end
  end

  def install
    bin.install "stable-which"
  end

  test do
    assert_match "stable-which #{version}", shell_output("#{bin}/stable-which --version")
  end
end
