# kodi-cookbook

Installs and configure Kodi media center (formely known as XBMC).

## Supported Platforms

* Ubuntu
* Raspbery Pi


## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['kodi']['packages']</tt></td>
    <td>Array of string</td>
    <td>List of OS packages</td>
    <td><tt>software-properies-common</tt></td>
  </tr>
  <tr>
    <td><tt>['kodi']['apt']i['repositories']</tt></td>
    <td>Array of string</td>
    <td>List of URI for apt repositories</td>
    <td><tt>ppa:team-xbmc/unstable</tt></td>
  </tr>
</table>

## Usage

### kodi::default

Include `kodi` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[kodi::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
