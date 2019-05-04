
<p align="left"><b><a href="https://github.com/katzer/cordova-plugin-hidden-statusbar-overlay/tree/example">SAMPLE APP</a> :point_right:</b></p>

# HiddenStatusbarOverlay Plugin [![npm version](https://badge.fury.io/js/cordova-plugin-hidden-statusbar-overlay.svg)](http://badge.fury.io/js/cordova-plugin-hidden-statusbar-overlay) 

Beginning with iOS 7 view controllers are displayed full screen, by default, as shown [here][ios_guide]. This means they will cover the entire screen including the area underneath the status bar.

## Supported Platforms

- __iOS__


## Installation

The plugin can be installed via [CLI][CLI] and is publicly available on [NPM][npm].

Execute from the projects root folder:

    $ cordova plugin add cordova-plugin-hidden-statusbar-overlay

Or install a specific version:

    $ cordova plugin add cordova-plugin-hidden-statusbar-overlay@VERSION

Or install the latest head version:

    $ cordova plugin add https://github.com/katzer/cordova-plugin-hidden-statusbar-overlay.git

Or install from local source:

    $ cordova plugin add cordova-plugin-hidden-statusbar-overlay --searchpath <path>

Or add the following line to the `config.xml` for Phonegap Build projects:

```xml
<plugin name="cordova-plugin-hidden-statusbar-overlay" spec="https://github.com/katzer/cordova-plugin-hidden-statusbar-overlay" />
```


## Usage

The plugin creates the object `cordova.plugins.statusbarOverlay` and is accessible after the *deviceready* event has been fired.

```js
document.addEventListener('deviceready', function () {
    // cordova.plugins.statusbarOverlay is now available
}, false);
```

Statusbar and the overlay will be hidden on app start. The visibility of the status bar can be changed manually.

To hide the status bar:

```javascript
cordova.plugins.statusbarOverlay.hide();
```

To show the status bar:

```javascript
cordova.plugins.statusbarOverlay.show();
```

To determine if the status bar is hidden:

```javascript
cordova.plugins.statusbarOverlay.isHidden(function (isHidden) {
    console.log('status bar is hidden? -> ', isHidden)
});
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

This software is released under the [Apache 2.0 License][apache2_license].

Made with :yum: from Leipzig

© 2013 [appPlant GmbH][appplant]


[cordova]: https://cordova.apache.org
[ios_guide]: https://developer.apple.com/library/ios/qa/qa1797/_index.html
[CLI]: http://cordova.apache.org/docs/en/edge/guide_cli_index.md.html#The%20Command-line%20Interface
[npm]: https://www.npmjs.com/package/cordova-plugin-hidden-statusbar-overlay
[apache2_license]: http://opensource.org/licenses/Apache-2.0
[appplant]: http://appplant.de
