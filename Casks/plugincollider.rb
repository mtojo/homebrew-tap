cask "plugincollider" do
  version "0.5.2"
  sha256 "e9f3e021037ba48182f625892eb3ef7325a6ba44f913ed0d338726470303bb82"

  url "https://github.com/asb2m10/plugincollider/releases/download/v#{version}/PluginCollider-#{version}-macOS.dmg"
  name "PluginCollider"
  desc "SuperCollider as a plugin"
  homepage "https://github.com/asb2m10/plugincollider"

  pkg "PluginCollider-#{version}-macOS.pkg"

  uninstall quit:    "com.digitalsuburban.PluginCollider",
            pkgutil: "com.digitalsuburban.plugincollider.*"

  zap trash: [
    "~/Library/Application Support/PluginCollider",
    "~/Library/Application Support/PluginCollider.settings",
    "~/Library/Preferences/com.digitalsuburban.PluginCollider.plist",
  ]
end
