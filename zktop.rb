class Zktop < Formula
    homepage "https://github.com/phunt/zktop"
    head "https://github.com/phunt/zktop.git", :using => :git

    def install
        bin.install "zktop.py"
    end
end
