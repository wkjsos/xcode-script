echo '\033[32m --- DerivedData clean begin... \033[0m'
rm -rf ~/Library/Developer/Xcode/DerivedData
echo '\033[32m --- DerivedData clean success! \033[0m'


echo '\033[32m --- Archives clean begin... \033[0m'
rm -rf ~/Library/Developer/Xcode/Archives
echo '\033[32m --- Archives clean success! \033[0m'


echo '\033[32m --- CoreSimulator clean begin... \033[0m'
rm -rf ~/Library/Developer/CoreSimulator/Devices
echo '\033[32m --- CoreSimulator clean success! \033[0m'

exit 0
