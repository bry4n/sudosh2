require 'formula'

# brew install sudosh2.rb
class Sudosh2 < Formula
  homepage "http://sourceforge.net/projects/sudosh2/"
  url "https://github.com/bry4n/sudosh2/archive/v2.tar.gz"
  #md5 "f4218e28e4bc87cde88f176d0a39c09c"
  sha1 "8dc6efacf0b5a825a5ed13d1c8a90f0c0bae6562"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make"
    system "make install"
  end

end
