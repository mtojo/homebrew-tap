cask "plugincollider" do
  version "0.5.0"
  sha256 "d77782a4afaa34fee5044cc9f99031edb2bf1f31cb182e806e51f018ae606b88"

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
