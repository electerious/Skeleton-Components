# Skeleton

Jump-start your front-end development. Skeleton is a HTML5 Boilerplate build upon [Rosid](https://github.com/electerious/Rosid).

## Contents

- [Features](#features)
- [Requirements](#requirements)
- [Setup](#setup)
- [How to use](#how-to-use)
	- [Develop](#develop)
	- [Compile](#compile)
	- [UI](#ui)
- [Docker](#docker)
- [Troubleshooting](#troubleshooting)

## Features

- Skeleton is a base for all your everyday web-projects. Jump-start your work and develop without starting from zero. Everything you need one fork away.
- This project is powered by [Rosid](https://github.com/electerious/Rosid), a web server with just-in-time pre-processing. JS (with Babel, UglifyJS), SASS (with cssnano, Autoprefixer) and Nunjucks can be used right out of the box.
- Skeleton is just the beginning. Fork it and extend it to your own needs. The predefined structure gives you flexibility and can be modified with ease.

## Requirements

Skeleton dependents on …

- [Node.js](https://nodejs.org/en/) (v8.5.0 or newer)
- [yarn](https://yarnpkg.com/en/)

Make sure to install and update all dependencies before you fork and setup Skeleton.

## Setup

Install all required dependencies with [yarn](https://yarnpkg.com/en/) before you start developing.

```sh
yarn install
```

## How to use

### Develop

Start developing using the following command. You browser will open, wait for code-changes and live-reload instantly when you update your files. JS, SASS and Nunjucks will be compiled on-the-fly.

```sh
yarn start
```

### Compile

Ready for prime time? Export all files, compiled and prepared for your audience. Simple upload the final `dist/` folder to your server and relax. Take a seat and enjoy a delicious burger from your favorite restaurant.

```sh
yarn run compile
```

### UI

Skeleton includes [Malvid](https://github.com/Malvid/Malvid) to help you build and document web components. Start the [development server](#develop) and open `/index.html` in your browser. The path to the UI can be changed in `rosidfile.js`.

## Docker

The included Dockerfile lets you build an image which compiles your site. In this case only Docker needs to be installed on the system. No other dependencies are required.

### Build

Build an image from the Dockerfile. This has to be done each time you have modified the project. The new source will be copied into the image.

```sh
docker build -t electerious/skeleton .
```

### Compile

Start a container to compile your site. The container will exit automatically when all tasks have been finished. The mounted volume will contain all compiled files.

```sh
docker run --rm -tv "$(pwd)/dist:/dist" electerious/skeleton
```

## Troubleshooting

- Install the latest version of [Node.js](https://nodejs.org/en/) and [yarn](https://yarnpkg.com/en/)
- Delete `node_modules` and [reinstall all dependencies](#setup)
- Check if the project depends on the newest version of [Rosid](https://github.com/electerious/Rosid)
- Try to compile the site using the included [Dockerfile](#docker)