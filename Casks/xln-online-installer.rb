cask "xln-online-installer" do
  version "4.4.0,9"
  sha256 "3e90521723a288664354baf2e9e4214b21e661b9ff152658155f7407e0d4b533"

  url "https://xlnaudio.s3.amazonaws.com/products/XLN%20Online%20Installer/#{version.csv.first.dots_to_underscores}%20Release#{version.csv.second}/downloadables/XLN%20Online%20Installer.dmg"
  name "XLN Online Installer"
  desc "XLN Audio plugins manager"
  homepage "https://www.xlnaudio.com/install"

  livecheck do
    url "https://www.xlnaudio.com/api/download/96"
    regex(%r{XLN%20Online%20Installer/(\d+(?:\_\d+)*)%20Release(\d+)/})
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
      next if match.blank?
      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  app "XLN Online Installer.app"

  uninstall launchctl: "com.xlnaudio.onlineinstallerhelpertool",
            quit:      "com.xlnaudio.xlnonlineinstaller",
            delete:    [
              "/Library/LaunchDaemon/com.xlnaudio.onlineinstallerhelpertool.plist",
              "/Library/PrivilegedHelperTools/com.xlnaudio.onlineinstallerhelpertool",
              "~/Library/Caches/com.juce.locks/XLN",
              "~/Library/Caches/com.juce.locks/XLN_Process",
            ]

  zap trash: [
    "/Library/Preferences/com.xlnaudio.xlnonlineinstaller.plist",
    "~/Library/Application Support/XLN Online Installer",
    "~/Library/Preferences/ByHost/com.xlnaudio.xlnonlineinstaller.*.plist",
  ]
end
