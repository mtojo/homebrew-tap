cask "harmony-pro" do
  version "1.0.0"
  sha256 "a82f0f3ec0d7d54c5bfea8b9764b822484312db04fbf2ceea4a6dcf9db9d44c6"

  url "https://downloads.harmonylabaudio.com/Harmony-Pro-#{version}-macOS.pkg"
  name "Harmony Pro"
  desc "Harmony assistant plugin"
  homepage "https://harmonylabaudio.com/"

  livecheck do
    url "https://harmonylabaudio.com/download"
    regex(/Harmony Pro (\d+(?:\.\d+)*)/)
  end

  pkg "Harmony-Pro-#{version}-macOS.pkg"

  uninstall pkgutil: "com.harmonypro.midiassistant.pkg"
end
