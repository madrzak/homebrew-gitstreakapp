cask "gitstreak" do
  version "1.0.0"
  sha256 ""

  url "https://github.com/madrzak/GitStreak/releases/download/v#{version}/GitStreak-#{version}.zip"
  name "GitStreak"
  desc "Menu bar app for tracking GitHub commit streaks"
  homepage "https://github.com/madrzak/GitStreak"

  depends_on macos: ">= :monterey"

  app "GitStreak.app"

  zap trash: [
    "~/Library/Application Support/GitStreak",
    "~/Library/Caches/com.madrzak.GitStreak",
    "~/Library/Preferences/com.madrzak.GitStreak.plist",
    "~/Library/Saved Application State/com.madrzak.GitStreak.savedState"
  ]
end
