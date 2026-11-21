cask "ibis-office" do
  version "0.8.9"
  sha256 "fd4e1c0e9c23131c3cc58e8e0965348bd17bf8b0f5d35a0283c5d921b24dc11a"

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
