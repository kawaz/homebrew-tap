cask "cache-warden" do
  version "0.22.1"

  on_arm do
    sha256 "efe44b633470bccab6a6e9cd17db6f3f36f889a5aebd41c56a3050b9e6557ea5"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "7f8e99e5dfd8b4ff11ab4c374dcc6f8328ec6e8f1d8770e5991ea982a982b876"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
