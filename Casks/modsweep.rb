cask "modsweep" do
  version "1.1.5"
  sha256 "c23e641712dfa041ca7b006f301225b8ccbb897d9704d01ddad0288c5dcd60fe"

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
