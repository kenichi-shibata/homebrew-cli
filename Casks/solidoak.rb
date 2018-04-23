cask 'solidoak' do
    name 'SolidOak'
    version '0.1.3'
    sha256 '9f8eb8ed08ce6295a9f30ac917bad23684e1bf3684501d33cef14814c087cc5b'

    url "https://github.com/oakes/SolidOak/releases/download/#{version}/solidoak-#{version}-macosx.zip"
    homepage 'https://sekao.net/solidoak/'

    app 'SolidOak.app'
end
