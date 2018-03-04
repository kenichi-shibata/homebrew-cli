class CyrusSasl < Formula
    homepage "https://www.cyrusimap.org/sasl/"
    url "ftp://ftp.cyrusimap.org/cyrus-sasl/cyrus-sasl-2.1.26.tar.gz"
    sha256 "8fbc5136512b59bb793657f36fadda6359cae3b08f01fd16b3d406f1345b7bc3"

    depends_on "make" => :build

    def install
        # ENV.deparallelize
        system "./configure",
                              "--disable-debug",
                              "--disable-dependency-tracking",
                              "--disable-macos-framework",
                              "--disable-sample",
                              "--disable-silent-rules",
                              "--prefix=#{prefix}",
                              "--without-des"
        system "make"
        system "make", "install"
    end
end
