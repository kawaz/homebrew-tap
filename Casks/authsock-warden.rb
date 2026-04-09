cask "authsock-warden" do
  version "0.1.26"

  on_arm do
    sha256 "7e6203fc255ba31c724c4e4ee720cb4e425ec3c18cca281158fb31d30a024257"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "fb77a843dbcfb8604681c1ef045a614c7f53b47e52e510a038e2896609737611"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
