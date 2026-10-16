cask "pitch-net" do
  version "0.7.2"
  sha256 "807ce7b290499b5bf8e9af00eb0a074a201b4bfb64630cff19d76462b8eb3438"

  url "https://github.com/SessionLoops/PitchNet/releases/download/v#{version}/PitchNet_Installer.pkg"
  name "PitchNet"
  desc "Natural pitch correction plugin"
  homepage "https://sessionloops.com/pitchnet"

  pkg "PitchNet_Installer.pkg"

  uninstall pkgutil: "com.SessionLoops.pkg.PitchNet.*"
end
