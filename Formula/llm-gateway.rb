class LlmGateway < Formula
  desc "A thin LLM proxy that keeps authentication out of the client's way"
  homepage "https://github.com/kawaz/llm-gateway"
  version "0.70.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c88872a5746931fef08c4496e2cb48f5811861efa8d456fcec20d7e4f574b3f3"
    end
    on_intel do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "687d5f7d63ea4d10f24d15787dc8e2a08c93a99a17828c1b192707fbd0c6e266"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "326a3021b5dd94b7f079397a2387f350a1e31669da1f2ccc06b4e8a5827c9c20"
    end
    on_intel do
      url "https://github.com/kawaz/llm-gateway/releases/download/v#{version}/llm-gateway-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "624ecf7c9bbb1d5336591a0f9d4cf5bac66bb4dbbcfd8ec7a11cb09121a30ffc"
    end
  end

  def install
    bin.install "llm-gateway"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-gateway --version")
  end
end
