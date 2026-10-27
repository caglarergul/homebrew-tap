# Homebrew cask for caglarergul/homebrew-tap (Casks/modsweep.rb). Filled in by app/release/release.sh.
cask "modsweep" do
  version "1.4.0"
  sha256 "cc8970eda83a24ef3cf2da88a82b375219b97ff0778594cb28f1d110a84d1f47"

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
