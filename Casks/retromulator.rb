cask "retromulator" do
  version "2.3"
  sha256 "44ad5aaaaeb923ffe994f46eaf39cf773ed2bb322cddd929c6313e4d3600a315"

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
