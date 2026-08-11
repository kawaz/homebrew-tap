cask "cache-warden" do
  version "0.26.1"

  on_arm do
    sha256 "0de0202afc1c2b69272ca78e66334c731e7033c1ee9943acfe3ff2481247439d"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "fa929cb755654d833d20c53f281c100bf6c235349bfde757cd81d51da7fd5446"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
