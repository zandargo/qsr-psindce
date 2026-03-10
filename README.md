# PSINDCE (qsr-psindce)

Psi Sind CE Landing Page

## Install the dependencies
```bash
yarn
# or
npm install
```

### Start the app in development mode (hot-code reloading, error reporting, etc.)
```bash
quasar dev
```


### Build the app for production
```bash
quasar build
```

## Windows Scripts (this repository)

- `build-quasar.bat`: clean and build SPA output into `dist/spa`.
- `deploy-vercel.bat`: build SPA and deploy to Vercel in one command.
- `package-host.bat`: build SPA and generate a ready-to-upload package for Apache hosting:
	- `deploy-package/`
	- `deploy-package.zip`

`public/.htaccess` is copied automatically to `dist/spa/.htaccess` during build.

### Customize the configuration
See [Configuring quasar.config.js](https://v2.quasar.dev/quasar-cli-vite/quasar-config-js).
