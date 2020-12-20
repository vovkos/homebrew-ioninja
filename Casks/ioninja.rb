cask "ioninja" do
  version "3.15.1"
  sha256 "2862f6ff7854dda58221f76e4e7f5660d18644f5c7eaeb0ab7bd163687074128"

  # tibbo.com was verified as official when first introduced to the cask
  url "https://tibbo.com/downloads/archive/ioninja/ioninja-#{version}/ioninja-#{version}-a-mac.tar.xz"
  name "IO Ninja"
  desc "Professional, scriptable, all-in-one terminal/sniffer"
  homepage "https://ioninja.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ioninja-#{version}-a-mac/IO Ninja.app"
  binary "#{appdir}/IO Ninja.app/Contents/MacOS/ioninja"

  zap trash: [
    "~/.ioninja",
    "~/Library/Caches/com.tibbo.ioninja",
    "~/Library/Preferences/com.tibbo.ioninja.plist",
    "~/Library/Saved Application State/com.tibbo.ioninja.savedState",
  ]
end
