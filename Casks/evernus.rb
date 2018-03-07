cask 'evernus' do
    name 'Evernus'
    version '1.47'
    sha256 'df130ac06121e3ac5d7d164e14fb664a280090ab4dac9ff76f749b3d641f5508'

    url "https://bitbucket.org/krojew/evernus/downloads/Evernus-#{version}.dmg"
    homepage 'http://evernus.com/'
    license :gpl

    app 'Evernus.app'
end
