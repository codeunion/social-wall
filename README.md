# Social Wall

A small web application built for beginners that highlights some essential web programming topics.

- The HTTP Request Response life cycle
- Ruby's [Sinatra][sinatra] web application framework
- Fundamental patterns in computer programming (loops, branching, variables)
- Data persistence using a SQL database
- HTML templating and ERB
- Deploying an Application to Heroku

The following video tutorials are all based the code in this repository being deployed into the Cloud9 integrated development environment.  It is important to use terminal commands as they are written in this readme.  

## Social Wall Setup

[ScreenCast on setting up Social-Wall][social wall screencast]

[![https://www.youtube.com/watch?v=0s9shJ6XCjs](http://cl.ly/image/39173l2Y1y2s/Image%202014-09-08%20at%202.40.18%20PM.png)](https://www.youtube.com/watch?v=0s9shJ6XCjs)

Steps to get this code working.

1. Head to https://c9.io/ and signup for an account, verify the account via email.
1. Create a new workspace and into that workspace, 'Clone From Url' https://github.com/codeunion/social-wall
1. 'Start Editing' your new workspace
1. Open a new terminal window, verify you are in your 'workspace' directory.
  ```
  pwd
  ls
  ```
    ![http://cl.ly/image/2x3O3J2E151U/Image%202014-09-05%20at%204.31.10%20PM.png](http://cl.ly/image/2x3O3J2E151U/Image%202014-09-05%20at%204.31.10%20PM.png)

1. Install the application's gems.

  ```
  bundle install --without production
  ```
1. Run the application

  ```
  ruby hello.rb -p $PORT -o $IP
  ```
1. Visit your application on the internet.

  https://social-wall-c9-codeunion.c9.io/

  **CodeUnion's Cloud9 username is 'codeunion' and therefore the above url is named accordingly.  Make sure to use your own username, which will point to your running instance of the application.**
    ![http://cl.ly/image/380d1V2s3j2b/Image%202014-09-05%20at%204.24.36%20PM.png](http://cl.ly/image/380d1V2s3j2b/Image%202014-09-05%20at%204.24.36%20PM.png)

  Application url's might look like:

  https://social-wall-c9-startuplandia.c9.io/

  https://social-wall-c9-jcdavison.c9.io/

  https://social-wall-c9-yourusername.c9.io/

  https://your-application-c9-yourusername.c9.io/


## The Request Response Lifecycle

Let's look at the relationship between the server-side ruby code we've written in `hello.rb` and our available `server endpoints` like `/waffles` or `/waffles/chocolate`

Run the application inside the cloud9 ide.

```shell
  ruby hello.rb -p $PORT -o $IP
```

Visit the root `/` of your application, `https://social-wall-c9-yourusername.c9.io/` and watch the screencast.


## Social Wall Overview

Run the application inside the cloud9 ide.

```shell
  ruby app.rb -p $PORT -o $IP
```

Watch the Screencast, explore the nature of visiting the 'root' of the application and creating Message records by making `POST` requests to `/messages`

## Deploying to Heroku

- make an account at [heroku][heroku]
- open Social Wall in the Cloud9 IDE
- watch the screencast, create a new heroku application and deploy your Social Wall app.

```ruby
  heroku create <somenewappname>
  git push heroku master
```

Visit http://somenewappname.herokuapp.com in a web browser.


[sinatra]:http://www.sinatrarb.com/
[social wall screencast]:https://www.youtube.com/watch?v=0s9shJ6XCjs
[heroku]:https://www.heroku.com/
