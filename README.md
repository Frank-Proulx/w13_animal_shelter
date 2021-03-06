# Animal Shelter API

#### An API for an animal shelter, giving info about name, species, age, breed and sex. I also created a React front end for this project which can be found [here](https://github.com/Frank-Proulx/animal-shelter-react)

#### Created By: **Frank Proulx**


## Technologies Used

* _Ruby_
* _Gems_
* _Bundler_
* _RSpec_
* _Shoulda Matchers_
* _IRB_
* _Pry_
* _Postgres_
* _SQL_
* _Rails_
* _ActiveRecord_
* _Faker_
* _Will Paginate_
* _Factory Bot_
* _Rack-cors_

## Description

_This project was created to show proficiency in Rails with Active Record for creating APIs. The application is for an API that allows users to retrieve information about animals in a shelter including name, species, age, breed and sex. The user can add/remove/edit animals in the database._

## Further Exploration Objectives

* The user can get all animals with a standard get call or if they'd like can add a page parameter to get paginated results (used will_paginate gem for this).
* The user can search for a random animal by adding /random to the end of a normal /animals get call, this was made with a custom route in the controller. 
* The user can search by breed, species or sex individually, or also species and sex combined, these were achieved with custom scopes and these searches are case insensitive. All routes mentioned here detailed in the graph below. 
* This API has CORS enabled for all origins and all resources (rack-cors gem enabled for this). 
* This API uses namespacing of the controller to create versioning.

## System Requirements

* Ruby v2.6.5 recommended
* Postgres 12.9  
_(Note: Ruby gem dependencies will be installed automatically by Bundler.)_

## Setup/Installation Requirements

* Clone the GitHub repository: [https://github.com/Frank-Proulx/w13_animal_shelter](https://github.com/Frank-Proulx/w13_animal_shelter)
* From the main project directory, enter `bundle install` in the terminal to populate gems.
* To create a database, type in your terminal: 
      `rake db:setup`
* Enter `rspec` into the terminal to confirm passing of all tests.
* Run `rails s` to start the Rails server.
* Use an api platform (such as [Postman](https://www.postman.com/)) or integrate into a front end application using the routes listed below.

## Endpoints

|Usage | METHOD       | URL       | Params |
| :--------| :------------| :---------| :------|
|See Animals | GET    | `http://localhost:3000/api/v1/animals` | |
|See Animals (Paginated) | GET    | `http://localhost:3000/api/v1/animals?page=param` | _page_ |
|See A Specific Animal | GET    | `http://localhost:3000/api/v1/animals/:id` | |
|Search By Animal Breed | GET    | `http://localhost:3000/api/v1/animals?breed=param` | _breed_ |
|Search By Animal Species | GET    | `http://localhost:3000/api/v1/animals?species=param` | _species_ |
|Search By Animal Sex | GET    | `http://localhost:3000/api/v1/animals?sex=param` | _sex_ |
|Search By Animal Species & Sex | GET    | `http://localhost:3000/api/v1/animals?species=param&sex=param` | _species, sex_ |
|See A Random Animal | GET    | `http://localhost:3000/api/v1/animals/random` | |
|Create An Animal | POST    | `http://localhost:3000/api/v1/animals?name=param&species=param&age=param&breed=param&sex=param` | _name, species, age, breed, sex_ |
|Update An Animal (any or all parameters) | PUT    | `http://localhost:3000/api/v1/animals/:id?name=param&species=param&age=param&breed=param&sex=param` | _name, species, age, breed, sex_ |
|Delete An Animal | DELETE    |`http://localhost:3000/api/v1/animals/:id`| |  
|||||

*for endpoints with params, replace any `param` in the sample routes with your chosen param(s).

## Responses

A response for a single animal will have the following format:

```
{
  "id" : integer,
  "name" : string,
  "species" : string
  "age" : integer
  "breed" : string
  "sex" : string
}
```

## Known Bugs

No known bugs at this time.

## License

_[MIT](https://opensource.org/licenses/MIT)_

If you have any issues, questions, ideas or concerns, please reach out to me at my email and/or make a contribution to the code via GitHub.

Copyright (c) _2022_ _Frank Proulx_ 