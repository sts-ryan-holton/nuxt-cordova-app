# :iphone: Nuxt JS + Vuetify 2 SPA hybrid app template

[Nuxt JS](https://nuxtjs.org/) (Vue JS) + [Vuetify 2](https://vuetifyjs.com/en/) SPA hybrid demo app built using [Apache Cordova](https://cordova.apache.org/), formally known as PhoneGap.

Use this template to get you up and running with a Nuxt JS + Vuetify and Cordova project.

## :rocket: Project Setup

#### Requirements

- Cordova `= 8.0.0`
- Xcode `>= 10.3`
- Android Studio `>= 3.4`
- Node JS `>= 10.13.0`
- NPM `>= 6.10.0`

#### Installation

``` bash
# install dependencies
$ npm install

# navigate to the cordova/ directory
$ cd cordova && cordova prepare

# Install required packages to run emulator
$ cd cordova/platforms/ios/cordova && npm install ios-sim ios-deploy
```

**Note: if `cordova prepare` fails, check that the cordova/www directory exists, if it doesn't create it.**

> Run all installation commands from the root project.


## :wrench: Local Development

``` bash
# install dependencies
$ npm install

# serve with hot reload at localhost:3000
$ npm run dev
```
**:warning:** certain native plugins and functionality are only available on an emulator/physical device, ignore any console warnings/errors associated to these.

## :iphone: Build Apps

``` bash
# build, compile and launch on simulator
$ npm run cordova-ios

# build, compile and launch on simulator
$ npm run cordova-android
```
