cask "codeisland" do
  version "1.0.4"
  sha256 "6bb844f25d8a0fd4603aa3779f91349a349aebb64711f8257d01e410b671aea8"

  url "https://github.com/wxtsky/CodeIsland/releases/download/v#{version}/CodeIsland-#{version}.dmg"
  name "CodeIsland"
  desc "Real-time AI coding agent status panel for macOS Dynamic Island"
  homepage "https://github.com/wxtsky/CodeIsland"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "CodeIsland.app"

  zap trash: [
    "~/Library/Application Scripts/com.wxtsky.CodeIsland",
    "~/Library/Containers/com.wxtsky.CodeIsland",
    "~/Library/Preferences/com.wxtsky.CodeIsland.plist",
  ]
end
