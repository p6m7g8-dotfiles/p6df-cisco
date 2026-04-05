# P6's POSIX.2: p6df-cisco

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Aliases](#aliases)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

- `ss` -> `skill-scanner scan`
- `ssa` -> `skill-scanner scan-all`
- `ssc` -> `p6df::modules::cisco::scanner::scan::claude`
- `ssci` -> `p6df::modules::cisco::scanner::scan::ci`
- `ssf` -> `p6df::modules::cisco::scanner::scan::full`
- `ssw` -> `skill-scanner`

### Functions

#### p6df-cisco

##### p6df-cisco/init.zsh

- `p6df::modules::cisco::aliases::init(_module, dir)`
  - Args:
    - _module
    - dir
- `p6df::modules::cisco::deps()`

#### p6df-cisco/lib

##### p6df-cisco/lib/scanner.sh

- `p6df::modules::cisco::scanner::install()`
- `p6df::modules::cisco::scanner::report::html(skill_path, [output=report.html])`
  - Args:
    - skill_path
    - OPTIONAL output - [report.html]
- `p6df::modules::cisco::scanner::scan(skill_path)`
  - Args:
    - skill_path
- `p6df::modules::cisco::scanner::scan::all([skills_dir=$HOME/.claude/skills])`
  - Args:
    - OPTIONAL skills_dir - [$HOME/.claude/skills]
- `p6df::modules::cisco::scanner::scan::ci([skills_dir=.], [output=results.sarif])`
  - Args:
    - OPTIONAL skills_dir - [.]
    - OPTIONAL output - [results.sarif]
- `p6df::modules::cisco::scanner::scan::claude()`
- `p6df::modules::cisco::scanner::scan::full(skill_path)`
  - Args:
    - skill_path
- `p6df::modules::cisco::scanner::scan::llm(skill_path)`
  - Args:
    - skill_path
- `p6df::modules::cisco::scanner::scan::virustotal(skill_path)`
  - Args:
    - skill_path

## Hierarchy

```text
.
├── init.zsh
├── lib
│   └── scanner.sh
└── README.md

2 directories, 3 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
