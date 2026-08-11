cask "cache-warden" do
  version "0.27.0"

  on_arm do
    sha256 "c1a85645e60553001ebc8c3337b1e44590c04ec718c1ca1c9180e96b6cd68ddf"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "cd2631673bccc94d71368533483890a58e6911a7ee3b12d195051e59fd2fbe20"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
