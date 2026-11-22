cask "tagrex" do
  version "1.11.0"
  sha256 "5a59e4501546d92f468f396cc9e855897494b09dae3e70332dbb83960bbdfb49"

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
