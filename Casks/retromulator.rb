cask "retromulator" do
  version "1.9"
  sha256 "f1002824c2ebbbcc791198013cebf5002721acb48512ed6fcf7d2f92fd45d93b"

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
