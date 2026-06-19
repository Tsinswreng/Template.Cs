# 寫個Bash腳本、把./proj/Cs/Cs.csproj 重命名成 <命令行參數>.csproj
# 然後再把./proj/Cs/ 重命名成 <命令行參數>

#!/bin/bash
[ $# -ne 1 ] && echo "用法: $0 <新名称>" && exit 1
mv ./proj/Cs/Cs.csproj ./proj/Cs/$1.csproj
mv ./proj/Cs ./proj/$1
mv ./proj/Cs.Test/Cs.Test.csproj ./proj/Cs.Test/$1.Test.csproj
mv ./proj/Cs.Test ./proj/$1.Test
echo "✅ 重命名完成"