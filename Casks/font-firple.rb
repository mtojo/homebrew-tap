cask "font-firple" do
  version "6.400"
  sha256 "2723183407cc5aa17f9cf4f99968cf72313cabc9137ac45e5133c1640efee4da"

  url "https://github.com/negset/Firple/releases/download/#{version}/Firple.zip"
  name "Firple"
  desc "A monospaced Japanese font containing ligatures"
  homepage "https://github.com/negset/Firple"

  font "Firple-Bold.ttf"
  font "Firple-BoldItalic.ttf"
  font "Firple-Italic.ttf"
  font "Firple-Regular.ttf"

  zap :not_required
end
