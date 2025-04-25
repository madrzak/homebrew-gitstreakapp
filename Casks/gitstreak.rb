cask "gitstreak" do
  version "1.0.0"
  sha256 "eaf96ea5b125e0ef7d6af21625d70fe14bba104e46a76fa5a22a36f2a8edd5d2"

  url "https://github.com/madrzak/homebrew-gitstreakapp/releases/download/v#{version}/GitStreak-#{version}.zip"
  name "GitStreak"
  desc "Menu bar app for tracking GitHub commit streaks"
  homepage "https://github.com/madrzak/homebrew-gitstreakapp"

  depends_on macos: ">= :monterey"

  app "GitStreak.app"

  zap trash: [
    "~/Library/Application Support/GitStreak",
    "~/Library/Caches/com.madrzak.GitStreak",
    "~/Library/Preferences/com.madrzak.GitStreak.plist",
    "~/Library/Saved Application State/com.madrzak.GitStreak.savedState"
  ]
end
