cask "cache-warden" do
  version "0.22.0"

  on_arm do
    sha256 "9a27eed8c6f87be2302a338404c196901c3d1184b2b4a3f5aab5255174b60ad4"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "739e7992e7562fc17cac797d2b5586ef4e9b7fd67723390048c5c5eea82b7b1c"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
