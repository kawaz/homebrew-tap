class LlmGateway < Formula
  desc "A thin LLM proxy that keeps authentication out of the client's way"
  homepage "https://github.com/kawaz/llm-gateway"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f0257a9a1fa0ac2fdfe5f1b47fc890c492c4fb4aca0436a5bc9ab68ec48b3948"
    end
    on_intel do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "06ac386967e3e203b2382aeddee281d4f84b8602ea59da7279a6b85c1d261dc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ae3b2ab70fba797b49e0608773de8b36bddf74e3455563cec24a30a50a785e5"
    end
    on_intel do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1be40d7f65d5ef1eb1d62f9d80ae964f8638fbe71e76e2ceb8c3dedf35b4a97"
    end
  end

  def install
    bin.install "llm-gateway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-gateway --version")
  end
end
