cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.4.1"
  sha256 arm:   "fc6a084e36f8fe32f9862fdd6c33b2d242eedea9a0beb4c048f1a1f62b8078d1",
         intel: "9a2cfc065ae6a412530640fbed79857f6ebf515ce269e4ea4254b148e798d640"

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
