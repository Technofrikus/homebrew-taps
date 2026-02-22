cask "pipette" do
  version "0.2.0"
  sha256 "67bbee993462af2b6fb44f5e742cdb54a974c87ddf4175f07c127f5d7dedd3a1"

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
