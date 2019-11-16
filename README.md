# Local testing

```bash
ganache-cli --deterministic
```

Install, compile, deploy:

```bash
npm install
npx openzeppelin compile
npx openzeppelin create
```

# Deployment

Generate mnemonic:

```
npx mnemonics
```

Save the output to .env:

```
MNEMONIC="..here to the mnemonic words"
```

Follow [the manual for deployment](https://docs.openzeppelin.com/sdk/2.5/public-deploy).
Network is configured in truffle-config.js already, if you have the corrent mnemonics.
