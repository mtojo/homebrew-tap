cask "tal-noisemaker" do
  version "5.0.6"
  sha256 :no_check

  url "https://tal-software.com/downloads/plugins/TAL-NoiseMaker-installer_macos.zip"
  name "TAL-NoiseMaker"
  desc "Virtual analog synthesizer"
  homepage "https://tal-software.com/products/tal-noisemaker"

  livecheck do
    url "https://api.tal-software.com/api/page/byUrl/*products*tal-noisemaker"
    regex(/Version (\d+(?:\.\d+)+)/)
  end

  pkg "TAL-NoiseMaker-installer.pkg"

  uninstall pkgutil: "com.talsoftware.pkg.TAL-NoiseMaker-*"

  zap trash: [
    "~/Library/Application Support/ToguAudioLine/TAL-NoiseMaker",
    "~/Library/Application Support/ToguAudioLine/TAL-NoiseMaker.xml",
  ]
end
