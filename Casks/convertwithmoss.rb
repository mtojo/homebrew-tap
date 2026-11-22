cask "convertwithmoss" do
  arch intel: "-intel"

  version "21.0.0"
  sha256 arm:   "739c16bed25a28a3a3c17b1727a3e6e484a864086341cafdf7e3b9cfc1d8f8c9",
         intel: "92518ae70a8cc16fcbfe13e8b05205080debbabccf8244b8782a738bfa64d6c0"

  depends_on :macos

  url "https://www.mossgrabers.de/Software/ConvertWithMoss/ConvertWithMoss-Installers-macos-15#{arch}/ConvertWithMoss-#{version}.dmg"
  name "ConvertWithMoss"
  desc "Multisample format converter"
  homepage "https://www.mossgrabers.de/Software/ConvertWithMoss/ConvertWithMoss.html"

  livecheck do
    url "https://github.com/git-moss/ConvertWithMoss"
    regex(/^(\d+(?:\.\d+)*)$/)
    strategy :git
  end

  app "ConvertWithMoss.app"

  uninstall quit: [
              "com.oracle.java.de.mossgrabers.convertwithmoss.ui",
              "de.mossgrabers.convertwithmoss.ui",
            ]

  zap trash: [
    "~/Library/Preferences/de.mossgrabers.convertwithmoss.plist",
    "~/Library/Preferences/de.mossgrabers.convertwithmoss.ui.plist",
  ]
end
