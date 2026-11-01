cask "pitch-net" do
  version "0.7.4"
  sha256 "8ffac676481258c82e824b7cf3398b5d142bc265cca66c668522382022e589d3"

  url "https://github.com/SessionLoops/PitchNet/releases/download/v#{version}/PitchNet_Installer.pkg"
  name "PitchNet"
  desc "Natural pitch correction plugin"
  homepage "https://sessionloops.com/pitchnet"

  pkg "PitchNet_Installer.pkg"

  uninstall pkgutil: "com.SessionLoops.pkg.PitchNet.*"
end
