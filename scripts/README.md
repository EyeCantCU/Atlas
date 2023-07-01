# Custom scripts

You can add custom scripts to this directory and declare them to be run at build time in the `scripts:` section of `recipe.yml`. Custom scripts can be run at either the `pre:` execution phase right after the custom repositories are added, or at the `post:` phase after all of the automatic build steps.

Your scripts will be given exactly one argument when they are executed, which specifies its precise execution phase (`pre` or `post`). The primary purpose of this argument is to streamline the reuse of scripts for multiple stages. This argument is provided for both manually declared scripts and scripts ran by `autorun.sh`.

## Creating a script

In order for the script to be executed, either move it to `scripts/pre/` or `scripts/post/` (if using `autorun.sh`) or declare it in the `recipe.yml`.

All commands from RPMs you've declared in the `recipe.yml` should be available when running scripts at the `post` execution phase.

When creating a script, please make sure

- ...its filename ends with `.sh`.
  - This follows convention for (especially bash) shell scripts.
  - `autorun.sh` only executes files that match `*.sh`.
- ...it starts with a [shebang](<https://en.wikipedia.org/wiki/Shebang_(Unix)>) like `#!/usr/bin/env bash`.
  - This ensures the script is ran with the correct interpreter / shell.
- ...it contains the command `set -oue pipefail` near the start.
  - This will make the image build fail if your script fails. If you do not care if your script works or not, you can omit this line.
