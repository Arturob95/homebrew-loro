cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.3.8"
  sha256 arm:   "1784d11e122e84ae96a7e08966955f3f03d04ba00c85bf83976d883ec04f1dac",
         intel: "3b91cd0cfcaf555c05695bad6bbdde9244c7bd67160ff444d85e68330b85c772"

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
