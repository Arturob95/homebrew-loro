cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.3.11"
  sha256 arm:   "40ce55fca3738f7661ca1e54ef8d2eb1c43da5e84cdb078837402e6e64192c9c",
         intel: "59d386aa01db59264978bd5d320559e5c0fdad74a54fe39f1ef5b733d65326d1"

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
