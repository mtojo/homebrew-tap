cask "ibis-office" do
  version "0.8.3"
  sha256 "a389d4c30a8b4e501ae59a4bd7acc4b95a6e3ba70ba5672c84413f186e5c6b4f"

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
