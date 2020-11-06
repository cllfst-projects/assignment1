inputString=$1
echo $inputString>test2.txt

#generatin the PRIVATE KEY
openssl genrsa -out private.pem 2048

#generating the PIBLIC KEY
openssl rsa -in private.pem -out public.pem -outform PEM -pubout

#encrypting the file using the public key
openssl rsautl -encrypt -inkey public.pem -pubin -in test2.txt -out test2.encry

#decrypting the file using the private key
openssl rsautl -decrypt -inkey private.pem -in test2.encry -out test2.decry
