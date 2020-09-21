# WooCart Deploy Action

Sync your GitHub repository with your store on WooCart.com.

## Inputs

### `url`

**Required** The URL of WebDAV server (starting with https://...)

### `username`

**Required** The name of the user.

### `password`

**Required** The password for the user.

## Example usage

```yaml
name: Deploy via WebDAV
on: push
jobs:
  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Upload via WebDAV
      uses: woocart/deploy-action@master
      with:
        url: ${{ secrets.WEBDAV_URL }}
        username: ${{ secrets.WEBDAV_USERNAME }}
        password: ${{ secrets.WEBDAV_PASSWORD }}
        localDir: "wp-content"
        remoteDir: "."
```
