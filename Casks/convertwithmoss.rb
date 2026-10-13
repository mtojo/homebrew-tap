cask "convertwithmoss" do
  arch intel: "-intel"

  version "20.3.0"
  sha256 arm:   "bfa43ae156b0155ecf4f4bd66da235314d5affd4a2b753735c9c2a8858caf3d1",
         intel: "464d5c47e042879e480c902367c5286b5b3baba7a5725aa0cdf45db18654eef5"

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
