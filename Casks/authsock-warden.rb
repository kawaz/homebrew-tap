cask "authsock-warden" do
  version "0.1.16"

  on_arm do
    sha256 "13d42d04b34785ca52cae3c5b1f763608b4e78da5475842a77de30b216987a98"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "5152f34309ddaf6e966934961f1b787c69530acefaf2c5e17a8b1572102c07e6"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
