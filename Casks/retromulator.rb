cask "retromulator" do
  version "2.2"
  sha256 "4d3c4dfe670cec84f6f03b5153f7692e10e7141cbfb5d4acb213b9e8492bb500"

  url "https://download.discodsp.com/Retromulator%20#{version}.pkg"
  name "Retromulator"
  desc "Multi-core retro hardware emulation plugin"
  homepage "https://www.discodsp.com/retromulator/"

  livecheck do
    url :homepage
    regex(/Retromulator\s*(\d+(?:\.\d+)*)/)
    strategy :page_match do |page, regex|
      clean_text = page.gsub(/<[^>]*>/, "")
      clean_text.match(regex)&.[](1)
    end
  end

  pkg "Retromulator #{version}.pkg"

  uninstall pkgutil: [
    "retromulatoraax",
    "retromulatorapp",
    "retromulatorau",
    "retromulatorvst3",
  ]
end
