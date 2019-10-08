npm run build
cp -rf  dist/  /home/m/Mytest
sed -i -e 's+src=/js+src=http://10.38.41.62/Tahavol/dist/js+g' /home/m/Mytest/dist/index.html
sed -i -e 's+src=./js+src=http://10.38.41.62/Tahavol/dist/js+g' /home/m/Mytest/dist/index.html
sed -i -e 's+href=/css+href=http://10.38.41.62/Tahavol/dist/css+g' /home/m/Mytest/dist/index.html
sed -i -e 's+src=./css+href=http://10.38.41.62/Tahavol/dist/css+g' /home/m/Mytest/dist/index.html


