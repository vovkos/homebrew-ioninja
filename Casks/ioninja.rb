cask 'ioninja' do
  version '3.14.0'
  sha256 '9dd0cbfcdf91a78e007ffcd73e0dfc55f34a54ad69755a3d99b30b822851fc67'

  url "https://tibbo.com/downloads/archive/ioninja/ioninja-#{version}/ioninja-#{version}-mac.dmg"
  name 'IO Ninja'
  homepage 'https://ioninja.com'

  auto_updates true

  depends_on macos: '>= :sierra'

  app 'IO Ninja.app'
  binary "#{appdir}/IO Ninja.app/Contents/MacOS/ioninja"

  zap trash: [
               '~/.ioninja',
               '~/Library/Caches/com.tibbo.ioninja',
               '~/Library/Preferences/com.tibbo.ioninja.plist',
               '~/Library/Saved Application State/com.tibbo.ioninja.savedState',
             ]
end
