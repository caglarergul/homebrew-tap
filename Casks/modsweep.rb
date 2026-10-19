cask "modsweep" do
  version "1.1.2"
  sha256 "99fa84b51c41f72110a1a9526b659a6964cd0414f893e37d85c6e4ba985b6f81"

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
