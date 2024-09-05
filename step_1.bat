openssl ecparam -name secp256k1 -genkey -noout -out PrivateKey.pem
openssl ec -in PrivateKey.pem -pubout -conv_form compressed -out PublicKey.pem
openssl base64 -d -in PublicKey.pem -out PublicKey.bin
openssl req -new -sha256 -key PrivateKey.pem -extensions v3_req -config openssl.cnf -out cert.csr
