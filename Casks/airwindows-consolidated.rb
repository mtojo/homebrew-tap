cask "airwindows-consolidated" do
  version "2026-11-22-91b3343"
  sha256 "08d826a8967f4e4635bec48c361c5889ebda7e0af2d747b26de4ad6c8d9e204d"

  url "https://github.com/baconpaul/airwin2rack/releases/download/DAWPlugin/airwindows-consolidated-macOS-#{version}.dmg"
  name "Airwindows Consolidated DAW Plugin"
  desc "Consolidated Airwindows plugin"
  homepage "https://www.airwindows.com/consolidated/"

  livecheck do
    url "https://github.com/baconpaul/airwin2rack"
    regex(/^airwindows-consolidated-macOS-(\d{4}-\d{2}-\d{2}-\h+)/)
    strategy :github_releases do |json, regex|
      json.filter_map do |release|
        next if release["draft"] || release["prerelease"]
        release["assets"]&.filter_map { |a| a["name"]&.[](regex, 1) }
      end.flatten
    end
  end

  pkg "airwindows-consolidated-macOS-#{version}.pkg"

  uninstall quit:    "com.airwindows.all-windows",
            pkgutil: "org.surge-synth-team.airwindows-consolidated.*"

  zap trash: [
    "~/Library/Application Support/Airwindows Consolidated.settings",
  ]
end
