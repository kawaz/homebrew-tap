cask "authsock-warden" do
  version "0.1.17"

  on_arm do
    sha256 "3fff1181ed2d0205edff1e8b439c2174d376ab28dc4f276d9cc6f79b6d7ee920"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "9841a6ce48da3624b037dad0c838888d8462a0e7213198451f87d9981270db83"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
