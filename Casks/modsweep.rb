# Homebrew cask for caglarergul/homebrew-tap (Casks/modsweep.rb). Filled in by app/release/release.sh.
cask "modsweep" do
  version "1.2.1"
  sha256 "fc8df28b2e5db45f79c53415ee7a923890003af06c0e18e18ab796051b9702c5"

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
