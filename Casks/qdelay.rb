cask "qdelay" do
  version "1.2.3"
  sha256 "0987616a8b0d5dc41961ca33cce4880b4e30006a44aaf917fe1870a3e8a604aa"

  url "https://github.com/tiagolr/qdelay/releases/download/v#{version}/qdelay-macos-v#{version}.zip"
  name "QDelay"
  desc "Dual-delay audio plugin"
  homepage "https://github.com/tiagolr/qdelay"

  artifact "qdelay-macos/AU/QDelay.component", target: "/Library/Audio/Plug-Ins/Components/QDelay.component"
  artifact "qdelay-macos/VST3/QDelay.vst3", target: "/Library/Audio/Plug-Ins/VST3/QDelay.vst3"
end
