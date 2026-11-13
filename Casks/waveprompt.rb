cask "waveprompt" do
  version "1.2.3"
  sha256 "d3754348acac7ac5372e730a7fd318c42441dcf18e44f4a97873c61632a8f9c5"

  depends_on :macos

  url "https://download.discodsp.com/WavePromptMac.#{version.major_minor}.dmg"
  name "WavePrompt"
  desc "AI music generator"
  homepage "https://www.discodsp.com/waveprompt/"

  livecheck do
    url :homepage
    regex(/<h2>WavePrompt\s*(\d+(?:\.\d+)*)<\/h2>/)
    strategy :page_match do |page, regex|
      page.match(regex)&.[](1)
    end
  end

  app "WavePrompt.app"

  uninstall quit: [
            ]

  zap trash: [
    "~/Library/Preferences/com.discoDSP.WavePrompt.plist",
  ]
end
