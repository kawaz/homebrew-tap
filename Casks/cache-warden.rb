cask "cache-warden" do
  version "0.24.0"

  on_arm do
    sha256 "52c5d374e67eaa157ad433e83d21f80cc22ea3986ca05e23dabd2b0fe48ccf6e"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "29db73edafe2ba10961b93cf9a356bf9d4df69ddbeca344308d0559f78e37d65"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
