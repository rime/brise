<meta charset="UTF-8">

La brise
===
Rime schema repository (Deprecated)

**NOTICE:** please check out [/plum/](https://github.com/rime/plum), the new Rime configuration manager and input schema repository

Downstream packagers of this software, please refer to
https://github.com/rime/plum/blob/master/README.md#install-as-shared-data
and decide whether you want to deprecate the `brise` or `rime-data` package.

Project home
---
[rime.im](http://rime.im)

License
---
GPLv3

Individual packages in this collection can be released under different licenses.
Please refer to their respective LICENSE files.

Install
===

The Makefile builds and installs Rime data as a binary package on Unix systems.

Please check out submodule `plum` before building, as the `Makefile` simply pass through make targets to `plum/Makefile`.

Build dependencies
---

- git
- librime>=1.3 (for `rime_deployer`)
- plum (submodule)

Run-time dependencies
---

  - librime>=1.3
  - opencc>=1.0.2

Build and install
---

The default make target uses `git` command line to download the latest packages
from GitHub.

```sh
make
sudo make install
```

You can optionally build YAML files to binaries by setting the shell variable
`build_bin`. To build preset packages, do

```sh
build_bin=1 make preset
```

Credits
===
We are grateful to the makers of the following open source projects:

  - [Android Pinyin IME](https://source.android.com/) (Apache 2.0)
  - [Chewing / 新酷音](http://chewing.im/) (LGPL)
  - [ibus-table](https://github.com/acevery/ibus-table) (LGPL)
  - [OpenCC / 開放中文轉換](https://github.com/BYVoid/OpenCC) (Apache 2.0)
  - [moedict / 萌典](https://www.moedict.tw) (CC0 1.0)
  - [Rime 翰林院 / Rime Academy](https://github.com/rime-aca) (GPLv3)

Also to the inventors of the following input methods:

  - Cangjie / 倉頡輸入法 by 朱邦復
  - Array input method / 行列輸入法 by 廖明德
  - Wubi / 五筆字型 by 王永民
  - Scj / 快速倉頡 by 麥志洪
  - Middle Chinese Romanization / 中古漢語拼音 by 古韻

Contributors
===
The repository is a result of collective effort. It was set up by the following
people by contributing files, patches and pull-requests. See also the
[contributors](https://github.com/rime/brise/graphs/contributors) page for a
list of open-source collaborators.

  - [佛振](https://github.com/lotem)
  - [Kunki Chou](https://github.com/kunki)
  - [雪齋](https://github.com/LEOYoon-Tsaw)
  - [Patrick Tschang](https://github.com/Patricivs)
  - [Joseph J.C. Tang](https://github.com/jinntrance)
  - [lxk](http://101reset.com)
  - [Ye Zhou](https://github.com/zhouye)
  - Jiehong Ma
  - StarSasumi
  - 古韻
  - 寒寒豆
  - 四季的風
  - 上海閒話abc
  - 吳語越音
