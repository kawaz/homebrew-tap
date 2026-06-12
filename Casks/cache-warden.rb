cask "cache-warden" do
  version "0.18.0"

  on_arm do
    sha256 "40222443f6cf99b504a28ac83a3b1de13c08ad59ccce250a22e397173fab4e36"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "c6bf2009f8eafb3c41789a2e5e7c50c3227f34f3c2ac0b8c8e37829d7b8e54e8"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
