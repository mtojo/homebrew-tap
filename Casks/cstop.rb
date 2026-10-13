cask "cstop" do
  version "2.0.1"
  sha256 "ea1a582b6999943da7a60251c554961e7e18f1a55d1aa3c7baec8d8d49766e57"

  url "https://github.com/calgoheen/cStop/releases/download/#{version}/cStop.v#{version}.pkg"
  name "cStop"
  desc "Tape stop audio effect plugin"
  homepage "https://github.com/calgoheen/cStop"

  pkg "cStop.v#{version}.pkg"

  uninstall pkgutil: [
    "com.CalGoheen.cStop",
    "com.CalGoheen.cStopau",
    "com.CalGoheen.cStopvst3",
  ]
end
