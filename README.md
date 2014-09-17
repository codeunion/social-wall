# Social Wall

A small web application built for beginners that highlights essential web programming topics such as:

- The HTTP request response life cycle
- Ruby's [Sinatra][sinatra] web application framework
- Fundamental patterns in computer programming (loops, branching, variables)
- Data persistence using a SQL database
- HTML templating and ERB
- Deploying an application to Heroku

The following video tutorials are all based on the code in this repository being deployed into the Cloud9 integrated development environment.  

Please use terminal commands as they are written and used in the screencasts.  

## Social Wall Setup

The [Social Wall screencast][social wall screencast] will orient you on how to set up the code in the Cloud9 IDE.

[![https://www.youtube.com/watch?v=0s9shJ6XCjs](http://cl.ly/image/39173l2Y1y2s/Image%202014-09-08%20at%202.40.18%20PM.png)](https://www.youtube.com/embed/0s9shJ6XCjs?vq=hd1080)

Steps to get this application running.

1. Head to [Cloud9][cloud9] and sign up for an account, then verify the account via email.
1. Create a new workspace and click, 'Clone From URL.' https://github.com/codeunion/social-wall
1. Click 'Start Editing' to open your new workspace.
1. Open a new terminal window, then verify you are in your 'workspace' directory.
  ```
  pwd
  ls
  ```
    ![http://cl.ly/image/2x3O3J2E151U/Image%202014-09-05%20at%204.31.10%20PM.png](http://cl.ly/image/2x3O3J2E151U/Image%202014-09-05%20at%204.31.10%20PM.png)

1. Install the application's gems.

  ```
  bundle install --without production
  ```
1. Run the application.

  ```
  ruby hello.rb -p $PORT -o $IP
  ```
1. Visit your application on the Internet.

  https://social-wall-c9-codeunion.c9.io/

  **CodeUnion's Cloud9 username is 'codeunion' and therefore the above URL is named accordingly.  Make sure to use your own username, which will point to your running instance of the application.**
    ![http://cl.ly/image/380d1V2s3j2b/Image%202014-09-05%20at%204.24.36%20PM.png](http://cl.ly/image/380d1V2s3j2b/Image%202014-09-05%20at%204.24.36%20PM.png)


## The Request Response Lifecycle

Let's look at the relationship between the server-side Ruby code we've written in `hello.rb` and our available 'server endpoints' like `/waffles` or `/waffles/chocolate` by watching a [screencast][http screencast].

[![http://cl.ly/image/0A3u03133i0J/Image%202014-09-09%20at%207.18.15%20PM.png](http://cl.ly/image/0A3u03133i0J/Image%202014-09-09%20at%207.18.15%20PM.png)](https://www.youtube.com/embed/8I7bs9W1t_M?vq=hd1080)

1. Run the application inside the Cloud9 IDE.

  ```shell
  ruby hello.rb -p $PORT -o $IP
  ```

1. Visit the root `/` of your application, `https://social-wall-c9-yourusername.c9.io/` and watch the screencast.


## Social Wall Overview

[Watch the screencast][overview screencast], explore the nature of visiting the 'root' of the application and creating message records by making `POST` requests to `/messages`

[![http://cl.ly/image/0b0x1g3m292c/Image%202014-09-09%20at%203.00.02%20PM.png](http://cl.ly/image/0b0x1g3m292c/Image%202014-09-09%20at%203.00.02%20PM.png)](https://www.youtube.com/embed/NWorVNepf3A?vq=hd1080)

Run the application inside the Cloud9 IDE.

```shell
  ruby app.rb -p $PORT -o $IP
```

## Deploying to Heroku

[Watch the screencast][deploy to heroku]

1. Make an account at [Heroku][heroku].
1. Open Social Wall in the Cloud9 IDE.
1. Watch the screencast, create a new Heroku application and deploy your own Social Wall app.


  [![http://cl.ly/image/3s1H3w2M2n46/Image%202014-09-09%20at%202.31.33%20PM.png](http://cl.ly/image/3s1H3w2M2n46/Image%202014-09-09%20at%202.31.33%20PM.png)](https://www.youtube.com/embed/wbg-u3dVYfE?vq=hd1080)
  ```ruby
  heroku create
  git push heroku master
  heroku addons:add heroku-postgresql:hobby-dev
  heroku domains
  ```

1. Visit your newly created application in a web browser.


[sinatra]:http://www.sinatrarb.com/
[social wall screencast]:https://www.youtube.com/embed/0s9shJ6XCjs?vq=hd1080
[http screencast]:https://www.youtube.com/embed/8I7bs9W1t_M?vq=hd1080
[heroku]:https://www.heroku.com/
[cloud9]:https://c9.io/
[overview screencast]:https://www.youtube.com/embed/NWorVNepf3A?vq=hd1080
[deploy to heroku]:https://www.youtube.com/embed/wbg-u3dVYfE?vq=hd1080
