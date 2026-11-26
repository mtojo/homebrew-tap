cask "tagrex" do
  version "1.12.0"
  sha256 "fbfb35b2b664c6e2853ae6920db7f2550af5175fcc75df70d27bfad0ddf3685e"

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
