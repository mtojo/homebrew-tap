cask "plamo-translate-desktop" do
  version "0.6.0"
  sha256 "db9e4e366c0f1412d54be957fde4405250c14f81807f03bb647b6feae6b66b8a"

  url "https://github.com/tanakh/plamo-translate-desktop/releases/download/v#{version}/plamo-translate-desktop-#{version}-macos-arm64.dmg"
  name "PLaMo Translate Desktop"
  desc "A desktop translation app that runs PLaMo 3 Translate locally on your computer"
  homepage "https://github.com/tanakh/plamo-translate-desktop"

  app "PLaMo Translate Desktop.app"

  uninstall quit: "com.github.tanakh.plamo-translate-desktop"

  zap trash: [
    "~/Library/Application Support/plamo-translate-desktop",
    "~/Library/Preferences/com.github.tanakh.plamo-translate-desktop.plist",
  ]
end
