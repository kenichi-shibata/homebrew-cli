class Eksctl < Formula
    desc 'a CLI for Amazon EKS'
    homepage 'https://eksctl.io'
    version '0.1.9'
    url "https://github.com/weaveworks/eksctl/releases/download/#{version}/eksctl_Darwin_amd64.tar.gz"
    sha256 'dd3757b4f30e031d45fb2d292b1b18497ad9868c9873d6fd98e047b859cae735'

    def install
        bin.install 'eksctl'
    end
end
