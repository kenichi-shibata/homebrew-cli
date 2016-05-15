class Concourse < Formula
    homepage "https://concourse.ci"
    version "1.2.0"
    url "https://github.com/concourse/concourse/releases/download/v1.2.0/concourse_darwin_amd64"
    sha256 "a570393f09c6ce086ee28266cca8d8b50eb29a985396aa88e9521b48f37f7008"
    head "https://github.com/concourse/concourse.git", :using => :git

    def install
      bin.install "concourse_darwin_amd64" => "concourse"
    end
end
