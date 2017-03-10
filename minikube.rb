class Minikube < Formula
    homepage "https://github.com/kubernetes/minikube"
    desc "Run Kubernetes locally"
    version "0.17.1"
    url 'https://github.com/kubernetes/minikube/releases/'\
        "download/v#{version}/minikube-darwin-amd64"

    def install
        bin.install "minikube-darwin-amd64"
        mv bin/"minikube-darwin-amd64", bin/"minikube"
    end
end
