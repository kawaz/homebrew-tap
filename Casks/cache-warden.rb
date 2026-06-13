cask "cache-warden" do
  version "0.19.0"

  on_arm do
    sha256 "197e6e59101372cf3f84564a8d289aebe4bb295c50b1e195aa6fff8d73c87089"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "2c1e7a618d382bba4e587c6069839341f41499917a1a338bcb840289706fa6ee"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
