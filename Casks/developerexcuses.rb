cask 'developerexcuses' do
    name 'WebViewScreenSaver'
    version '2.0.2'
    url "https://github.com/kimar/DeveloperExcuses/releases/download/#{version}/DeveloperExcuses.saver.zip"
    sha256 '5e71813e5278c03c7873b3d28d3dc68bc873aa5144ff4fb2bb70a546c4fc05a7'
    homepage 'https://github.com/kimar/DeveloperExcuses'
    screen_saver 'DeveloperExcuses.saver'
end
