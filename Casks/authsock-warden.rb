cask "authsock-warden" do
  version "0.1.18"

  on_arm do
    sha256 "ed307e0237242ca13a9938362fd43e80b2aabbc0cf12c644c0f6c06a9344f72d"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "a5a5a80a07b06c5e9c56a4e20f98a0b0219e8885fed3137fe72a4301dbe8459d"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
