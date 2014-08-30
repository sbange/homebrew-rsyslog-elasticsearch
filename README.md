homebrew-rsyslog-elasticsearch
===========================

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
brew install sbange/rsyslog-elasticsearch/rsyslog
```

The binary will be located in /usr/local/sbin/rsyslogd, add this to your $PATH or start with full path. The following example will start rsyslogd using your config file, keep it from switching to background and print out debug info so you can see what is going on or missing:

```bash
sudo rsyslogd -f /path/to/your/rsyslog.conf -n -d
```
