cask 'ioninja' do
  version '3.14.0'
  sha256 '41bc5930ba748cb23107af6d770f307befe2e80e36b4a56b06b364eceb76ddab'

  url "https://tibbo.com/downloads/archive/ioninja/ioninja-#{version}/ioninja-#{version}-mac.tar.xz"
  name 'IO Ninja'
  homepage 'https://ioninja.com'

  auto_updates true

  depends_on macos: '>= :sierra'

  app "ioninja-#{version}-mac/IO Ninja.app"
  binary "#{appdir}/IO Ninja.app/Contents/MacOS/ioninja"

  zap trash: [
               '~/.ioninja',
               '~/Library/Caches/com.tibbo.ioninja',
               '~/Library/Preferences/com.tibbo.ioninja.plist',
               '~/Library/Saved Application State/com.tibbo.ioninja.savedState',
             ]
end
