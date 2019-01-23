class TerraformDocs < Formula
    homepage "https://github.com/segmentio/terraform-docs/"
    version 'v0.6.0'
    url "https://github.com/segmentio/terraform-docs/releases/"\
        "download/v#{version}/terraform-docs_darwin_amd64"

    def install
        bin.install "terraform-docs_darwin_amd64" => "terraform-docs"
    end
end
