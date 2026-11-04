cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.4.5"
  sha256 arm:   "7d880da3e0b4e9ca84730f38ba28c0efd5e9f2e9a3e3289a6e1bba561629cb4a",
         intel: "fe7fd9945e50b006722f64ef6ce6360dc409712a3592faf88ec171814e642e3d"

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
