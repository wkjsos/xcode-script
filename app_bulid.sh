
if [ ! -d ~/Desktop/app_build ];
then
mkdir -p ~/Desktop/app_build;
fi

#工程绝对路径
project_path=$(cd `dirname $0`; pwd)

#工程名
project_name=xxx

scheme_name=xxx

development_mode=Debug

#build文件夹路径
build_path=~/Desktop/app_build

#plist路径
exportOptionsPlistPath=${project_path}/xxx.plist

exportIpaPath=~/Desktop/app_build/${development_mode}

echo '\033[32m --- Bulid begin! \033[0m'

echo '\033[32m --- xcodebuild clean! \033[0m'

xcodebuild \
clean -configuration ${development_mode} -quiet  || exit

echo '\033[32m --- xcodebuild clean success! \033[0m'

echo '\033[32m --- xcodebuild archive begin! \033[0m'

xcodebuild \
archive -workspace ${project_path}/${project_name}.xcworkspace \
-scheme ${scheme_name} \
-configuration ${development_mode} \
-archivePath ${build_path}/${project_name}.xcarchive  -quiet  || exit

echo '\033[32m --- xcodebuild archive success! \033[0m'

echo '\033[32m --- xcodebuild exportArchive begin! \033[0m'

xcodebuild -exportArchive -archivePath ${build_path}/${project_name}.xcarchive \
-configuration ${development_mode} \
-exportPath ${exportIpaPath} \
-exportOptionsPlist ${exportOptionsPlistPath} \
-quiet || exit

if [ -e $exportIpaPath/$scheme_name.ipa ]; then

echo '\033[32m --- xcodebuild exportArchive success! \033[0m'

open $exportIpaPath
else
echo '\033[31m --- xcodebuild exportArchive fail! \033[0m'
fi

echo '\033[32m --- fir upload ipa begin! \033[0m'


# 上传到Fir 替换token
fir login -T xxx
fir publish $exportIpaPath/$scheme_name.ipa

echo '\033[32m --- fir upload ipa success! \033[0m'

exit 0




