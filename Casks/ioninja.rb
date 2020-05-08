cask "ioninja" do
  version "3.14.2"
  sha256 "4d60119b817705f557741b46b887d6e12e7c18b2bc64b493c0618af473b421c4"

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
