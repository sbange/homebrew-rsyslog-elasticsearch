macos-rsyslog-elasticsearch
===========================

Custom brew formulas to build/install rsyslog with omelasticsearch enabled. If brew installation for rsyslog with omelasticsearch on OS X Maverics fails for you as it failed for me, try this.

Install this repository as tap:
```bash
brew tap sbange/macos-rsyslog-elasticsearch
```

If you experience errors while building indicating trouble with pkg-config:
```bash
export PKG_CONFIG=/usr/local/bin/pkg-config
```

Install from tap:
```bash
brew install sbange/macos-rsyslog-elasticsearch/libestr
brew install sbange/macos-rsyslog-elasticsearch/libee
brew install sbange/macos-rsyslog-elasticsearch/liblognorm
brew install sbange/macos-rsyslog-elasticsearch/rsyslog
```
