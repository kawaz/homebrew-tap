cask "cache-warden" do
  version "0.29.0"

  on_arm do
    sha256 "c4e7ce00de420b77d7142c72439427d370878fcb3b0458b01571c610509f1436"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "e089477aca5c516b446a2700637dff32f040d0d3024e462cd3b0c50a516222d7"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
