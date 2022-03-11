# Introduction
Hi! Thanks for looking at my repo! This is just a simple lua script that adds a ped menu to your server! Feel free to edit 

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FSizzle-Z%2FBBQueue-AutoReset&count_bg=%238406D5&title_bg=%23372B5C&icon=&icon_color=%23E7E7E7&title=Visits&edge_flat=true)](https://hits.seeyoufarm.com)
## :ledger: Index

- [Usage](#zap-usage)
  - [Installation](#electric_plug-installation)
- [Development](#wrench-development)
  - [Pre-Requisites](#notebook-pre-requisites)
  - [File Structure](#file_folder-file-structure) 
- [Credit/Acknowledgment](#star2-creditacknowledgment)

## :zap: Usage
Leave your server on and it should reset your queue at the set time in the config file.

###  :electric_plug: Installation
- Add the resource to your server
- Edit the config to suit your needs
- Put in your config 'ensure Sizzle-PedMenu' or whatever you named the resource

###  :bucket: Permissions
- To give someone permission to use the menu, write the following in your config
- Replace discordidhere with your discord id, or any identifier like steam:steamhex, etc.
```
  add_ace identifier.discord:discordidhere "sizzle.ped" allow
```


##  :wrench: Development

### :notebook: Pre-Requisites
- A FiveM Server
- A Brain
- [MenuV](https://github.com/ThymonA/menuv)




###  :file_folder: File Structure

```
│   .gitattributes
│   config.lua
│   fxmanifest.lua
│
├───client
│       client.lua
│
└───server
        server.lua
```

## :star2: Credit/Acknowledgment
Made by Sizzle#0007 & Fusion#0002

![GPL License](https://www.gnu.org/graphics/gplv3-127x51.png)
