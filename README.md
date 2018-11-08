# vue-zondicons
## Easily add Zondicon icons to your web project

**Installation**
```
npm install --save vue-zondicons
```

**To Use**

Browse Zondicons on the [Zondicon website](http://www.zondicons.com/icons.html)

To add an icon change the icon name from hypen case to Pascalcase

ie. To use the Zondicon `arrow-left` you would convert it to `ArrowLeft`

```
  <Zondicon icon="ArrowLeft" />
```

You can also pass css classes to the Zondicon svg
Note: `fill-content` and `text-red` are from the Tailwinds CSS library and `vue-zondicons` doesnt come with any css.
```
  import Zondicon from 'vue-zondicons'

  <Zondicon icon="ArrowLeft" class="fill-current text-red"/>
```

**Note**

The icon `filter` has been changed to `FilterIcon` since `filter` is a keyword in Vue and will throw errors.


## Project setup
```
npm install
```

## Development setup

clone this repo 
```
npm install # Install dependancies

./scripts/make-icons.sh # download zondicons from zondicon repo and generate vue components

npm build # Build package for npm

npm publish 

```
