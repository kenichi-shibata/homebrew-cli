class Eksctl < Formula
    desc 'a CLI for Amazon EKS'
    homepage 'https://eksctl.io'
    version '0.1.0-alpha.6'
    url "https://github.com/weaveworks/eksctl/releases/download/#{version}/eksctl_Darwin_amd64.tar.gz"
    sha256 'a440bdd3c3e66b53fba63433350bebbc1208d0ed93753b2c7302247b247a8097'

    def install
        bin.install 'eksctl'
    end
end
