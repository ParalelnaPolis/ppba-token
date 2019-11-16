require('dotenv').config();

const HDWalletProvider = require('@truffle/hdwallet-provider');
const mnemonic = process.env.MNEMONIC;

module.exports = {
  networks: {
    development: {
      protocol: 'http',
      host: 'localhost',
      port: 7545,
      gas: 5000000,
      gasPrice: 5e9,
      networkId: '*',
    },
    live: {
      provider: () => new HDWalletProvider(mnemonic, `https://token.paralelnapolis.sk/`),
      network_id: 0x1337,
      // production: true,
      gas: 8000000,           // Gas sent with each transaction (default: ~6700000)
      gasPrice: 20000000,  // 20 gwei (in wei) (default: 100 gwei)

    }
  },
};
