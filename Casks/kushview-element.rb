cask "kushview-element" do
  version "1.1.1"
  sha256 "f59c2f22137d36f4bcc6c16b2293904c7d559011c70fdd9a0dda23537989cb03"

  url "https://github.com/kushview/element/releases/download/#{version}/element-#{version}-macos.dmg"
  name "Kushview Element"
  desc "Modular plugin host"
  homepage "https://kushview.net/element/"

  livecheck do
    url :url
    regex(/^element-?(\d+(?:\.\d+)*)-macos\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]
        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?
          match[1]
        end
      end.flatten
    end
  end

  pkg "element-#{version}-macOS.pkg"

  uninstall pkgutil: [
    "net.kushview.pkg.Element",
    "net.kushview.pkg.ElementVST",
  ]

  zap trash: [
    "~/Library/Application Support/Element",
    "~/Library/HTTPStorages/Element",
    "~/Library/Preferences/Element.plist",
  ]
end
