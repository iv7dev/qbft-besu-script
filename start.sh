echo "Creating src folder"
mkdir src

echo "Creating first folder"
cd ./src
mkdir node-1
cd node-1
mkdir data

echo "Creating second folder"
cd ../
mkdir node-2
cd node-2
mkdir data

echo "Creating third folder"
cd ../
mkdir node-3
cd node-3
mkdir data

echo "Creating four folder"
cd ../
mkdir node-4
cd node-4
mkdir data

cd ../

echo "Creating keys"
besu operator generate-blockchain-config --config-file=../genesis.json --to=networkFiles --private-key-file-name=key

echo "Moving created files to nodes"
mv networkFiles/genesis.json .

num=1

for file in "networkFiles/keys"/*
do
    mv "$file"/* node-"$num"/data/
    ((num++))
done

rm -r networkFiles
