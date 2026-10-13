cask "jenya-dereverb2-vst3" do
  version "0.5.0"
  sha256 "83862b409261fd9dc93599941bfc54d74d94dba5447c57042fbed8a47e7a09fd"

  url "https://github.com/nepoimannykh/dereverb-vst3/releases/download/v#{version}/JenyaDereverb2-#{version}-macOS-VST3.zip"
  name "JenyaDereverb2"
  desc "Real-time neural de-reverb for spoken voice"
  homepage "https://github.com/nepoimannykh/dereverb-vst3"

  artifact "JenyaDereverb2.vst3", target: "/Library/Audio/Plug-Ins/VST3/JenyaDereverb2.vst3"
end
