#!/bin/bash

# Bring in the as_code_owner function, to run commands as the user who owns the code.
# Usually the "build" user.
source /usr/local/share/bootstrap/common_functions.sh

bash /app/tools/docker/setup/install.sh

# Create env file if missing
bash /app/tools/docker/setup/setup-dotenv.sh

if [ "$REMOTE_ENV" = "1" ]; then
  as_code_owner "php artisan key:generate"
fi