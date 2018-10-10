class TerraformDocs < Formula
    homepage "https://github.com/segmentio/terraform-docs/"
    version '2.8.2'
    url "https://storage.googleapis.com/kubernetes-helm/"\
        "helm-v#{version}-darwin-amd64.tar.gz"

    def install
        bin.install "helm-v#{version}-darwin-amd64.tar.gz" => "helm"
    end
end
