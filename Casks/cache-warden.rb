cask "cache-warden" do
  version "0.18.1"

  on_arm do
    sha256 "93198a1724e37781a1519b577e12d51b09e56f2ec5ad52b8eff4c705736fb9e2"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "544faf7bb18efddab51500a8bb18d917f3b95d191ca375e64e654294346ecae5"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
