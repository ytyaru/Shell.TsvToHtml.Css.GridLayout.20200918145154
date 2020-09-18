[ja](./README.ja.md)

# Shell.TsvToHtml.Css.GridLayout.20200918145154

Convert TSV to HTML. Apply CSS Grid Layout.

# DEMO

![demo](https://github.com/ytyaru/Shell.TsvToHtml.Css.GridLayout.20200918145154/blob/master/demo/demo.png?raw=true)

# Features

* Display HTML using `zenity`

# Requirement

* <time datetime="2020-09-18T14:51:06+0900">2020-09-18</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# Installation

```sh
cd /tmp
git clone https://github.com/ytyaru/Shell.JapaneseLastNameGenerator.20200912074709
git clone https://github.com/ytyaru/Shell.JapaneseFirstNameGenerator.20200918080000
git clone https://github.com/ytyaru/Shell.TsvToHtml.Css.GridLayout.20200918145154
```

# Usage

```sh
cd Shell.TsvToHtml.Css.GridLayout.20200918145154/src
/tmp/Shell.JapaneseLastNameGenerator.20200912074709/src/jln.sh g -n 40 | ./tsv2html.sh
/tmp/Shell.JapaneseFirstNameGenerator.20200918080000/src/jfn.sh g -n 40 | ./tsv2html.sh
```

# Author

ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# License

This software is CC0 licensed.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

