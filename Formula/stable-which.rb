class StableWhich < Formula
  desc "Resolve the stable PATH entry for a binary, verified by canonical path identity"
  homepage "https://github.com/kawaz/stable-which"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-aarch64-apple-darwin.tar.gz"
      sha256 "d4499c2c3ced19602ade2517f7b47e35c10a50195de3d84fb3bee9a6977537e3"
    end
    on_intel do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-x86_64-apple-darwin.tar.gz"
      sha256 "65782b3887b80517b92994871470736a990c85c69f73d92241e454cb24f0bbb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d86c58c24505ed5679d2bdb186f743f09d742bb72cbdc010c95e4422bfbfd7e6"
    end
    on_intel do
      url "https://github.com/kawaz/stable-which/releases/download/v#{version}/stable-which-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ffcf2b12141a0bf53b5ac3d1eca8ef2c803edd16848b971c06fe05c75ca0889"
    end
  end

  def install
    bin.install "stable-which"
  end

  test do
    assert_match "stable-which #{version}", shell_output("#{bin}/stable-which --version")
  end
end
