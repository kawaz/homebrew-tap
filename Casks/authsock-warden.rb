cask "authsock-warden" do
  version "0.1.23"

  on_arm do
    sha256 "a72a9c0904ce3ce511e0b534a0f0c9ae444107331cccf56306d3c347730b0618"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "9b0038de659f86df6ecd4b1b5be3ad9a9d36cf2804081f6b1477cca8178012bf"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
