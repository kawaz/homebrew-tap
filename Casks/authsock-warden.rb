cask "authsock-warden" do
  version "0.1.24"

  on_arm do
    sha256 "0796e935ca3f5145d3bb7cb126362dbc93da6c8a415b746f53c56a72b9d00b38"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "bc0686decd310fa2c23f7d0a06aba013de369f63d05ca449357291387c8082a8"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
