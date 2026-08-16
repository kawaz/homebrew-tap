cask "cache-warden" do
  version "0.29.1"

  on_arm do
    sha256 "a0e676a867332389ad3ed42f5e2e0b292113d088e8f28860f11c8fb915ff47c1"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "9fff9349402177465d01b33fdc156975faaef3d8336d10d6c5d52fee44902108"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
