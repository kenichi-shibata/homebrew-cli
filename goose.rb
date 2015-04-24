class Goose < Formula
    homepage "https://bitbucket.org/liamstask/goose"
    head "https://bitbucket.org/liamstask/goose.git", :using => :git

    depends_on "go" => :build
    
    def install
        ENV["GOPATH"] = buildpath

        system "go", "get", "bitbucket.org/liamstask/goose/cmd/goose"
        
        bin.install "bin/goose" => "goose"
    end
end
