cask "loro" do
  arch arm: "apple", intel: "intel"

  version "0.3.7"
  sha256 arm:   "ce13b6b42e2efd7386917ede7dd7513ece264e0de79dd15acf1b81257f526042",
         intel: "e1cf919420503bf7d3bfe6b0197a9ffc00efcc411d72586c16757371f971d5a9"

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
