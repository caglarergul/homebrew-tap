cask "modsweep" do
  version "1.1.1"
  sha256 "dacddc3a7f1b690bc28ccc545f3b23f279f63cdd4e762d4184051c11187ef320"

  url "https://github.com/caglarergul/modsweep-releases/releases/download/v#{version}/modsweep-#{version}.dmg"
  name "modsweep"
  desc "Find, analyze and safely clean node_modules in JavaScript projects"
  homepage "https://github.com/caglarergul/modsweep-releases"

  depends_on macos: :sonoma

  app "modsweep.app"

  zap trash: [
    "~/Library/Application Support/modsweep",
    "~/Library/Caches/com.caglarergul.modsweep",
    "~/Library/Preferences/com.caglarergul.modsweep.plist",
  ]
end
