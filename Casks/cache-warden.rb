cask "cache-warden" do
  version "0.22.3"

  on_arm do
    sha256 "b185a709cf7155ff5dd62f8251377034f3309436cefeff5faeec4b495f4fcd29"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "97096310a1fcd12f4e6931708ba915438604197aa3820d9708a9928108af513f"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
