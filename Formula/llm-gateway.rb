class LlmGateway < Formula
  desc "A thin LLM proxy that keeps authentication out of the client's way"
  homepage "https://github.com/kawaz/llm-gateway"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7b20c1779cfaf6873754dad0aff0991d169199dcbafb0d52a9f26af5b69fb19b"
    end
    on_intel do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bc6d8b0603fe13f222ef80834d865281c97a57505ce551167c3a255ff6de2c24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "384d00067e8f69b398d7cbf7fae150d1631a38d18370839f7d61290717d671c1"
    end
    on_intel do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "001b1a26c6a69e1c47003a3f6f0f7c056747ad2ab39e59cf519470954daff79a"
    end
  end

  def install
    bin.install "llm-gateway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-gateway --version")
  end
end
