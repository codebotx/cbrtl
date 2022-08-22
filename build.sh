hugo -D
rm -rf ../dist/*
mkdir -p ../dist
mv public/* ../dist
cd ../dist
git init
git add .
git commit -m "trigger build"
