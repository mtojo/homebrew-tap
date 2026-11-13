cask "plamo-translate-desktop" do
  version "0.5.0"
  sha256 "d3f8c3ef755d27877b70e08b151c085cf69d74eaf9f4c686ca23aca1a9805228"

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
