#!/bin/bash
cd "$(dirname "$0")" || exit 1
rm -f .git/HEAD.lock .git/index.lock .git/objects/maintenance.lock
git add -A
git commit -m "AAFED PWA — تحديث" >/dev/null 2>&1
git branch -M main
git remote remove origin >/dev/null 2>&1
git remote add origin https://github.com/yusuftalaat74-coder/aafed.git
git push -u origin main
echo ""
echo "✅ تم الرفع. الصفحة: https://github.com/yusuftalaat74-coder/aafed"
echo "تقدر تقفل النافذة."
