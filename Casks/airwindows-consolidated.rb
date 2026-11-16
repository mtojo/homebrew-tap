cask "airwindows-consolidated" do
  version "2026-11-15-59a227e"
  sha256 "ca48c320070f1a05da5b2ff4c0549ded2de21af0f68123195780c94efac834d2"

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
