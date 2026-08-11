cask "cache-warden" do
  version "0.26.0"

  on_arm do
    sha256 "942177287f1b0d1593f384614cdd2ec9588be5c4ded48b75053d7fd20287679d"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "deefd5ed20a363bfe1a593786199a30838ff5bcfeb68b6eb86c5c17b77d42005"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
