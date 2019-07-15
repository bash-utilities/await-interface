# Await Interface Usage Example
[heading__title]:
  #await-interface-usage-example
  "&#x2B06; Top of this page"


> This branch is an example of how to utilize [`await-interface.sh`][branch_master__await_interface] script from the [`master`][master_branch] branch of this project; head over to the `master` branch of this repository if installation and utilization within your-own project is the goal.


## [![Open Issues][badge__issues__await_interface]][issues__await_interface] [![Open Pull Requests][badge__pull_requests__await_interface]][pull_requests__await_interface] [![Build Test Status][badge__travis_ci__await_interface]][travis_ci__await_interface] [![Latest commits][badge__commits__await_interface__example]][commits__await_interface__example]



------


#### Table of Contents


- [Example Usage][heading__example_usage]

- [License][heading__license]


------


## Example Usage
[heading__example_usage]:
  #example-usage
  ""


**`example-usage.sh`**


```Bash
bash example-usage.sh
```


**Example output** interfaces are detected


```
#> Active interface name: tun0
#> Active interface name: tun1
```


**Example output** when **no** interfaces are detected


```
#> await_interface got board of waiting for an interface
```


___


## License
[heading__license]:
  #license
  "&#x00A9; Legal bits of Open Source software"


```
Await Interface submodule example usage documentation
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


[master_branch]: https://github.com/bash-utilities/await-interface

[branch_master__await_interface]: https://github.com/bash-utilities/await-interface/blob/master/await-interface.sh


[branch_example__example_usage]:
  https://github.com/bash-utilities/await-interface/blob/example/example-usage.sh
  "Bash script that shows some ways of utilizing code from the master branch of this repository"


[badge__travis_ci__await_interface]:
  https://img.shields.io/travis/bash-utilities/await-interface/example.svg

[travis_ci__await_interface]:
  https://travis-ci.com/bash-utilities/await-interface
  "&#x1F6E0; Automated tests and build logs"


[badge__commits__await_interface__example]:
  https://img.shields.io/github/last-commit/bash-utilities/await-interface/example.svg

[commits__await_interface__example]:
  https://github.com/bash-utilities/await-interface/commits/example
  "&#x1F4DD; History of changes on this branch"


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
