rm -f /data/src/node_modules;
ln -s /install/node_modules /data/src;
nginx;
cd /data/src && grunt dev 
