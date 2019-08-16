# _Marios Speciality Food Products_

#### _Code Review, 14 August 2019_

#### By _**Lake Bramlett**_

## Description

_'Marios Speciality Food Products' is an application used to add, update, delete, and show food items and reviews in and from a database. User authentication is enabled so a user must be signed in to fully interact with the application. Full CRUD capabilities (namely the ability to edit and delete products and reviews) reserved for users with admin status._

## Setup/Installation Requirements

* _Clone https://github.com/lake-bramlett/marios_specialty_food_products repo locally_
* _In the command line, navigate to the clone repo_
* _Initiate a `bundle install` in the command line_
* _Create the database locally using `rails db:create` in the terminal_
* _Create the local ActiveStorage database by using `rails active_storage:install` in the terminal_
* _Run `rake db:migrate`_
* _Create test databse by running `rake db:test:prepare` in terminal_
* _To start local server run `rails s` in terminal window_
* _Navigate to localhost:3000 in preferred web browser_
* _Use preferred text editor to edit_
* _Make any pull requests to https://github.com/lake-bramlett/marios_specialty_food_products ._

## Specs

### Users
* All users will start off as non-admins by default

### Products
* Only admins can create, edit, and delete products.
* All users can view products
* Products will contain Product name, price, and country of origin.
* Products will have optional picture that will be uploaded at time of creation or added later.
* New products will appear in the root index.
* Products will have their names capitalized upon creation.

### Reviews
* All users can add and view reviews
* Review can be seen on the specific product pages when navigated
* Reviews will contain Author, body, and rating information
* Only admins can edit and delete reviews.


  ## Known Bugs

  _No observed bugs currently at this time (16 August 2019)._

  ## Support and contact details

  _email: lake.bramlett@gmail.com_

  ## Technologies Used


  * _Ruby_
  * _Ruby on Rails_
  * _ActiveRecord_
  * _ActiveStorage_
  * _Devise_
  * _SQL_
  * _PostgreSQL_
  * _Git_
  * _rspec_
  * _Capybara_


  ### License

  *This software is licensed under the MIT license.*

  Copyright (c) 2019 **_Lake Bramlett_**
