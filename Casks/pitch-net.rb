cask "pitch-net" do
  version "0.7.5"
  sha256 "1a20d74758fe0fec69bcfaa99d6cbecc8c7e12184c7a3fdbb5ead6cd3dc9df81"

  url "https://github.com/SessionLoops/PitchNet/releases/download/v#{version}/PitchNet_Installer.pkg"
  name "PitchNet"
  desc "Natural pitch correction plugin"
  homepage "https://sessionloops.com/pitchnet"

  pkg "PitchNet_Installer.pkg"

  uninstall pkgutil: "com.SessionLoops.pkg.PitchNet.*"
end
