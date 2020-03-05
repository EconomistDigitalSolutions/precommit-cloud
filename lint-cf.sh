#!/usr/bin/env bash

cfn-lint template.yml
EXIT_CODE=$?

# Exit code 4 is warnings, which we don't want to error. See https://github.com/aws-cloudformation/cfn-python-lint/issues/235#issuecomment-406951041
if [ $EXIT_CODE == 4 ]; then
  EXIT_CODE=0
fi

exit $EXIT_CODE