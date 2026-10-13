cask "zlequalizer2" do
  version "1.4.1"
  sha256 "770167ead54bccdbac5ad3a2f6bc844013808247fa633c434f39140fef085c2d"

  url "https://github.com/ZL-Audio/ZLEqualizer/releases/download/#{version}/ZL.Equalizer.2-#{version}-macOS-arm64.dmg"
  name "ZL Equalizer 2"
  desc "Dynamic equalizer plugin"
  homepage "https://zl-audio.github.io/plugins/zlequalizer2/"

  pkg "ZL Equalizer 2-#{version}-macOS-arm64.pkg"

  uninstall pkgutil: "com.zlaudio.plugins.ZLEqualizer.*"
end
