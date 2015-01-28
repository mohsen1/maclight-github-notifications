# Github Notification CapsLock Light

> Turn on Mac's keyboard caps lock light on when you have notifications on Github.

### How to use

* Install maclight gem via `gem install maclight`
* Replace `<<--YOUR TOKEN HERE-->` in [`index.rb`](./index.rb) with a Github API access token that has **notifications** scope. Then run the following command to run this process in background
* Run the following command to run this process in background:

```shell
nohup run.sh &
```


#### Github access token
You can get an access token by going [here](https://github.com/settings/applications) and making one by clicking **Generate new token**

### License
MIT
