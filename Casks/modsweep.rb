cask "modsweep" do
  version "1.1.3"
  sha256 "17b261276efaa3ed02fb0d4a11a40874897852fa1192c2a8c845990932cc5f5e"

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
