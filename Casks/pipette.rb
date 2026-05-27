cask "pipette" do
  version "0.4.6"
  sha256 "4b8800e84f12f006e9667cefe80da40f7b86cdf26e6cf40edcbbe141320815e9"

  url "https://github.com/darakuneko/pipette-desktop/releases/download/v#{version}/Pipette-mac-arm64.dmg"
  name "Pipette"
  desc "Electron-based keymap editor for Vial-powered keyboards"
  homepage "https://github.com/darakuneko/pipette-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Pipette.app"

  zap trash: [
    "~/Library/Application Support/pipette-desktop",
    "~/Library/Preferences/com.darakuneko.pipette.plist",
    "~/Library/Saved Application State/com.darakuneko.pipette.savedState",
  ]
end
