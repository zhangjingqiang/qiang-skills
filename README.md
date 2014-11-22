Qiang Skills
============

Qiang's skills. As a superman:-)

# Information

- Hosted on [Heroku](http://qiang-skills.herokuapp.com)
- Powered by [Ruby on Rails](http://rubyonrails.org)

# Installation

```ruby
heroku config:add ABOUT_ME=[...]
heroku config:add EMAIL=[...]
heroku run rake db:migrate
heroku run rails console
Admin.create!({ :email => '...', :password => '...', :password_confirmation => '...' })
```

# License

[MIT](http://opensource.org/licenses/MIT)
