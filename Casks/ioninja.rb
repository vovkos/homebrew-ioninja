cask 'ioninja' do
  version '3.14.1'
  sha256 '83ca72b94049c763c082b690c7bb41dbe5d1bf40dc053f5424ec67c8b4cb0f1c'

  url "https://tibbo.com/downloads/archive/ioninja/ioninja-#{version}/ioninja-#{version}-mac.tar.xz"
  name 'IO Ninja'
  homepage 'https://ioninja.com/'

  auto_updates true

  depends_on macos: '>= :sierra'

  app "ioninja-#{version}-mac/IO Ninja.app"
  # binary "#{appdir}/IO Ninja.app/Contents/MacOS/ioninja"

  zap trash: [
               '~/.ioninja',
               '~/Library/Caches/com.tibbo.ioninja',
               '~/Library/Preferences/com.tibbo.ioninja.plist',
               '~/Library/Saved Application State/com.tibbo.ioninja.savedState',
             ]
end
