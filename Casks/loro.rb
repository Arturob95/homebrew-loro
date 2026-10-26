cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.3.9"
  sha256 arm:   "797e2b2a085ed321c4459650ced12afeae4e0dfe75a03f5fc53aebbf0c8410d1",
         intel: "ff38bc105a135a02be0b75f3e0ee3372e14670b42eb47cd88409db9fc7e1a573"

  url "https://github.com/Arturob95/loro-releases/releases/download/v#{version}/Loro-mac-#{arch}.dmg",
      verified: "github.com/Arturob95/loro-releases/"
  name "Loro"
  desc "AI voice dictation and meeting notes"
  homepage "https://heyloro.app/en"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Loro.app"
end
