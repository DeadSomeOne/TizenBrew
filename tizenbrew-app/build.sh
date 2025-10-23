cd TizenBrew/service-nextgen/service
npm install
npx babel . --out-dir transpiled --copy-files
rm -rf node_modules
cd transpiled
ncc build index.js -o ../dist
rm -rf node_modules
cd ..
rm -rf transpiled
cd ../../tizenbrew-ui
npm install --force
npm run build
rm -rf node_modules
cd ../..
