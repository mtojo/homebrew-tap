cask "tagrex" do
  version "1.5.0"
  sha256 "c7af9a6c732428c558051d23439752e474749ded99cf81b7bdb4402d8a796000"

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
