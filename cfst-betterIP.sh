clear
echo "查找适合当前网络环境的Cloudflare IP"
echo "使用CloudflareSpeedTest 请输入：1"
echo "使用better-Cloudflare-ip 请输入：2"
read -p "请输入：" number
case $number  in
1)
  cd $PREFIX/tmp
  wget -O CloudflareST_linux_arm64.tar.gz https://gh.w-m.workers.dev/XIU2/CloudflareSpeedTest/releases/latest/download/CloudflareST_linux_arm64.tar.gz
  tar -xzf CloudflareST_linux_arm64.tar.gz
  ./CloudflareST >$HOME/work/cfst.txt
  echo "测试时间：" >>$HOME/work/cfst.txt
  date >>$HOME/work/cfst.txt
;;
2)
  cd $PREFIX/tmp
  wget -O cf.sh https://gh.w-m.workers.dev/badafans/better-cloudflare-ip/raw/master/shell/cf.sh
  chmod +x cf.sh
  ./cf.sh >$HOME/work/cfst.txt
  echo "测试时间：" >>$HOME/work/cfst.txt
  date >>$HOME/work/cfst.txt
esac;
