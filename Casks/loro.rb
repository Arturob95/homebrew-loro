cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.4.3"
  sha256 arm:   "754784aaf309303832559cd1c9c3ef029765acb2022e93d9a80346a6bdcd2b27",
         intel: "f6b22d7c3a926f5a76954546cfeffc37e702c911f7fefe5e23467e9b341c2879"

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
