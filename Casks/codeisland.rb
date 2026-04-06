cask "codeisland" do
  version "1.0.5"
  sha256 "3a9e161e04f971c14b5eb9a6a6ba35a871555a0681bf017087891f7843333ca4"

  url "https://github.com/wxtsky/CodeIsland/releases/download/v#{version}/CodeIsland.dmg"
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
