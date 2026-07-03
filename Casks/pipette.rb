cask "pipette" do
  version "0.4.9"
  sha256 "ef2e6f9daf3925b8a5e5a0aa0dccb13b4be1e7bbe3284df5e85199a3ee2db6dc"

  url "https://github.com/darakuneko/pipette-desktop/releases/download/v#{version}/Pipette-mac-arm64.dmg"
  name "Pipette"
  desc "Electron-based keymap editor for Vial-powered keyboards"
  homepage "https://github.com/darakuneko/pipette-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "Pipette.app"

  zap trash: [
    "~/Library/Application Support/pipette-desktop",
    "~/Library/Preferences/com.darakuneko.pipette.plist",
    "~/Library/Saved Application State/com.darakuneko.pipette.savedState",
  ]
end
