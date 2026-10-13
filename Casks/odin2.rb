cask "odin2" do
  version "2.4.0,qonadn6d5t3azpjne5a4l,z8soys4s579w6c4cpjp1iq61r"
  sha256 "5b248a9d57e9f2ab00afa7e2860753ff5add2041a183d817484b888bff9aa8e5"

  url "https://www.dropbox.com/scl/fi/#{version.csv.second}/Odin#{version.csv.first}MacInstaller.pkg?rlkey=#{version.csv.third}&st=lybmxi7y&raw=1"
  name "Odin 2"
  desc "24-voice polyphonic hybrid synthesizer"
  homepage "https://thewavewarden.com/pages/odin-2"

  livecheck do
    url :homepage
    regex(%r{https://www\.dropbox\.com/scl/fi/([^/]+)/Odin(\d+(?:\.\d+)+)MacInstaller\.pkg\?rlkey=([^&]+)})
    strategy :page_match do |page, regex|
      page.scan(regex).map { |file_id, ver, rlkey| "#{ver},#{file_id},#{rlkey}" }
    end
  end

  pkg "Odin#{version.csv.first}MacInstaller.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_2",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_3",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: [
    "com.thewavewarden.pkg.odin2AU",
    "com.thewavewarden.pkg.odin2CLAP",
    "com.thewavewarden.pkg.odin2VST",
  ]
end
