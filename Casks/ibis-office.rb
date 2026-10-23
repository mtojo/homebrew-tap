cask "ibis-office" do
  version "0.8.4"
  sha256 "ae14224f8b14576533fb1801d307a628f4e3b6747f40a35fabff5ace1364f8cb"

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
