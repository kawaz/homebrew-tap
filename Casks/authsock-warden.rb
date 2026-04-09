cask "authsock-warden" do
  version "0.1.27"

  on_arm do
    sha256 "889f485397d94b5be64eef8acc3ec4b1e7cc5348565d390f23abf11a3f10d6a9"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "e1784b44baae7594507111615e4163e20b8d36da1c54ad8712a8abcf120e6323"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
