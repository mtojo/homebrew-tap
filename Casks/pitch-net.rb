cask "pitch-net" do
  version "0.7.1"
  sha256 "3b6588b2be47cec5246dffea8023e5d4a653a530bb7df2a91c93ecf610790f1a"

  url "https://github.com/SessionLoops/PitchNet/releases/download/v#{version}/PitchNet_Installer.pkg"
  name "PitchNet"
  desc "Natural pitch correction plugin"
  homepage "https://sessionloops.com/pitchnet"

  pkg "PitchNet_Installer.pkg"

  uninstall pkgutil: "com.SessionLoops.pkg.PitchNet.*"
end
