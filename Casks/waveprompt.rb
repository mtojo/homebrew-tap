cask "waveprompt" do
  version "1.2"
  sha256 "0abb0cb2b5455b5d15e288257d221feda6010fd914aa57a4754ec551ecfed713"

  depends_on :macos

  url "https://download.discodsp.com/WavePromptMac.#{version}.dmg"
  name "WavePrompt"
  desc "AI music generator"
  homepage "https://www.discodsp.com/waveprompt/"

  livecheck do
    url :homepage
    regex(/WavePrompt\s*(\d+(?:\.\d+)*)/)
    strategy :page_match do |page, regex|
      clean_text = page.gsub(/<[^>]*>/, "")
      clean_text.match(regex)&.[](1)
    end
  end

  app "WavePrompt.app"

  uninstall quit: [
            ]

  zap trash: [
    "~/Library/Preferences/com.discoDSP.WavePrompt.plist",
  ]
end
