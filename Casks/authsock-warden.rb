cask "authsock-warden" do
  version "0.1.20"

  on_arm do
    sha256 "5fa9803b3f0b324af5142b637e40d254fb0a68477e7c305b3d25235da8566895"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "b9645e3c9925c1791c56e521c44a86d22642226ca5ab854406f2830a00f9b212"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
