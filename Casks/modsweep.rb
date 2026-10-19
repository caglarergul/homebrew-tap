# Homebrew cask for caglarergul/homebrew-tap (Casks/modsweep.rb). Filled in by app/release/release.sh.
cask "modsweep" do
  version "1.2.0"
  sha256 "5c57b5f9d564ee14c51d008939b6622e32095d8c55ac657dfbad0af94fc1c946"

  url "https://github.com/caglarergul/modsweep-macos/releases/download/v#{version}/modsweep-#{version}.dmg"
  name "modsweep"
  desc "Find, analyze and safely clean node_modules in JavaScript projects"
  homepage "https://github.com/caglarergul/modsweep-macos"

  depends_on macos: :sonoma

  app "modsweep.app"

  zap trash: [
    "~/Library/Application Support/modsweep",
    "~/Library/Caches/com.caglarergul.modsweep",
    "~/Library/Preferences/com.caglarergul.modsweep.plist",
  ]
end
