require 'formula'

class Rsyslog < Formula
  homepage 'http://www.rsyslog.com'
  url 'http://www.rsyslog.com/files/download/rsyslog/rsyslog-7.4.5.tar.gz'
  sha256 'f5e46e9324e366f20368162b4f561cf7a76fecb4aa0570edcaaa49e9f8c2fe70'

  depends_on 'pkg-config' => :build
  # depends_on 'libestr'
  depends_on 'sbange/rsyslog-elasticsearch/libestr'
  depends_on 'sbange/rsyslog-elasticsearch/libee'
  depends_on 'json-c'

  patch :DATA

  def install
    args = %W[
             --prefix=#{prefix}
             --disable-dependency-tracking
             --enable-imfile
             --enable-usertools
             --enable-diagtools
             --enable-cached-man-pages
             --disable-uuid
             --disable-libgcrypt
             --enable-mmnormalize
             --enable-elasticsearch
           ]

    system "./configure", *args
    system "make"
    system "make install"
  end
end


__END__
diff --git i/grammar/parserif.h w/grammar/parserif.h
index aa271ec..03c4db9 100644
--- i/grammar/parserif.h
+++ w/grammar/parserif.h
@@ -3,7 +3,7 @@
 #include "rainerscript.h"
 int cnfSetLexFile(char*);
 int yyparse();
-char *cnfcurrfn;
+extern char *cnfcurrfn;
 void dbgprintf(char *fmt, ...) __attribute__((format(printf, 1, 2)));
 void parser_errmsg(char *fmt, ...) __attribute__((format(printf, 1, 2)));
 void tellLexEndParsing(void);

diff --unified=3 a/plugins/omelasticsearch/omelasticsearch.c b/plugins/omelasticsearch/omelasticsearch.c
--- a/plugins/omelasticsearch/omelasticsearch.c
+++ b/plugins/omelasticsearch/omelasticsearch.c
@@ -465,7 +465,7 @@

 	if(pData->fdErrFile == -1) {
 		pData->fdErrFile = open((char*)pData->errorFile,
-					O_WRONLY|O_CREAT|O_APPEND|O_LARGEFILE|O_CLOEXEC,
+					O_WRONLY|O_CREAT|O_APPEND|O_CLOEXEC,
 					S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP);
 		if(pData->fdErrFile == -1) {
 			rs_strerror_r(errno, errStr, sizeof(errStr));
