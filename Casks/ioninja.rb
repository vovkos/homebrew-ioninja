cask "ioninja" do
  version "5.3.2"
  sha256 "18773166d726dd77804928f4ea64b01bc419cb47e2f55c1540b3ac918c0cfaa0"

  url "https://tibbo.com/downloads/archive/ioninja/ioninja-#{version}/ioninja-#{version}-mac-amd64.tar.xz",
      verified: "https://tibbo.com/downloads/archive/ioninja"
  name "IO Ninja"
  desc "Professional, scriptable, all-in-one terminal/sniffer"
  homepage "https://ioninja.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ioninja-#{version}-mac/IO Ninja.app"
  binary "#{appdir}/IO Ninja.app/Contents/MacOS/ioninja"

  zap trash: [
    "~/.ioninja",
    "~/Library/Caches/com.tibbo.ioninja",
    "~/Library/Preferences/com.tibbo.ioninja.plist",
    "~/Library/Saved Application State/com.tibbo.ioninja.savedState",
  ]
end
