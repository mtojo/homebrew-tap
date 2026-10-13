cask "time-12" do
  version "1.2.3"
  sha256 "9066d0f46fe0cbce102296180d157a176708654b9d6488f6d616e9e3d5cf45e4"

  url "https://github.com/tiagolr/time12/releases/download/v#{version}/time12-macos-v#{version}.zip"
  name "TIME-12"
  desc "Envelope based delay modulator"
  homepage "https://github.com/tiagolr/time12"

  artifact "time12-macos/AU/TIME-12.component", target: "/Library/Audio/Plug-Ins/Components/TIME-12.component"
  artifact "time12-macos/LV2/TIME-12.lv2", target: "/Library/Audio/Plug-Ins/LV2/TIME-12.lv2"
  artifact "time12-macos/VST3/TIME-12.vst3", target: "/Library/Audio/Plug-Ins/VST3/TIME-12.vst3"
end
