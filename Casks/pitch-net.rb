cask "pitch-net" do
  version "0.7.3"
  sha256 "64797d1f8bb1dd2b942be9e0d901844d73f501355c3ec069e95b84cb28f59d33"

  url "https://github.com/SessionLoops/PitchNet/releases/download/v#{version}/PitchNet_Installer.pkg"
  name "PitchNet"
  desc "Natural pitch correction plugin"
  homepage "https://sessionloops.com/pitchnet"

  pkg "PitchNet_Installer.pkg"

  uninstall pkgutil: "com.SessionLoops.pkg.PitchNet.*"
end
