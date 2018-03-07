cask 'webviewscreensaver' do
    name 'WebViewScreenSaver'
    version '2.0'
    url "https://github.com/liquidx/webviewscreensaver/releases/download/"\
        "v#{version}/WebViewScreenSaver-#{version}.zip"
    sha256 'ce06b90cff589c56974b6a9555aa4466f24914d33425f4d4c0b81dbb9effa724'
    
    homepage 'https://github.com/liquidx/webviewscreensaver'

    screen_saver 'WebViewScreenSaver.saver'
end
