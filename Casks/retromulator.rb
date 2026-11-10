cask "retromulator" do
  version "2.4"
  sha256 "b6f49c09e5297270fe01aa3d255bc4e683c9a481e2af7c3dc6539b5559dd0fea"

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
