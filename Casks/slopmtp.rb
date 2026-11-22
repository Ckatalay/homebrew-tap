cask "slopmtp" do
  version "0.1.2"
  sha256 "8b0e7070baacaf25c7ca380bdb4bd7e0a543a977786f3bd2d27abe0edb88d3eb"

  url "https://github.com/Ckatalay/slopMTP/releases/download/v#{version}/slopMTP-#{version}.zip"
  name "slopMTP"
  desc "MTP client for modded Nintendo Switch consoles running DBI or Sphaira"
  homepage "https://github.com/Ckatalay/slopMTP"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "slopMTP.app"

  zap trash: [
    "~/Library/Application Support/slopMTP",
    "~/Library/Caches/io.github.ckatalay.SlopMTP",
    "~/Library/Caches/slopMTP",
    "~/Library/Preferences/io.github.ckatalay.SlopMTP.plist",
  ]
end
