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
  <Zondicon icon="ArrowLeft" class="fill-content text-red"/>
```


## Project setup
```
npm install
```

## Development setup

clone this repo 
```
npm install # Install dependancies

npm build # Build package for npm

./scripts/update.sh # download zondicons from zondicon repo and generate vue components

```
