cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.3.10"
  sha256 arm:   "c8f76b0aa62ac8b2fcde5eb6e53af3509d6ed81d468ebc83945b03498f4b10cf",
         intel: "9b85174c9921f133882012dfdd8a7496e6f7e0db284ed3c6043031611e8c296e"

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
