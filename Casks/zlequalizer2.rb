cask "zlequalizer2" do
  version "1.4.2"
  sha256 "12122f35b25d3707aac19e83ee9d57a47e7257962c92e40650392bb2e1b95fff"

  url "https://github.com/ZL-Audio/ZLEqualizer/releases/download/#{version}/ZL.Equalizer.2-#{version}-macOS-arm64.dmg"
  name "ZL Equalizer 2"
  desc "Dynamic equalizer plugin"
  homepage "https://zl-audio.github.io/plugins/zlequalizer2/"

  pkg "ZL Equalizer 2-#{version}-macOS-arm64.pkg"

  uninstall pkgutil: "com.zlaudio.plugins.ZLEqualizer.*"
end
