require "formula"

class Liblognorm < Formula
  homepage "http://www.liblognorm.com"
  url "http://www.liblognorm.com/files/download/liblognorm-0.3.7.tar.gz"
  sha1 "b1e183fa62a22d4c7edf40c8a6373e0b38ef840d"

  depends_on 'pkg-config' => :build 

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

end
