# xcode-script
Some scripts for xcode.



Here is the list of scripts:

| Script Name    | Describe                                                     |
| -------------- | ------------------------------------------------------------ |
| app_bulid.sh   | Xcode automatic packaging, then upload ipa to [fir](https://fir.im/). |
| xcode_clean.sh | Xcode data clean.                                            |



## Downloading the Source Code

You can just clone the repository:

```
git clone https://github.com/wkjsos/xcode-script.git
```



## How to Use



**app_bulid.sh configure:**

1、replace all the **xxx** in **app_bulid.sh.

```shell
project_name=xxx

scheme_name=xxx

development_mode=Debug

build_path=~/Desktop/app_build

exportOptionsPlistPath=${project_path}/xxx.plist
···
fir login -T xxx
```

2、install the **fir-cli**

```shell
gem install fir-cli
```



## Legal and Licensing

xcode-script is licensed under the [MIT license](https://github.com/PowerShell/PowerShell/tree/master/LICENSE.txt).



