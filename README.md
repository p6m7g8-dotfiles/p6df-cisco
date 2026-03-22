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

p6df module for Cisco AI Skill Scanner: behavioral, LLM, VirusTotal, and
Cisco AI Defense scanning of AI coding assistant skills (Claude Code, Codex,
Gemini CLI, OpenAI Desktop App). Supports interactive wizard, CI/CD SARIF
output, and HTML reports.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `ssw` | `skill-scanner` | Interactive wizard |
| `ss`  | `skill-scanner scan` | Scan a single skill |
| `ssa` | `skill-scanner scan-all` | Scan all skills recursively |
| `ssc` | `p6df::modules::cisco::scanner::scan::claude` | Scan `~/.claude/skills` |
| `ssf` | `p6df::modules::cisco::scanner::scan::full` | Full scan (behavioral+llm+aidefense) |
| `ssci`| `p6df::modules::cisco::scanner::scan::ci` | CI scan → SARIF output |

### Environment Variables

| Variable | Purpose | Required |
|----------|---------|----------|
| `SKILL_SCANNER_LLM_API_KEY` | LLM analyzer (Anthropic or OpenAI) | For `--use-llm` |
| `SKILL_SCANNER_LLM_MODEL` | Model override | Optional |
| `VIRUSTOTAL_API_KEY` | Binary/malware hash scanning | For `--use-virustotal` |
| `AI_DEFENSE_API_KEY` | Cisco AI Defense cloud scanning | For `--use-aidefense` |

### Functions

#### p6df-cisco

##### p6df-cisco/init.zsh

- `p6df::modules::cisco::deps()`
- `p6df::modules::cisco::external::brew()`
- `p6df::modules::cisco::aliases::init(_module, dir)`
  - Args:
    - _module
    - dir
- `p6df::modules::cisco::init(_module, dir)`
  - Args:
    - _module
    - dir

##### p6df-cisco/lib/scanner.sh

- `p6df::modules::cisco::scanner::install()`
- `p6df::modules::cisco::scanner::scan(skill_path)`
  - Args:
    - skill_path
- `p6df::modules::cisco::scanner::scan::all(skills_dir)`
  - Args:
    - skills_dir
- `p6df::modules::cisco::scanner::scan::claude()`
- `p6df::modules::cisco::scanner::scan::full(skill_path)`
  - Args:
    - skill_path
- `p6df::modules::cisco::scanner::scan::llm(skill_path)`
  - Args:
    - skill_path
- `p6df::modules::cisco::scanner::scan::ci(skills_dir, output)`
  - Args:
    - skills_dir
    - output
- `p6df::modules::cisco::scanner::report::html(skill_path, output)`
  - Args:
    - skill_path
    - output
- `p6df::modules::cisco::scanner::scan::virustotal(skill_path)`
  - Args:
    - skill_path

## Hierarchy

```text
.
├── init.zsh
├── lib
│   └── scanner.sh
└── README.md
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
