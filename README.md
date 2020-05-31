# GitHub ESLint runner

This action executes ESLint linter on specified javascript files without any previous action/build step or Docker required.

## Prerequisites

### ESLint

You must have the ESLint running locally for the action to execute. It will use the same rules as you do locally.
More info [on the ESLint getting started guide](https://eslint.org/docs/user-guide/getting-started#installation-and-usage)

## Usage

### main.yml

Add to your existing `main.yml` file or create a new file named `.github/workflows/lint.yml` and copy over one of the examples below to your new workflow file

This is the simplest example to get it running:
```yml
name: Lint

on: [push]

jobs:
  eslint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: blmage/eslint-action@1.1.0
```

### Parameter `with`

You can specify a glob of files to lint using the `with:` argument on your YAML file. If unspecified, ESLint will be run through all the files in the project.

The example below shows ESLint running only on the files under the `src/` folder:

```yml
name: Lint

on: [push]

jobs:
  eslint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: blmage/eslint-action@1.1.0
        with:
          files: src/
```

### Parameter `maxWarnings`

You can specify the maximum number of warnings to trigger a nonzero exit code. If unspecified, only errors will trigger a nonzero exit code.

The example below shows ESLint failing if it finds any warning:

```yml
name: Lint

on: [push]

jobs:
  eslint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: blmage/eslint-action@1.1.0
        with:
          maxWarnings: 0
```

### Setup

If there is no previous step installing the necessary modules, this action will execute a `yarn install` or `npm install` automatically.

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
