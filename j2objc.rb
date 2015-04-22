class J2objc < Formula
    homepage "http://j2objc.org/"
    version "0.9.7"
    url "https://github.com/google/j2objc/archive/#{version}.zip"
    sha256 "3239988399800e1be0bad72c66341d369169bd709d2b4159a922373897b58301"

    head do
        url "https://github.com/google/j2objc/archive/master.zip"
    end

    depends_on "maven"
    depends_on :xcode

    def install
        inreplace "./cycle_finder/src/main/bin/cycle_finder.sh", "=/lib", "=/../lib"
        #inreplace "./scripts/j2objc.sh", "/lib", "/../lib"

        system "make dist -j5"
        lib.install Dir["dist/lib/**"]

        doc.install %w(README.md LICENSE AUTHORS)
        man1.install Dir["dist/man/man1/*.1"]

        bin.install "dist/cycle_finder"
        bin.install "dist/j2objc"
        bin.install "dist/j2objcc"
    end

    test do
        system "j2objcc --version"
    end
end
