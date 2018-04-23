cask 'nkts-keyboard' do
    version :latest
    sha256 '62cb75bb7c00678c29c5acc961d057e6ec4ed6facbb851af60deaa0616562019'
    url 'https://github.com/karnauskas/mac-keyboard-layout/raw/46f00d68aa6b95cd88495c7dffb3b490fe0bd9ef/lietuviu.bundle.zip'

    artifact 'lietuviu.bundle', :target => "#{ENV['HOME']}/Library/Keyboard Layouts/lietuviu.bundle"
end
