Cucumber JSON API Steps
=======================

Some [Cucumber][cucumber] steps to make easier to build [JSON API][json-api] with Rails.

  [cucumber]: https://github.com/cucumber/cucumber
  [json-api]: http://jsonapi.org/

Installation
------------

_Milestone: v1.0.0_

Install [Cucumber][cucumber], then add the gem to your `Gemfile`:
```ruby
group :development, :test do
  gem 'cucumber_json_api_steps'
end
```

Usage
-----

**Note**: This usage section acts as a roadmap for development following the [README-drive development][rdd] principles. Not everything that is described here will be available at any moment, however, I'll try to keep things clear in comments.

  [rdd]: http://tom.preston-werner.com/2010/08/23/readme-driven-development.html

Once installed, you can include the JSON API [steps](#steps) in your features definitions or use the [build-in generators](#generators) to create common features.

Steps
-----

### Base Steps
_Milestone: v1.0.0_

### Scaffolded Resource Steps
_Milestone: v1.0.0_

### Associations Steps
_Milestone: undefined_

Generators
----------
_Milestone: undefined_

Credits
-------

This gem wouldn't exist without the [Anthony Eden][aeden] [API steps][aeden-steps] and [inspiring talk](http://vimeo.com/30586709).

  [aeden]: https://github.com/aeden
  [aeden-steps]: https://gist.github.com/aeden/660331

License
-------

    Cucumber JSON API Steps
    Copyright (C) 2013-2014 Gonzalo Bulnes Guilpain

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
