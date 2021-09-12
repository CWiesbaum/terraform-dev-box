# Visual Studio Code Podman Box (vsc-podman)

This repository contains some IaC scripts to build a fedora based VirtualBox running podman. The box in conjunction with Visual Studio Code (VSC) is meant as a drop in solution for Docker.

## How it works

The general idea is to start the VM and use it to develop and run your applications using VSCs [Remote SSH Development](https://code.visualstudio.com/docs/remote/ssh) feature.

Due to VSC implementation, all no UI related VSC plugins will be installed on the VM as well. Only UI related plugins will be installed on the host. Therefore, it is also possible to isolate multiple development environments easily by creating multiple boxes.

## Setup

The following environment variables can be set to amend the resulting VM:

**VAGRANT_NAME** - VirtualBox name; *Default:* podman_provider

**VAGRANT_CPUS** - Number of CPUs; *Default: 1*

**VAGRANT_MEMORY** - VM memory; *Default: 2048*

**VAGRANT_SSH_PUB_KEY** - SSH public key to use for SSH connection to host; *Default:* ~/.ssh/id_rsa.pub

In order to setup a new box navigate to project root directory and run

```bash
vagrant up
```

In order to refine the basic box to your needs, you can add your required software an configurations using ansible.

To configure VSC for development, follow their instructions: [Remote SSH Development](https://code.visualstudio.com/docs/remote/ssh)

## License

All contents of this repository are published under GNU GENERAL PUBLIC LICENSE Version 2.

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.