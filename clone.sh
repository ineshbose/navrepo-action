#!/bin/bash

gh repo list $OWNER --limit 1000 --json nameWithOwner,$QUERY_FIELDS --jq "$QUERY | .[].nameWithOwner" | \
   parallel gh repo clone
