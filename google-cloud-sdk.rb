class GoogleCloudSdk < Formula
    homepage "https://cloud.google.com/sdk/"
    version "0.9.80"
    # TODO: find versioned download link
    url "https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz"
    sha256 "d6b02bcea330a3cc3c5f5a4ae8f0cd298e694e5dc15fd2644860ad5f13728383"

    def install
        system "./install.sh --usage-reporting false --command-completion false --path-update false"

        libexec.install Dir["bin", "lib"]

        %w(bq gcloud gsutil git-credential-gcloud.sh).each do |b|
            bin.install_symlink Dir["#{libexec}/bin/#{b}"]
        end

        bash_completion.install "completion.bash.inc" => "google-cloud-sdk"
        zsh_completion.install "completion.zsh.inc" => "google-cloud-sdk"

        man1.install Dir["help/man/man1/*.1"]
    end
end
