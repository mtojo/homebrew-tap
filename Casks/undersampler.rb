cask "undersampler" do
  version "1.0.1"
  sha256 "34cc298595c66cfea79e0cf8df764956389d962aefc847c8e1234c68ff57e0d1"

  url "https://github.com/cva-labs/undersampler/releases/download/v#{version}/Undersampler-v#{version}-macOS-universal.zip"
  name "Undersampler"
  desc "Lo-fi effect plugin"
  homepage "https://github.com/cva-labs/undersampler"

  artifact "Undersampler.vst3", target: "/Library/Audio/Plug-Ins/VST3/Undersampler.vst3"
end
