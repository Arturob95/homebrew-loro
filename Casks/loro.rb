cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.4.7"
  sha256 arm:   "5d15f71dd891bd4eb2f86246c2dffe3ea02bccf17bc38c858016ebbe38bab890",
         intel: "ef5db666935c9597d2a70e79c0c91d58642ea62c1358e29b0becc5441c8d2531"

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
