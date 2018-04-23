cask 'font-palemonas' do
    version '2.1'
    sha256 'a78afbcff37bb0ce1b6a177fd4677d1bf0f493e78c10a0ba0dabc08fc535fdaf'

    url "http://download.vikis.lt/sriftai/palemonas/Palemonas-2_1.zip"

    %w(bd bi it nm).each do |v|
        font "Palemonas-#{version}/Palem-#{v}.ttf"
    end
end
