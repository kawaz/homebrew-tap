cask "authsock-warden" do
  version "0.1.25"

  on_arm do
    sha256 "66fd6ea433d1c44680e91cfe1717bc700779f0b866994343c3469982f35f6095"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "527c80e6cbbf4cbfb691bd1227aed3edce66a92ad8e994f53ddbdb0d496848b9"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
