== README

* demo json api
* Get token via email and password
* Use the post man extension on chrome

=====
# LET GET'S STARTED
* enter this link to your postman

* method POST

<http://localhost:3000/api/users/sign_in.json?user[email]=YOUR_EMAIL@MAIL.COM&user[password]=YOUR_TOKEN>


It will return the format

    {

      "auth_token": "YOUR_TOKEN",

      "email": "YOUR_EMAIL@MAIL.COM"

    }



* Then use method get to get data

* method GET

<http://localhost:3000/api/books?user_email=YOUR_EMAIL@MAIL.COM&user_token=YOUR_TOKEN>

or you can paste this link to url of browser, the same result

It returns

    [

      {

        "id": 1,

        "title": "Gone with the wind",

        "price": null,

        "created_at": "2016-01-04T09:04:27.366Z",

        "updated_at": "2016-01-04T09:04:27.366Z"

      },

      {

        "id": 2,

        "title": "The god father",

        "price": 5,

        "created_at": "2016-01-04T09:04:41.451Z",

        "updated_at": "2016-01-04T09:04:41.451Z"

      }

    ]

=====
* rails

* http://railscasts.com/episodes/350-rest-api-versioning

* http://railscasts.com/episodes/352-securing-an-api?autoplay=true

* http://stackoverflow.com/questions/29853474/api-signin-to-generate-token-using-devise-in-rails-4

