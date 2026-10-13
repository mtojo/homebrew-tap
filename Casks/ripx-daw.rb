cask "ripx-daw" do
  version "8.0.3"
  sha256 "c1a24eeda44dba2bc9a740f412bca5a364e5802494af255e4abfc83321b71d30"

  url "https://s3.us-east-2.amazonaws.com/downloads.hitnmix.com/RipXDAW_#{version.no_dots}.dmg"
  name "RipX DAW"
  desc "Music stem separation and repair utility"
  homepage "https://hitnmix.com/"

  livecheck do
    url "https://hitnmix.com/changes/"
    regex(/^v(\d+(?:\.\d+)+)\s+changes\s+\([^)]+?\)(?! – Windows Only)/)
    strategy :page_match do |page, regex|
      page.scan(%r{<h3[^>]*?>(.+?)</h3>}i).map do |match|
        text = match[0].gsub(/<[^>]+>/, "")
        text[regex, 1]
      end
    end
  end

  depends_on :macos

  pkg "RipX DAW.pkg"

  uninstall pkgutil: [
              "com.hitnmix.HitnMix.pkg",
              "com.hitnmix.infinity.link.pkg",
              "com.hitnmix.infinity.linkara.pkg",
            ],
            delete:  [
              "/Applications/RipX DAW.app",
              "/Library/Application Support/Avid/Audio/Plug-Ins/RipLink.aaxplugin",
              "/Library/Audio/Plug-Ins/VST3/RipLink.vst3",
            ]

  zap trash: "~/Library/Preferences/com.hitnmix.HitnMix.plist"
end
