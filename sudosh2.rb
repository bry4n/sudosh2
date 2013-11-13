require 'formula'

# brew install sudosh2.rb
class Sudosh2 < Formula
  homepage "http://sourceforge.net/projects/sudosh2/"
  head "https://github.com/bry4n/sudosh2.git"
  url "https://github.com/bry4n/sudosh2.git", :revision => "816caafc25a342bc822152496dd2489dab2a89ff"
  #sha1 "8dc6efacf0b5a825a5ed13d1c8a90f0c0bae6562"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make"
    system "make install"
  end

end
