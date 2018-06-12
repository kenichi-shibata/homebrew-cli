class HeptioAuthenticatorAws < Formula
    homepage 'https://github.com/heptio/authenticator'
    version '0.3.0'
    url "https://github.com/heptio/authenticator/releases/download/v#{version}/heptio-authenticator-aws_#{version}_darwin_amd64"
    sha256 '9585d9af8d2f3b46b31649fb549978f4aedf2d62113fd42b57f9903ad71811c2'

    def install
        File.rename "heptio-authenticator-aws_#{version}_darwin_amd64", 'heptio-authenticator-aws'
        File.chmod 0755, 'heptio-authenticator-aws'

        bin.install 'heptio-authenticator-aws'
    end
end
