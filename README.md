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
    <td><tt>['kodi']['packages']['required']</tt></td>
    <td>Mash</td>
    <td>List of OS packages required to install Kodi</td>
    <td><tt>e.g. software-properies-common</tt></td>
  </tr>
  <tr>
    <td><tt>['kodi']['apt']['repositories']</tt></td>
    <td>Mash</td>
    <td>List apt repositories to be used to install and configure Kodi</td>
    <td><tt>e.g. ppa:team-xbmc/unstable</tt></td>
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

Author:: Jeremy Baumont (<jeremy.baumont@gmail.com>)
