# Do not forget to update bootnode url
besu --data-path=src/node-5/data --genesis-file=src/genesis.json --bootnodes=<enode> --p2p-port=30307 --rpc-http-enabled --rpc-http-api=ETH,NET,QBFT --host-allowlist="*" --rpc-http-cors-origins="all" --rpc-http-port=8549