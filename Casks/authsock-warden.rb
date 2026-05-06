cask "authsock-warden" do
  version "0.1.29"

  on_arm do
    sha256 "4217a4fcee23a89daa3f02f6aca6219eb891db819e7bb7c5cb3793e302d7fee5"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "95ada50ae25020b476171f3cb41bbf539ee2713d9dc59b0df1afdd2d225a2e86"
    url "https://github.com/kawaz/authsock-warden/releases/download/v#{version}/authsock-warden-x86_64-apple-darwin.tar.gz"
  end

  name "authsock-warden"
  desc "SSH agent proxy with key filtering, process-aware access control, and 1Password integration"
  homepage "https://github.com/kawaz/authsock-warden"

  app "AuthsockWarden.app"
  binary "#{appdir}/AuthsockWarden.app/Contents/MacOS/authsock-warden"
end
