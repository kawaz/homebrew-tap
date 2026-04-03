cask "authsock-warden" do
  version "0.1.19"

  on_arm do
    sha256 "4726022400c1064d6fc6b507f48c929dd307eacdfa41ba8b7eb66f4b5e29794c"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "a7cc43760c372a37dd0dbe2d3025ae32d5c438778ee32567478c6537d4a3b82c"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
