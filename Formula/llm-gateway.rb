class LlmGateway < Formula
  desc "A thin LLM proxy that keeps authentication out of the client's way"
  homepage "https://github.com/kawaz/llm-gateway"
  version "0.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9767e50b4705d4860f0ec10d88d8d25b8dbcb7895f5e7cb56b8ef532cd1c59cd"
    end
    on_intel do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "96b563d9f0ad28e8fd6f0b96d9dad2a5f99fdbe628c6ca2d82b2293e9a26edf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a394432e8a2e07286040d7d67f0ec2f5c2edd64e501b8ee6eb33e3c75278c30c"
    end
    on_intel do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d2d86ade6ee6ad5f34959fc8ddd1c03402cba6918c88fca858aab9c91f0ecc6"
    end
  end

  def install
    bin.install "llm-gateway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-gateway --version")
  end
end
