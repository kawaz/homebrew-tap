cask "cache-warden" do
  version "0.23.0"

  on_arm do
    sha256 "01d4d732c3d42c854af715df0471381d97646bf4fb82a1025279a4b1cc7d0b08"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "9827272dac20537871d6e3d29642243881d8b30e5642f72c0346c1572bc89761"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
