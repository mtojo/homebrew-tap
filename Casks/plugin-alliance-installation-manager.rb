cask "plugin-alliance-installation-manager" do
  version "1.4.0"
  sha256 "524b79d03170653d28e835cb4d6ec2ee20a0123c0f6f9d73194cec5fd39189b8"

  url "https://pluginalliance.myshopify.com/cdn/shop/files/pa_installation_manager_mac_#{version.dots_to_underscores}.zip"
  name "Plugin Alliance Installation Manager"
  desc "Plugin Alliance plugins manager"
  homepage "https://www.plugin-alliance.com/pages/installation-manager"

  livecheck do
    url :homepage
    regex(/pa_installation_manager_mac_(\d+(?:\_\d+)*)/)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?
      match[1].tr("_", ".")
    end
  end

  container nested: "PA-InstallationManager-v#{version}.dmg"

  app "PA-InstallationManager.app"

  uninstall launchctl: "com.plugin-alliance.pa-installationhelper",
            quit:      "com.plugin-alliance.plugins.PAInstallationManager",
            delete:    [
              "/Library/PrivilegedHelperTools/com.plugin-alliance.pa-installationhelper",
              "~/Library/Caches/com.plugin-alliance.plugins.PAInstallationManager/",
            ]

  zap trash: [
    "~/Library/Application Support/Plugin Alliance Installation Manager",
    "~/Library/Preferences/com.plugin-alliance.plugins.PAInstallationManager.plist",
  ]
end
