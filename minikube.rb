class Minikube < Formula
    homepage "https://github.com/kubernetes/minikube"
    desc ""
    version "0.10.0"
    url "https://github.com/kubernetes/minikube/releases/download/v#{version}/minikube-darwin-amd64"

    def install
        bin.install "minikube-darwin-amd64"
        mv bin/"minikube-darwin-amd64", bin/"minikube"
    end
end
