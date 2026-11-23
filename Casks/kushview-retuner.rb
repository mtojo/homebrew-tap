cask "kushview-retuner" do
  version "1.1.0"
  sha256 "2b6e980a319b2d4a9ce5d68402626042a1f02b347bcdfe79390f1bdbd963ff24"

  url "https://github.com/kushview/retuner/releases/download/#{version}/retuner-macos-#{version}.pkg"
  name "Kushview reTuner"
  desc "reTuner pitch shifter"
  homepage "https://github.com/kushview/retuner"

  pkg "retuner-macos-#{version}.pkg"

  uninstall pkgutil: [
    "net.kushview.pkg.reTunerAU",
    "net.kushview.pkg.reTunerApp",
    "net.kushview.pkg.reTunerCLAP",
    "net.kushview.pkg.reTunerLV2",
    "net.kushview.pkg.reTunerVST3",
  ]
end
