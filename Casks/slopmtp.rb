cask "slopmtp" do
  version "0.1.1"
  sha256 "83c0c878cdb33c41d5b69ed4323ab3b329893733d7f643b993ae011763ce54a4"

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
