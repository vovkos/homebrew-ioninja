cask "ioninja" do
  version "5.8.1"
  sha256 "0d5110cab40e4665690cb9d7f1f0eeb0a897ae20be742d8703f527f1e7eb042a"

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
