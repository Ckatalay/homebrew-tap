cask "slopmtp" do
  version "0.1.0"
  sha256 "2e05637f287bfc2eba5eb8db05dda00f1e8dbea7d41cf5a3674428c4c390f989"

  url "https://github.com/Ckatalay/slopMTP/releases/download/v#{version}/SlopMTP-#{version}.zip"
  name "slopMTP"
  desc "MTP client for modded Nintendo Switch consoles running DBI or Sphaira"
  homepage "https://github.com/Ckatalay/slopMTP"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "SlopMTP.app"

  zap trash: [
    "~/Library/Application Support/SlopMTP",
    "~/Library/Caches/io.github.ckatalay.SlopMTP",
    "~/Library/Caches/SlopMTP",
    "~/Library/Preferences/io.github.ckatalay.SlopMTP.plist",
  ]
end
