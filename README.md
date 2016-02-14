# Uno Taoger for Ghost

> Minimalist and Elegant theme for Ghost.

**Uno Taoger** is a fork of [uno-zen for Ghost](https://github.com/Kikobeats/uno-zen) which provides some features missing in the original theme.

### Whats is new in 2.x

- Totally rewritten using HTML5 and CSS3.
- Improved development workflow with gulp + browersync.
- Improved responsive and mobile experience.
- Improved SEO Content with meta tags.

Things that already existed:

- A good [404 page error](http://blog.taoger.info/404).
- Search support.
- Multiaccount support.
- Loading progress state for each page.
- Estimation about the time of reading.

You can see a [demo](http://blog.taoger.info) in my own blog. Also you can check the [styleguide](http://kikobeats.com/styleguide) to view how it looks.

## Installation

Enter in the theme folder (`content/themes`) of your Ghost installation and paste the follow command:

```bash
$ curl -sSL https://git.io/vgyz2 | sh
```

**NOTE:** This theme needs jQuery to works fine, but jQuery library is not provided by the theme. Instead, you need to inject from the `Blog Footer` in the `Code injection` of your Ghost installation, as:

![](https://camo.githubusercontent.com/f600498109f9b8e7d15fadd28b51c75b1f585d0f/687474703a2f2f692e696d6775722e636f6d2f4b365a595933752e706e67)

```html
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
```

## Update

If you have already installed the theme, you can update it executing `sh scripts/update`.

## Development and Customization

See in [documentation](https://github.com/taoger/uno-taoger/blob/master/DOCUMENTATION.md).
## License

MIT © [Kiko Beats](kikobeats.com)
