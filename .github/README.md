# Await Interface
[heading__title]:
  #await-interface
  "&#x2B06; Top of this page"


[`await-interface.sh`][await_interface__master__source_code], contains a function that returns active interface names based off provided hint, useful for services that setup `tun`/`tap` interfaces.


> The following covers how to install this branch as a submodule within your own project, and parameters that `await-interface.sh` currently responds to.


## [![Byte size of await-interface.sh][badge__master__await_interface__source_code]][await_interface__master__source_code] [![Open Issues][badge__issues__await_interface]][issues__await_interface] [![Open Pull Requests][badge__pull_requests__await_interface]][pull_requests__await_interface] [![Build Test Status][badge__travis_ci__await_interface]][travis_ci__await_interface] [![Latest commits][badge__commits__await_interface__master]][commits__await_interface__master]



------


#### Table of Contents


- [&#x2B06; Top of ReadMe File][heading__title]

- [:zap: Quick Start][heading__quick_start]

  - [:memo: Edit Your ReadMe File][heading__edit_your_readme_file]
  - [:shell: Example Bash Script][heading__example_bash_script]
  - [:floppy_disk: Commit and Push][heading__commit_and_push]

- [:scroll: await-interface.sh Positional Arguments][heading__api]

- [&#x1F5D2; Notes][notes]

- [:copyright: License][heading__license]


------


## Quick Start
[heading__quick_start]:
  #quick-start
  "&#9889; ...well as quick as it may get with things like this"


**Bash Variables**


```Bash
_module_https_url='https://github.com/bash-utilities/await-interface.git'
_module_relative_path='lib/modules/await-interface'
```


**Git Commands**


```Bash
cd "your-project-path"

git submodule add\
 -b master\
 --name await-interface\
 "${_module_https_url}" "${_module_relative_path}"
```


> **Version Locking**; recommended for those that audit every dependency...


```Bash
git checkout tags/<tag_name> -b <branch_name>
```


> ... replace _`<tag_name>`_ with the tag to checkout and _`<branch_name>`_ with a custom name, eg...


```Bash
git checkout tags/v0.0.1 -b loc-v0.0.1
```


### Edit Your ReadMe File
[heading__edit_your_readme_file]:
  #edit-your-readme-file
  "&#x1F4DD; Suggested additions so everyone has a good time with submodules"


Suggested additions so everyone has a good time with submodules


```MarkDown
Clone with the following to avoid incomplete downloads


    git clone --recurse-submodules <url-for-your-project>


Update/upgrade submodules via


    git submodule update --init --recursive --remote --merge


Please review the official documentation for Git submodules...


    git help submodule


... or via [Submodules chapter][git_book__submodules] from Git.



[git_book__submodules]:
  https://git-scm.com/book/en/v2/Git-Tools-Submodules
  "Valuable information for daily use and recovering from a detached HEAD"
```


### Example Bash Script
[heading__example_bash_script]:
  #example-bash-script
  "&#x1F41A; Source and utilize await_interface features"


[**`example-usage.sh`**][branch_example__example_usage]


```Bash
#!/usr/bin/env bash


## Enable sourcing via absolute path
__SOURCE__="${BASH_SOURCE[0]}"
while [[ -h "${__SOURCE__}" ]]; do
    __SOURCE__="$(find "${__SOURCE__}" -type l -ls | sed -n 's@^.* -> \(.*\)@\1@p')"
done
__DIR__="$(cd -P "$(dirname "${__SOURCE__}")" && pwd)"


source "${__DIR__}/modules/await-interface/await-interface.sh"


_interface_names_list=($(await_interface 'tun'))
printf 'Active interface name: %s\n' "${_interface_names_list[@]}"

_interface_names_string="$(await_interface 'tap0' '1' '3')"
printf 'Active interface name(s): %s\n' "${_interface_names_string}"
```


**Testing `example-usage.sh`**


```Bash
bash example-usage.sh || echo "Exit code -> ${?}"
```


Utilize the above example to make similar edits to any of your project scripts that should wait for interface names.


### Commit and Push
[heading__commit_and_push]:
  #commit-and-push
  "&#x1F4BE; And congratulate yourself on not having to write something similar!"



```Bash
git add .gitmodules
git add lib/modules/await-interface
git add README.md


git commit -F- <<'EOF'
:heavy_plus_sign: Adds bash-utilities/await-interface dependency



**Additions**


- `.gitmodules` file, tracks other Git repository code utilized by this project

- `lib/modules/await-interface` submodule, Git tracked dependency


**Edits**


- `README.md` file, documentation updates for submodules
EOF


git push origin gh-pages
```


**:tada: Excellent :tada:** your project is now ready to begin unitizing code of this repository!


___


## Await Interface API
[heading__api]:
  #await-interface-api
  "&#x1F4DC; The incantations that await_interface function understands"


| Param | Type |  | Description |
|---|---|---|---|
| `$1` | string | **required** | Hint of interface name to look out for, example `tun` or `tap0` |
| `$2` | number | `1` | Number of seconds to sleep between checks |
| `$3` | number | `10` | Max number of loops before function returns error code |


**Returns: `<string|list>`**, IP address or space separated list of addresses


**Throws** `Parameter_Error: await_interface not provided an interface`, when first parameter is not defined


**Example:** as an array


```Bash
_interface_names_list=($(await_interface 'tun'))
printf 'Active interface name: %s\n' "${_interface_names_list[@]}"
#> Active interface name: tun0
#> Active interface name: tun1
#> Active interface name: tun2
```


**Example:** as a string


```Bash
_interface_names_string="$(await_interface 'tap0' '1' '3')"
printf 'Active interface name(s): %s\n' "${_interface_names_string}"
#> Active interface name(s): tap0
```


___


## Notes
[notes]:
  #notes
  "&#x1F5D2; Additional notes and links that may be worth clicking in the future"


Pull Requests are welcomed! Check the _`Community`_ section for development tips and code of conduct.


___


## License
[heading__license]:
  #license
  "&#x00A9; Legal bits of Open Source software"


```
Await Interface submodule quick start documentation
Copyright (C) 2019  S0AndS0

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation; version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```



[badge__travis_ci__await_interface]:
  https://img.shields.io/travis/bash-utilities/await-interface/example.svg

[travis_ci__await_interface]:
  https://travis-ci.com/bash-utilities/await-interface
  "&#x1F6E0; Automated tests and build logs"


[branch_example__example_usage]:
  https://github.com/bash-utilities/await-interface/blob/example/example-usage.sh
  "Bash script that shows some ways of utilizing code from the master branch of this repository"


[badge__commits__await_interface__master]:
  https://img.shields.io/github/last-commit/bash-utilities/await-interface/master.svg

[commits__await_interface__master]:
  https://github.com/bash-utilities/await-interface/commits/master
  "&#x1F4DD; History of changes on this branch"


[await_interface__community]:
  https://github.com/bash-utilities/await-interface/community
  "&#x1F331; Dedicated to functioning code"


[await_interface__example_branch]:
  https://github.com/bash-utilities/await-interface/tree/example
  "If it lurches, it lives"


[badge__issues__await_interface]:
  https://img.shields.io/github/issues/bash-utilities/await-interface.svg

[issues__await_interface]:
  https://github.com/bash-utilities/await-interface/issues
  "&#x2622; Search for and _bump_ existing issues or open new issues for project maintainer to address."


[badge__pull_requests__await_interface]:
  https://img.shields.io/github/issues-pr/bash-utilities/await-interface.svg

[pull_requests__await_interface]:
  https://github.com/bash-utilities/await-interface/pulls
  "&#x1F3D7; Pull Request friendly, though please check the Community guidelines"


[badge__master__await_interface__source_code]:
  https://img.shields.io/github/size/bash-utilities/await-interface/await-interface.sh.svg?label=await-interface.sh

[await_interface__master__source_code]:
  https://github.com/bash-utilities/await-interface/blob/master/await-interface.sh
  "&#x2328; Project source code!"
