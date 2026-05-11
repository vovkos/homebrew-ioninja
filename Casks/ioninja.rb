cask "ioninja" do
  arch intel: "amd64",
       arm:   "arm64"

  version "5.10.3"
  sha256 intel: "aefedef9587b9683dad9250effec6d14db53be858936a8cf7e11d0e137216a58",
         arm:   "66744bcc110396d7998cefae4deb3a436c7f5498a4c2b3855e72fbb2e75992e3"

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
