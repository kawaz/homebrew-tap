cask "cache-warden" do
  version "0.20.0"

  on_arm do
    sha256 "6647b20b11170c0fceea90a23b1bd4ecb3b10a0dc8d7f02cb8c67ff0216633b8"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-aarch64-apple-darwin.tar.gz"
  end
  on_intel do
    sha256 "b0a19d09b2fb6e797fe6a039ff089775842f80fb02bd91b825aec321b3be78c3"
    url "https://github.com/kawaz/cache-warden/releases/download/v#{version}/cache-warden-x86_64-apple-darwin.tar.gz"
  end

  name "cache-warden"
  desc "Securely caches secrets with TTL, process-aware access control, and reauth"
  homepage "https://github.com/kawaz/cache-warden"

  app "CacheWarden.app"
  binary "#{appdir}/CacheWarden.app/Contents/MacOS/cache-warden"
end
