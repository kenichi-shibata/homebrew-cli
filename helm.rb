class Helm < Formula
    homepage "https://github.com/helm/helm/"
    version '2.8.2'
    url "https://storage.googleapis.com/kubernetes-helm/"\
        "helm-v#{version}-darwin-amd64.tar.gz"

    def install
        bin.install 'helm'
        #bin.install "helm-v#{version}-darwin-amd64.tar.gz" => "helm"
    end
end
