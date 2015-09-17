class Stacks < Formula
    homepage "https://github.com/State/stacks"
    version "0.1.0"
    url "https://github.com/State/stacks/archive/v#{version}.tar.gz"
    sha256 "180bb518ca76acc7c401704dc4db065452003cb80da9e7ca158db8c1e0b245a5"

    head "https://github.com/State/stacks.git"

    depends_on :python3
    depends_on "pyenv-virtualenvwrapper"

    def install
        bin.install "stacks"
    end
end
