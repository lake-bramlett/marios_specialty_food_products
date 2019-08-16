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
|Spec|Input|Output|
|---- |:---:|----:|
|returns the name of the volunteer | Volunteer.new({:name => 'Jane', :project_id => 1, :hours => 0, :id => nil}) | 'Jane' |
|returns the project_id of the volunteer | Volunteer.new({:name => 'Jane', :project_id => 1, :hours => 0, :id => nil}) | true |
|checks for equality based on the name of a volunteer | volunteer1 = Volunteer.new({:name => 'Jane', :project_id => 1, :hours => 0, :id => nil}); volunteer2 = Volunteer.new({:name => 'Jane', :project_id => 1, :hours => 0, :id => nil})| true |
|returns all volunteers|volunteer1 = Volunteer.new({:name => 'Jane', :project_id => 1, :hours => 0, :id => nil});volunteer2 = Volunteer.new({:name => 'Joe', :project_id => 1, :hours => 0, :id => nil})|[volunteer1, volunteer2]|
|adds a volunteer to the database|Volunteer.new({:name => 'Jane', :project_id => 1, :hours => 0, :id => nil}|[volunteer1]|
|returns a volunteer by id|volunteer1 = Volunteer.new({:name => 'Jane', :project_id => 1, :hours => 0, :id => nil}); Volunteer.find(volunteer1.id) |volunteer1 |
|returns the project title|Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil})|'Teaching Kids to Code'|
|returns the id of the project before saving project|Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil})|nil|
|returns the id of the project after saving project|Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil})| An Integer |
|is the same project if two projects have the same title|project1 = Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil});project2 = Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil})|true|
|is empty to start|Project.all|[]|
|returns all projects|project1 = Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil});project2 = Project.new({:title => 'Teaching Ruby to Kids', :total_hours => 0, :id => nil});Project.all|[project1, project2]|
|saves a project to the database|project = Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil});Project.all|[project]|
|returns a project by id|project1 = Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil});Project.find(project1.id)|project1|
|returns all volunteers for a specific project|project = Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil});volunteer1 = Volunteer.new({:name => 'Jasmine', :project_id => project.id, :hours => 0, :id => nil});volunteer2 = Volunteer.new({:name => 'Joe', :project_id => project.id, :hours => 0, :id => nil});project.volunteers|volunteer1, volunteer2]|
|allows a user to update a project|project = Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil});project.update({:title => 'Teaching Ruby to Kids', :total_hours => 0, :id => nil})|project.title == 'Teaching Ruby to Kids'|
|allows a user to delete a project|project = Project.new({:title => 'Teaching Kids to Code', :total_hours => 0, :id => nil}); project.delete|Project.all == []|

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
