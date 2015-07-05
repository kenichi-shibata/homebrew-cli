class Lattice < Formula
    homepage "http://lattice.cf"
    version "0.2.5"
    url "https://lattice.s3.amazonaws.com/releases/v#{version}/darwin-amd64/ltc"
    sha256 "c46b97e71b47b42af7ceafb50f4604707fa5ba54ee0f15ff83cde62f4c51600f"

    def install
        chmod 0755, 'ltc'
        bin.install 'ltc'
    end
end
