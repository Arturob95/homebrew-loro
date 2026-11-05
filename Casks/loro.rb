cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.4.6"
  sha256 arm:   "bfdb80a93ec3288a14875367a36b7133b618ea6678d5137bbcb0aedf3c09611a",
         intel: "c842eb7b36cbcf933521e887a76487bdbdb5e21b0b5f80564075ec5569f20e8c"

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
