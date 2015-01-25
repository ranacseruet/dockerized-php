#!/bin/bash

cd /app && vendor/bin/doctrine orm:schema-tool:create

exec supervisord -n