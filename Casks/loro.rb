cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.3.5"
  sha256 arm:   "e4641e70fc9807472b0990600f251710fc0bd9616d3435549db9c872f962020e",
         intel: "bd034ad80a202ce83776e9e9c569062776c62d37afe3413d1efe5296752270ce"

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
