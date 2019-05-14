#!/bin/sh

# setting defaults for optional input
if [ -z "$AWS_ORGANIZATIONS_HOST" ]; then
  AWS_ORGANIZATIONS_HOST="0.0.0.0"
fi

if [ -z "$AWS_ORGANIZATIONS_PORT" ]; then
  AWS_ORGANIZATIONS_PORT="5000"
fi

echo "Starting AWS Organizations at $AWS_ORGANIZATIONS_HOST:$AWS_ORGANIZATIONS_PORT"

moto_server "organizations" -H $AWS_ORGANIZATIONS_HOST -p $AWS_ORGANIZATIONS_PORT
