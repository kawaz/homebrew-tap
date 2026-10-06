class LlmGateway < Formula
  desc "A thin LLM proxy that keeps authentication out of the client's way"
  homepage "https://github.com/kawaz/llm-gateway"
  version "0.67.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b8842be9fd2b9d4d7c6a98d45411812e9d93277fa284324438b433d8b801d9a8"
    end
    on_intel do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "69a8b1bfe701d413126df12de48c45ecddcb04fc7a6a98c32cae5f1147bfa8e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e274308aa84a0af55b321f527364dac8b62eba2b84c59214325b5b7da697ddac"
    end
    on_intel do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbb85440be5e38f5fe18c8f4e94519b2374dfcd958b153f7c722856bac755173"
    end
  end

  def install
    bin.install "llm-gateway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-gateway --version")
  end
end
