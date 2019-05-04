# :iphone: Nuxt JS + Vuetify 2 SPA hybrid app template

**:warning: Please use this repo as a template, Android hasn't been fully tested for this repo.**

[Nuxt JS](https://nuxtjs.org/) (Vue JS) + [Vuetify 2](https://vuetifyjs.com/en/) SPA hybrid demo app built using [Apache Cordova](https://cordova.apache.org/), formally known as PhoneGap.

## :scroll: Requirements

- Node JS, NPM _(latest versions)_
- Xcode installed with Apple ID linked up _(for iOS development)_
- Cordova installed globally

## :wrench: Local Development

### Browser

From the **main project folder:**

``` bash
# install dependencies
$ npm install

# serve with hot reload at localhost:3000
$ npm run dev
```

### iOS/Android Simulation

From within the **cordova folder:**

``` bash
# install dependencies
$ npm install

```

You should be able to run: `npm run cordova-ios` from the main project root folder which will compile, build and launch a simulation on the device specified within the *package.json* file _(default: iPhone 8, iOS 12.2)_.

Run: `npm run cordova-android` to run on a simulated Android environment.


## :rocket: Production/Deployment

### iOS

Some configuration will be required before you can build your app, this will include: adding your Apple ID and setting a few settings.

To build the app for your iPhone, connect your iPhone to you Mac, launch Xcode, and open the `cordova/platforms/ios/demoApp.xcodeproj` file, from here click the *Play/Run* button at the top of Xcode.

### Android

You should be able to open the relevant file within `cordova/platforms/android/...`

### Browser

``` bash
# build for production
$ npm run build

# generate static project in production mode on http://localhost:3000/
$ npm run start

```

## :rotating_light: Notes

- Trying to run `npm run cordova-*` with your phone connected may not launch the simulation until you disconnect your device.
