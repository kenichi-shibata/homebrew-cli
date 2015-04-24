class GoGetter < Formula
    homepage "https://github.com/joewalnes/go-getter"

    head do
        url "https://github.com/joewalnes/go-getter/archive/master.zip"
    end

    def install
        bin.install "go-getter"
        doc.install %w(LICENSE.txt README.md)
    end
end
