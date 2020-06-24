# `git-lab`

## Prerequisites

 * `jq`
 * `curl`
 * `grep`
 * Core Utilities

## Installation

Add this repository to your path:

```sh
export PATH=$PATH:$PWD
```

`git` will then automatically pick up `git-lab` as the subcommand `git lab`.
See also <https://git.github.io/htmldocs/howto/new-command.html>.

## Configuration

Populate `$XDG_CONFIG/git-lab/config.json`. Example:

```json
{
	"defaultEndpoint": "example",
	"endpoints": {
		"example": {
			"protocol": "https",
			"host": "git.example.com",
			"root": "/api/v4",
			"token": "[SECRET]"
		}
	}
}
```

Verify your configuration with `git lab config` (or `git-lab-config`).

"Endpoints" aim to make it possible to communicate with different GitLab
installations. As of 2021-02, only the "default endpoint" is used.

## Usage

`git lab config` and `git lab sync` can be run outside a Git repository.
Other commands must be run in a Git repository, and will work within its
context.
