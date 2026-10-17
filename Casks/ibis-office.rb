cask "ibis-office" do
  version "0.8.1"
  sha256 "c2aaf98fccdd93fbb787a58b6025f9e62f0c09e78fe9e8a38fb337c3dfe2bd3f"

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
