cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.3.6"
  sha256 arm:   "317a759d9d4b325a1a39082f128a0f9958f2bac41bb7ab46f2a7879fcc8a591e",
         intel: "71c2d3f84b372809329fa72ce4b346648a3602ba75a0e7a55d1bc82ad8365e3e"

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
