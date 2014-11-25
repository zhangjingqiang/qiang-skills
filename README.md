Qiang Skills
============

Qiang's skills. As a superman:-)

# Information

- Hosted on [Heroku](http://qiang-skills.herokuapp.com)
- Powered by [Ruby on Rails](http://rubyonrails.org)

# Installation

```ruby
heroku config:set ABOUT_ME=[...]
heroku config:set EMAIL=[...]
heroku config:set MANDRILL_USERNAME=[...]
heroku config:set MANDRILL_API_KEY=[...]
heroku run rake db:migrate
heroku run rails console
Admin.create!({ :email => '...', :password => '...', :password_confirmation => '...' })
```

# License

[MIT](http://opensource.org/licenses/MIT)
