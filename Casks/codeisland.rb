cask "codeisland" do
  version "1.0.15"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
