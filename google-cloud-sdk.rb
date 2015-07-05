class GoogleCloudSdk < Formula
    homepage "https://cloud.google.com/sdk/"
    version "0.9.67"
    url "https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz"
    sha256 "70cd03f740cf43dd1d2ba4cc0b90f2f2d0aa821d136c3604c66a5961706649bb"

    def install
        system "./install.sh --usage-reporting false --command-completion false --path-update false"

        libexec.install %w(bin lib)

        bin.install_symlink Dir["#{libexec}/bin/*"]

        bash_completion.install "completion.bash.inc" => "google-cloud-sdk"
        zsh_completion.install "completion.zsh.inc" => "google-cloud-sdk"

        man1.install Dir["help/man/man1/*.1"]
    end
end
