#!/bin/bash
if nc -z localhost 4040; then
  echo "Spark service is healthy"
  exit 0
else
  echo "Spark service is not healthy"
  exit 1
fi