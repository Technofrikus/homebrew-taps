cask "pipette" do
  version "0.5.1"
    sha256 "1cb56e4222c99215d4096137b80dbfc2c1610aba36373d4be22e4bb7d12c11ac"

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
