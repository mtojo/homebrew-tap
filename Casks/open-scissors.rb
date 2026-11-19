cask "open-scissors" do
  version "2.0.1"
  sha256 "838729366b1cf381b6933a427fae527bfd3792ff81c1d60d6edb45df6577400c"

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
