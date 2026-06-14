cask "cache-warden" do
  version "0.21.0"

  on_arm do
    sha256 "8993036091733201005c60567c6717beb6a5fd073f2c3b36f2e25c9633abf623"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "ccfee6f253251d2c02cb54faa070c5ccff23b2502f0db02ecee3eaa9db241d53"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
