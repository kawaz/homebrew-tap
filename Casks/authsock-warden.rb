cask "authsock-warden" do
  version "0.1.15"

  on_arm do
    sha256 "93dc060b2eef5050a66d49399a0e82b502a2a100739c1ec62bd1d80c89cbc12a"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "32066110c8029c9cec930567b5b95f068d7b06219678fc34c4ab0d629fc02586"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
