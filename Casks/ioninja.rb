cask "ioninja" do
  version "3.14.4"
  sha256 "d49b655ba32f58984724526056d6907c443acbcccd21c6334218413c294452b6"

  # tibbo.com was verified as official when first introduced to the cask
  url "https://tibbo.com/downloads/archive/ioninja/ioninja-#{version}/ioninja-#{version}-mac.tar.xz"
  name "IO Ninja"
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
