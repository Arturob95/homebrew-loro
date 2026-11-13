cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.4.9"
  sha256 arm:   "7debcbd8d017e91eb15502e85d2ccf73d86d8a16d16ddfe8c31b224b00839335",
         intel: "6eb764f57cccb832e349c837c633fd4a1a2efa02f70a7c36083c9b3a855adcee"

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
