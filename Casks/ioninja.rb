cask "ioninja" do
  version "5.7.5"
  sha256 "26f0604dfe1c35373ce22fbb438d7a70167283e64116a6d56637b87deed2b227"

  url "https://ioninja.com/downloads/archive/ioninja/ioninja-#{version}/ioninja-#{version}-mac-amd64.tar.xz",
      verified: "https://ioninja.com/downloads/archive/ioninja"
  name "IO Ninja"
  desc "Professional, scriptable, all-in-one terminal/sniffer"
  homepage "https://ioninja.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ioninja-#{version}-mac-amd64/IO Ninja.app"
  binary "#{appdir}/IO Ninja.app/Contents/MacOS/ioninja"

  zap trash: [
    "~/.ioninja",
    "~/Library/Caches/com.tibbo.ioninja",
    "~/Library/Preferences/com.tibbo.ioninja.plist",
    "~/Library/Saved Application State/com.tibbo.ioninja.savedState",
  ]
end
