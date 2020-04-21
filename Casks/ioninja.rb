cask 'ioninja' do
  version '3.14.1'
  sha256 'eb413bf20e94bea137f61b715c67f0197252729fab56dbe48e8155e83dfaa30b'

  url "https://tibbo.com/downloads/archive/ioninja/ioninja-#{version}/ioninja-#{version}-a-mac.tar.xz"
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
