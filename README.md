# USING THIS TEMPLATE

* `cp -r rails-practice-template my-new-thing`
* `rm -rf .git .idea`
* add a new database name to config/database.yml
* change the `replace_me_controller` with something real
* put images in the project directory and link them under `wireframes`

# Rails Practice

## Setup

* `bundle`
* `rake db:create db:migrate db:seed`
* `rails s`

You can run specs with:

* `rspec`

Note: email/password combinations for existing users populated by `rake db:seed` can be found in the db/seeds.rb file.

## Stories
As a user, I can click on "Add Me" and the puppy will be added to my dashboard
in the appropriate place.

As a user, I can view my Puppy Dashboard.

As a user, I can click on "Make a Play Date" on my dashboard and schedule a time
to meet a puppy.

As a user, I can view my upcoming play dates from my dashboard.

Extra Credit:
As a user, I receive a reminder email the day before my puppy play date.


## Wireframes

