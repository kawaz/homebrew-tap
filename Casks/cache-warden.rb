cask "cache-warden" do
  version "0.28.0"

  on_arm do
    sha256 "c84426043db9d52d4a26fa652951a497405c35e828fc0585b826173a461ff5e9"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "c71f6616fee740427268535ce7be71aa46b17bb71a6340cd9aa9ec992edbcc77"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
