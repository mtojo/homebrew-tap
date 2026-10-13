cask "deemmax" do
  version "3.9.5"
  sha256 "861ef3fcd910f527e663c554452483f04df5573353f2de48e4271e4810e848a6"

  url "https://www.dotec-audio.com/release/DeeMMax/DeeMMaxMacA_#{version}.zip"
  name "DeeMMax"
  desc "Loudness maximizer"
  homepage "https://dotec-audio.com/deemmax.html"

  livecheck do
    url :homepage
    regex(/Latest version is <strong>(\d+(?:\.\d+)*)/)
  end

  pkg "install.pkg"

  uninstall pkgutil: "com.dotec-audio.DeeMMax"

  zap trash: [
    "~/Library/Application Support/DOTEC-AUDIO/DeeMMax.info",
  ]
end
