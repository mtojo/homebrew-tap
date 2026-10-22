cask "retromulator" do
  version "2.0"
  sha256 "d1a72711010466eda52bfc786a92e9c258d42a284449912ce025e85629bb1d63"

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
