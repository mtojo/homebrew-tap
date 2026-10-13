cask "pakku" do
  version "1.0.0"
  sha256 "2c20de771bbe4120e60b41498eb147253b966125865a6011eaa688806d5d939a"

  url "https://github.com/danielalves96/pakku-vst/releases/download/v#{version}/Pakku-#{version}-macOS.zip"
  name "Pakku"
  desc "Multiband transient shaper"
  homepage "https://github.com/danielalves96/pakku-vst"

  pkg "Pakku-#{version}.pkg"

  uninstall pkgutil: "com.kyantechlabs.pakku.vst3"
end
