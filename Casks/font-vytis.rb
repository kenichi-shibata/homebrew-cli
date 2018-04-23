cask 'font-vytis' do
    version '1.002'
    sha256 '7af78a59e82569911e01e4f4d09087a2583ba2647b6c6a81995b97c4c2d919fd'

    url 'https://github.com/nkts/ttf-font-vytis/archive/master.zip'

    %w(b i n x).each do |v|
        font "ttf-font-vytis-master/v1.002/vytis_#{v}.ttf"
    end
end
