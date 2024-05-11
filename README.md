# Navrepo Action

A [GitHub Action](https://help.github.com/en/actions) that turns a repository into a "navigational repository" (link to other repositories based on some criteria).

## Usage

```yml
# on: [push]

# recommended
on:
  schedule:
    - cron: 0 0 * * 1
  push:
  workflow_dispatch:

jobs:
  ci:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: ineshbose/navrepo-action@v1
        with:
          query: "map(select(.isFork))"
```

<table>
<thead>
  <tr>
    <th>Argument</th>
    <th>Required</th>
    <th>Default</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>query</td>
    <td>Yes</td>
    <td></td>
    <td>Query to fetch the list of repositories to clone.</td>
  </tr>
  <tr>
    <td>account_name</td>
    <td>No</td>
    <td>{{ github.repository_owner }}</td>
    <td>Account under which repositories to query.</td>
  </tr>
  <tr>
    <td>query_fields</td>
    <td>No</td>
    <td>id,name,createdAt,isFork,parent,url</td>
    <td>Fields in the JSON query (nameWithOwner stays).</td>
  </tr>
  <tr>
    <td>commit</td>
    <td>No</td>
    <td>true</td>
    <td>Commit to the repository.</td>
  </tr>
</tbody>
</table>
