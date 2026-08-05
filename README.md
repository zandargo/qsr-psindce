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

For static hosting providers like KingHost, upload the contents of `dist/spa` after building. The production build is configured to use relative asset paths so icon fonts and images still load correctly when the site is served from a subfolder.
Apache-specific font MIME and cache headers are provided by `public/.htaccess`, which is copied automatically into `dist/spa` during build.

## Windows Scripts (this repository)

- `build-quasar.bat`: clean and build SPA output into `dist/spa`.
- `deploy-vercel.bat`: build SPA and deploy to Vercel in one command.
- `package-host.bat`: build SPA and generate a ready-to-upload package for Apache hosting:
	- `deploy-package/`
	- `deploy-package.zip`
- `verify-host-fonts.ps1`: compare SHA256 and size between local `dist/spa/assets` fonts and the live host URLs.

`public/.htaccess` is copied automatically to `dist/spa/.htaccess` during build.
The font verifier targets `https://psindce.org.br` by default. For KingHost, prefer uploading `deploy-package.zip` and extracting it on the server, or force FTP binary mode, to avoid font corruption during transfer.

### Customize the configuration
See [Configuring quasar.config.js](https://v2.quasar.dev/quasar-cli-vite/quasar-config-js).
