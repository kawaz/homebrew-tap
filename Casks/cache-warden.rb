cask "cache-warden" do
  version "0.29.2"

  on_arm do
    sha256 "06dd664dd8ae78e015769ab4bb0975a4cafaffb664dcab4e9d7dc2e19c32be10"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "31ddb70cb4b6afbf01c92a53e5c7ec10ac8fcca4f572fd0447527b4c7fbc6639"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
