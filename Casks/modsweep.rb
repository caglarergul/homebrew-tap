# Homebrew cask for caglarergul/homebrew-tap (Casks/modsweep.rb). Filled in by app/release/release.sh.
cask "modsweep" do
  version "1.4.1"
  sha256 "daa8000f4dc7c90e84ce62d3abe5af11828300f0abbaea56f77c080c30d4194c"

  url "https://github.com/caglarergul/modsweep-macos/releases/download/v#{version}/modsweep-#{version}.dmg"
  name "modsweep"
  desc "Find, analyze and safely clean node_modules in JavaScript projects"
  homepage "https://github.com/caglarergul/modsweep-macos"

  # the app updates itself (Sparkle); Homebrew leaves it alone between cask versions
  auto_updates true
  depends_on macos: :sonoma

  app "modsweep.app"

  zap trash: [
    "~/Library/Application Support/modsweep",
    "~/Library/Caches/com.caglarergul.modsweep",
    "~/Library/Preferences/com.caglarergul.modsweep.plist",
  ]
end
