class SecurityAgentFocus < Formula
  desc "Auto-focus TouchID dialog on macOS when sudo prompts"
  homepage "https://github.com/kawaz/security-agent-focus"
  url "https://github.com/kawaz/security-agent-focus/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fb4d9635fe5e87a76d3a0c86de19a57fc2c44b8cebd52f516bd59f14300623dd"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "security-agent-focus.sh" => "security-agent-focus"
  end

  def caveats
    <<~EOS
      To enable auto-focus, register the LaunchDaemon:
        security-agent-focus register

      To disable:
        security-agent-focus unregister

      To check status:
        security-agent-focus status
    EOS
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/security-agent-focus 2>&1", 1)
  end
end
