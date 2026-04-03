cask "authsock-warden" do
  version "0.1.21"

  on_arm do
    sha256 "c982de425bfb713eeb0fe48fd69ad3078eaea4345e176fd14b897a4fb069a42d"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "239791b463a9be1f8fdf91141ab1fca66a9bfc8b3115eb13ba2c654c5f4b9b3d"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
