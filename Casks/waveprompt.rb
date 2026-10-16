cask "waveprompt" do
  version "1.1.0"
  sha256 "fc096ab3c169c18992dfce17f8c6836eb52a0cd4f1ac760df0ad0db597c343cd"

  depends_on :macos

  url "https://download.discodsp.com/WavePromptMac.#{version}.dmg"
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
