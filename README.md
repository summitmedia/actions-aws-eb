# Aws eb cli action

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/summitmedia/actions-aws-eb/blob/master/LICENCE)


This action run [eb cli](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3.html)

## Inputs

### `command`

**Required** The command to run on cli.

## Example usage

```YAML
uses: summitmedia/actions-aws-eb@v1.0.0
with:
  command: 'deploy ${{ secrets.ENVIRONMENT_NAME }}'
env:
  AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
  AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  AWS_DEFAULT_REGION: "us-east-1"
```
