cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.4.8"
  sha256 arm:   "c606327c1a05b919438b9dde4a68ef4113bd0627ae3ff26a54c0efe8957880c5",
         intel: "9b5c271abb0433c34758b4ec52f593ff64214cbffcf25b93c0f91c2128934f95"

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
