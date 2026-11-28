cask "ibis-office" do
  version "0.8.10"
  sha256 "8a8a3953f5458256214a7dc1c4f47280e8d120c2d7236a3d5a6c41b0995692a3"

  url "https://github.com/ibisjp/ibis-office/releases/download/v#{version}/ibisOffice-#{version}-macOS.zip"
  name "ibisOffice"
  desc "Next-gen Office suite"
  homepage "https://github.com/ibisjp/ibis-office"

  app "ibisOffice.app"

  uninstall quit: "jp.ne.ibis.office"

  zap trash: [
    "~/Library/Preferences/jp.ne.ibis.office.plist",
  ]
end
