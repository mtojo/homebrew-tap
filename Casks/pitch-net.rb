cask "pitch-net" do
  version "0.8.0"
  sha256 "45c6268703ede3b4435438f16252ecf88e5c4f0240f67ffa33f795ddc1b7b676"

  url "https://github.com/SessionLoops/PitchNet/releases/download/v#{version}/PitchNet_Installer.pkg"
  name "PitchNet"
  desc "Natural pitch correction plugin"
  homepage "https://sessionloops.com/pitchnet"

  pkg "PitchNet_Installer.pkg"

  uninstall pkgutil: "com.SessionLoops.pkg.PitchNet.*"
end
