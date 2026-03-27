cask "pipette" do
  version "0.3.11"
  sha256 "79216c3d89506c45c172e4858fbad74cc885e3ef9ca9553ea8d51fa29fc4390d"

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
