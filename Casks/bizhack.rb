cask 'bizhack' do
    name 'BizHack'
    version '1.5.1'
    sha256 '87c9fff1637bb1879324e20e6cd823bd845d900dd5802d62be3fd453b3bc313e'

    url "https://bizhawk.googlecode.com/files/BizHawk_mac_#{version}.zip"
    homepage 'http://tasvideos.org/Bizhawk.html'

    app 'BizHawk.app'
end
