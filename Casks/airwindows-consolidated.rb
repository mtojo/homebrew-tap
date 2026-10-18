cask "airwindows-consolidated" do
  version "2026-10-17-d8fe301"
  sha256 "cf381e395f87409e19315ebae1bce341222a18c6d33b2281725395ac5f6a60e3"

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
