cask "ibis-office" do
  version "0.8.7"
  sha256 "7f00ff7dc3bc63d064789f2f51b94168f7ed72f460666e60746341b41572c920"

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
