#1 init with vue-webpack template

```

vue init webpack-simple my-webpack-simple-demo

```

#2 the vue-webpack template project structure

```console

[04:21] [dev my-webpack-simple-demo] $ tree ./
./

├── index.html		//index.html template
├── package.json	//Project Basic Configuration Description  build scripts and dependencies
├── README.md		//Default README file
├── src
│   ├── App.vue		//main app component
│   ├── assets		//module assets (processed by webpack)
│   │   └── logo.png
│   └── main.js		//app entry file
└── webpack.config.js	//webpack config file

2 directories, 7 files


```


#3 install the dependencies 

```console

npm install 

``` 

#4 dev mode

```

npm run dev

```

#5 build

```

npm run build

```

source:[webpack template in vue](https://vuejs-templates.github.io/webpack/)
[what's vue loader](https://vue-loader-v14.vuejs.org/zh-cn/)
[how to init vuejs template](https://www.cnblogs.com/alinaxia/p/6395810.html)
