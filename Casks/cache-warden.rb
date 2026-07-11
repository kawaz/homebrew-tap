cask "cache-warden" do
  version "0.25.0"

  on_arm do
    sha256 "58ee00849f05ceca91a5ee0911acae8ed8b91a302ee9e8aad5ff68f6f9c7465b"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "0b376941766c3fb4e1830f760be75dc34f698394a2d412c281d1220be85792ce"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
