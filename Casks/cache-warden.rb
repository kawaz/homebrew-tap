cask "cache-warden" do
  version "0.22.2"

  on_arm do
    sha256 "f8be9acb07818406863026c45db46c2a9fa52c2e51a8322851757a392b960a8f"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "c292950f8a61e363f4c5a0a28ae1cfffec8f5bfcc1ea794980cf31f6ee9797fc"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
