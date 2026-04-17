cask "ioninja" do
  version "5.10.2"

  arch intel: "amd64",
       arm:   "arm64"

  sha256 intel: "5c5241bee10c694e5ae49f3b005b771ea4d62845d5c67871495a7dc0152ad159",
         arm:   "4f19305b3e38f2164f23d864fdd2ee704b182707032f8b421429928905f65d66"

  url "https://ioninja.com/downloads/archive/ioninja/ioninja-#{version}/ioninja-#{version}-mac-#{arch}.tar.xz"
  name "IO Ninja"
  desc "Professional, scriptable, all-in-one terminal/sniffer"
  homepage "https://ioninja.com/"
  app "ioninja-#{version}-mac-#{arch}/IO Ninja.app"
  binary "#{appdir}/IO Ninja.app/Contents/MacOS/ioninja"

  zap trash: [
    "~/.ioninja",
    "~/Library/Caches/com.tibbo.ioninja",
    "~/Library/Preferences/com.tibbo.ioninja.plist",
    "~/Library/Saved Application State/com.tibbo.ioninja.savedState",
  ]
end
