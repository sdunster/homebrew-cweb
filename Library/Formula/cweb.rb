require 'formula'

class Cweb < Formula
  homepage 'http://sunburn.stanford.edu/~knuth/cweb.html'
  url 'ftp://ftp.cs.stanford.edu/pub/cweb/cweb.tar.gz'
  sha1 'a9828b66b525d7cf91c57b3c4891168caa4af10a'
  version '3.64'

  def install
    ENV.deparallelize
    system "mkdir", "-p", "#{man}"
    system "mkdir", "-p", "#{share}/texmf/tex/generic"
    system "mkdir", "-p", "#{share}/emacs/site-lisp"
    system "mkdir", "-p", "#{lib}/cweb"
    system "make", "all", "MANDIR=#{man}", "DESTDIR=#{bin}/", "CWEBINPUTS=#{lib}/cweb", "EMACSDIR=#{share}/emacs/site-lisp", "MACROSDIR=#{share}/texmf/tex/generic"
    system "make", "install", "MANDIR=#{man}", "DESTDIR=#{bin}/", "CWEBINPUTS=#{lib}/cweb", "EMACSDIR=#{share}/emacs/site-lisp", "MACROSDIR=#{share}/texmf/tex/generic"
  end
end

