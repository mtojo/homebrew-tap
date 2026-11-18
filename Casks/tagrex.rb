cask "tagrex" do
  version "1.7.0"
  sha256 "9a5e98ce3dae163b3b8f03c2c8804cc86213a8b8d559758ec67f54bc5c061e10"

  url "https://github.com/tagrex/tagrex/releases/download/v#{version}/TagRex_#{version}_universal.dmg"
  name "TagRex"
  desc "Tag editor for your music library"
  homepage "https://github.com/tagrex/tagrex"

  app "TagRex.app"

  uninstall quit: "com.tagrex.desktop"

  zap trash: [
    "~/Library/Application Support/com.tagrex.desktop",
    "~/Library/Preferences/com.tagrex.desktop.plist",
  ]
end
