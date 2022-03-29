# README

##    Dependencies:

            Ruby 2.7.4  
            Rails 6.1.x  
            Postgresql

[Postman documentation](https://documenter.getpostman.com/view/19395140/UVyoWdFD)

Steps to run the app (assuming basic git knowlegde, functioning dependencies and basic troubleshooting skillls):

Clone this repository to your local machine.

CD into the cloned repo.

Create and migrate the database by running

```
rails db:create && rails db:migrate
```

Start the server by running

```shell
rails s
```

IMPORTANT NOTE: As the project fetches, parses and persists data using an initializer, running your server may take a while. It's normal.

##### Navigate through the API by either making cURL requests as documented in postman or simply visit the routes in your favourite browser. It's going to render jSON data anyways.

#### What went well in the project?

*   Satisfactory usage of design patterns.
*   Logic firmly encapsulated and modularized.
*   Implementation of good practices, convention and RESTful routing.

What could be improved?  

*   Parsing algorithms
*   Controllers (migrate to skinny controller convention)
*   Documentation
*   Git workflow

What is being worked at?

(by order of priority, first bullet being the most urgent)

*   Add a basic tokenized auth system
*   Test models and database
*   Test integration and requests. Outdate postman in favour of swagger rswag documentation.
*   Serialize data
*   Add validators to data
*   Migrate the ugly initializer into a functional backgroud proccess (maybe sidekiq?)
*   Handle the 500 status returned when communicating with the external api (maybe with a retry-after in every request?)
*   Implement an exception handler
*   Deploy to production (ec2? heroku?)
