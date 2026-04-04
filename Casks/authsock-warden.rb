cask "authsock-warden" do
  version "0.1.22"

  on_arm do
    sha256 "82abbba751857dd0612a8751f30e51faaf6cda74d294796e5fa8a3f345f18ad1"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "d8b9c769c77a7e9e9c4034e813525493e5c7b33331cacea20cdeded2df8890c5"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
