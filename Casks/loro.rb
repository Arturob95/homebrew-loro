cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.4.2"
  sha256 arm:   "5bfd85c590d6f6ceea28accf8000883c90306da894fce1fa33e2fc575d9a5a98",
         intel: "5e36de7b994bc655682c26658b5a4413a3ee83185701730c9abb53ea6de39598"

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
