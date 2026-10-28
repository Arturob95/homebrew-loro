cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.4.0"
  sha256 arm:   "dbec8dd9c474ce9fd313442ba489acedf5abc70698e202208d3803a6039b7474",
         intel: "b58d7d7ff216c56ba11c1c31d80137f95fbf90700f408c6b3b6f6743c2b2701f"

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
