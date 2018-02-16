class LibsignalProtocolC < Formula
  desc "Signal Protocol C Library"
  homepage "https://www.whispersystems.org"
  url "https://github.com/signalapp/libsignal-protocol-c/archive/v2.3.1.tar.gz"
  sha256 "1afc195cc87153ea5178b485a2bf9f4791c03fd70c9b2e3c1ecc55bbb64c9fce"

  head "https://github.com/signalapp/libsignal-protocol-c.git"

  depends_on "pkg-config" => :build
  depends_on "cmake" => :build
  depends_on "make" => :build

  option "with-shared", "Build shared libraries"

  def install
    args = std_cmake_args
    args << "-DBUILD_SHARED_LIBS=ON" if build.with? "shared"

    system "cmake", ".", *args
    system "make"
    system "make", "install"
  end
end
