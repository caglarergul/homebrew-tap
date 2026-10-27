# Homebrew cask for caglarergul/homebrew-tap (Casks/modsweep.rb). Filled in by app/release/release.sh.
cask "modsweep" do
  version "1.3.0"
  sha256 "f449dbccee1f8a543aab05b24ebc486e9b0e48481c262f68cd023e57ab23946d"

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
