#!/bin/bash

set -eo pipefail

echo "--- :package: Build job checkout directory"

pwd
ls -la
echo "this is a test"
echo "--- Again with the test"
echo "$TEST_ENV_VAR"
echo "--- Again again with the test"


echo "--- :evergreen_tree: Build job environment"
echo "env leaks info"

echo "+++ :hammer: Example tests"

echo -e "\033[33mCongratulations!\033[0m You've successfully run your first build on Buildkite! 👍

\033[33m$(cat artifacts/thumbsup.txt)\033[0m

If you have any questions or need help email support@buildkite.com, we'd be happy to help!

\033[31m<3\033[0m Buildkite
"


echo "+++ :frame_with_picture: Inline image uploaded as a build artifact"

function inline_image {
  printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

inline_image 'artifact://artifacts/image.gif' 'Rainbows'
