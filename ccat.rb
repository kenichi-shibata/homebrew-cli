class Ccat < Formula
    homepage "https://github.com/jingweno/ccat"
    url "https://github.com/jingweno/ccat/archive/v0.0.1.tar.gz"
    sha256 "8847c8908779a3502f8621aa8ad34d92a2655b1f18008beeb291daaea785592f"

    depends_on "go" => :build

    def install
        ENV["GOPATH"] = buildpath
        system "go build -o ccat"
        bin.install "ccat"
    end
end
