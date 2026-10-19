cask "modsweep" do
  version "1.1.0"
  sha256 "57f3eb8ebcb0f50a5d30e37dc30b0f4579e33217d515ab8d6c785ca796fa8d10"

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
