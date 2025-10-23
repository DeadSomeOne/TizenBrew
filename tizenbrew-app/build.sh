sudo npm i -g @vercel/ncc
cd TizenBrew/service-nextgen/service
npm install
npx @vercel/ncc build index.js
rm -rf node_modules
cd ../../tizenbrew-ui
npm install --force
npm run build
rm -rf node_modules
cd ..
