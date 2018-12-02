# GavariaBot-Core [![Build Status](https://travis-ci.com/AdamuKaapan/GavariaBot-Core.svg?branch=master)](https://travis-ci.com/AdamuKaapan/GavariaBot-Core)

**GavariaBot Core** is a Discord bot intended to provide a core set of functionality to make the addition of features much easier for the future. It's based on the previous iteration of a personal project of mine, but intended more for expansion and modularity from the start.

## Intended Features
* Heavily configurable but easy-to-use command system
* Plugin system designed to make adding new content easy and modular (hopefully with live plugin loading)
* Global settings system for persistence of configuration
* Easy-to-use RBAC (Role-Based Access Control) system
* Containerized deployment and build for simple one-click/one-line installs

## Possible Features (stretch goals)
* Web Administration Interface

## To build and run
This project uses Docker for official testing (although it can be run locally relatively easily). Simply run `docker build -t <tag name> .` in the root of the project, substituting `<tag name>` with the name of the image to create. Then to run it, run `docker run --env DISCORD_TOKEN=<your bot token> <tag name>`

### Running locally
The commands to run are the same as in the Dockerfile:
* `pip install -r requirements.txt`
* `python ./src/main.py`

You may need to follow the additional install instructions at [discord.py's repo (rewrite branch)](https://github.com/Rapptz/discord.py/tree/rewrite).

## To run unit tests
This project uses pytest. After building the Docker image, run `docker run <tag name> pytest src`.
