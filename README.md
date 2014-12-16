<meta charset="UTF-8">

La brise
===
Rime schema repository

Project home
---
[rimeime.github.io](https://rimeime.github.io)

License
---
GPLv3

Contents
===
This software package contains a collection of configuration and data files
used by [Rime](https://rimeime.github.io) to support popular Chinese input methods.

A Rime input schema, which defines a specific input method in Rime's DSL,
consists of a schema file named `*.schema.yaml` where `*` is the schema ID,
and optionally an affiliated Rime dictionary file `*.dict.yaml`.
In the following lists of Rime schemata, only schema IDs are listed for brevity.

General
---
  - default.yaml: Rime default settings
  - symbols.yaml: punctuation and special characters
  - essay.txt: a shared vocabulary and language model

Preset schemata
---
  - bopomofo: Zhuyin (Bopomofo)
  - cangjie5
  - luna_pinyin: Pinyin in Tranditional Chinese
  - stroke: five strokes represented by "hspnz"
  - terra_pinyin: Pinyin with tones

Supplemental schemata
---
  - combo_pinyin: Chord-typing Pinyin
  - double_pinyin: ZiRanMa, ABC, flyPY, MSPY, PYJJ
  - emoji
  - ipa_xsampa: IPA symbols in X-SAMPA encoding
  - jyutping: Cantonese
  - pinyin_simp: Pinyin in Simplified Chinese
  - quick5: Simplified Cangjie 5
  - sampheng: Middle Chinese in 3-key shorthand
  - soutzoe: Wu (Suzhounese)
  - wubi86
  - wugniu: Wu (Shanghainese)
  - zyenpheng: Middle Chinese Pinyin

Extra schemata
---
Included in the source package but not to be installed.
  - array30
  - scj6
  - wubi_trad: Wubi, Traditional Chinese output

Install
===

Build dependencies
---
  - librime>=1.3 (for rime_deployer)

Runtime dependencies
---
  - librime>=1.3
  - opencc>=1.0.2

Build and install
---
```
make
sudo make install
```

Credits
===
We are grateful to the makers of the following open source projects:

  - [Android Pinyin IME](https://source.android.com/) (Apache 2.0)
  - [Chewing / 新酷音](http://chewing.im/) (GPL)
  - [ibus-table](https://github.com/acevery/ibus-table) (LGPL)
  - [OpenCC / 開放中文轉換](https://github.com/BYVoid/OpenCC) (Apache 2.0)
  - [moedict / 萌典](https://www.moedict.tw) (CC0 1.0)
  - [Rime 翰林院 / Rime Academy](https://github.com/rime-aca) (GPLv3)

Also to the inventors of the following Chinese input methods:

  - Cangjie / 倉頡輸入法 by 朱邦復
  - Array input method / 行列輸入法 by 廖明德
  - Wubi / 五筆字型 by 王永民
  - Scj / 快速倉頡 by 麥志洪
  - Middle Chinese Romanization / 中古漢語拼音 by 古韻

Contributors
===
I may have missed someone.
See the `AUTHORS` file for a more complete list of authors and their works.

  - [佛振](https://github.com/lotem)
  - [瑾昀](https://github.com/kunki)
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
