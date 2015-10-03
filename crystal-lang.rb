require "formula"

class CrystalLang < Formula
  desc "The Programming Language"
  homepage "http://crystal-lang.org/"
  version "0.8.0"
  url "https://github.com/manastech/crystal/releases/download/#{version}/crystal-#{version}-1-darwin-x86_64.tar.gz"
  sha256 "5a16826145a846da3548e875cf104bdfc04c35cd6628cf66487de1bfbe9c5faf"

  head "https://github.com/manastech/crystal.git"

  conflicts_with "crystal", :because => "because of naming"

  def install
    inreplace "bin/crystal", "embedded", "libexec"
    inreplace "bin/crystal", '$INSTALL_DIR', prefix

    #etc.install Dir["etc/**"]

    #man1.install Dir["embedded/share/man/man1/*.1"]
    #man3.install Dir["embedded/share/man/man3/*.3"]

    #doc.install Dir["embedded/share/doc/**"]
    share.install Dir["samples"]

    libexec.install Dir["embedded/bin", "embedded/lib", "embedded/include"]
    prefix.install Dir["src"]

    bin.install Dir["bin/crystal"]
  end
end
