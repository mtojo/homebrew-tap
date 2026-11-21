cask "open-scissors" do
  version "2.0.3"
  sha256 "dbb87e347843118c41d13343b2299e463189cfa61ffd708306c5e497f41daf33"

  url "https://github.com/L-at-nnes/OpenScissors/releases/download/v#{version}/OpenScissors-#{version}-macos-arm64.zip"
  name "OpenScissors"
  desc "Offline background remover"
  homepage "https://github.com/L-at-nnes/OpenScissors"

  app "OpenScissors.app"

  uninstall quit: "io.github.l-at-nnes.OpenScissors"

  zap trash: [
    "~/Library/Application Support/OpenScissors",
  ]
end
