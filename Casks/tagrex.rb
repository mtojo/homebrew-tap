cask "tagrex" do
  version "1.10.0"
  sha256 "4cb7403049f0582484b3c3d4f6f3a9e119beea140eb8c4cda66040b55d2d2c93"

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
