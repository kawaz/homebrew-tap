cask "cache-warden" do
  version "0.19.1"

  on_arm do
    sha256 "1ca2ffa2712dc0bafda1cd0268c755ab3b4aba14ef3d20570a06b6ceced3b5a1"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "59c0369319113e01be5a79bd10405a1754bf6f28f73b6c7f67cab0e315f5ef06"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
