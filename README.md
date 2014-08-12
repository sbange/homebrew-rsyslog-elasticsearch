homebrew-rsyslog-elasticsearch
===========================

TODO test patch in rsyslog formula...  
TODO declare dependencies for single "brew install"

Custom brew formulas to build/install rsyslog with omelasticsearch enabled. If brew installation for rsyslog with omelasticsearch on OS X Maverics fails for you as it failed for me, try this.

Install this repository as tap, ignore warnings:
```bash
brew tap sbange/rsyslog-elasticsearch
```

If you experience errors while building indicating trouble with pkg-config:
```bash
export PKG_CONFIG=/usr/local/bin/pkg-config
```

Install from tap:
```bash
brew install sbange/rsyslog-elasticsearch/libestr
brew install sbange/rsyslog-elasticsearch/libee
brew install sbange/rsyslog-elasticsearch/liblognorm
brew install sbange/rsyslog-elasticsearch/rsyslog
```
