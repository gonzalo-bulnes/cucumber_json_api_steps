Cucumber JSON API Steps
=======================

[![Build Status](https://travis-ci.org/gonzalo-bulnes/cucumber_json_api_steps.png?branch=v1.2.0)](https://travis-ci.org/gonzalo-bulnes/cucumber_json_api_steps)
[![Code Climate](https://codeclimate.com/github/gonzalo-bulnes/cucumber_json_api_steps.png)](https://codeclimate.com/github/gonzalo-bulnes/cucumber_json_api_steps)

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

**Note**: This usage section acts as a roadmap for development following the [README-driven development][rdd] principles. Not everything that is described here will be available at any moment, however, I'll try to keep things clear in comments.

  [rdd]: http://tom.preston-werner.com/2010/08/23/readme-driven-development.html

Once installed, you can include the JSON API [steps](#steps) in your features definitions or use the [built-in generators](#generators) to create common features.

Steps
-----

### Base Steps
_Milestone: v1.0.0_

### Scaffolded Resource Steps
_Milestone: v1.0.0_

### Associations Steps
_Milestone: undefined_

### JSON API Steps
_Milestone: undefined_

**Note**: I'm not sure yet that these will be a distinct set of steps, or if all steps will be JSON-API-compliant, however, I think it could be a good thing to keep both concerns separated so you can first build your API and then ensure it complies with the [JSON API][json-api] standard. That would help to refactor existing API to implement the standard.

These steps allow you to ensure the API follows the [JSON API][json-api] standard, which makes it compatible out-of-the-box with clients that follow this standard ([Ember.js][ember] with a `DS.ActiveModelAdapter` from [Ember Data][ember-getting-started] for example).

  [ember]: http://emberjs.com
  [ember-getting-started]: http://emberjs.com/guides/getting-started/

Generators
----------
_Milestone: undefined_

Documentation
-------------

### Executable documentation

The Cucumber scenarii describe how to setup demonstration applications for different use cases. While you can read the `rake` output, you may prefer to read it in HTML format:

```bash
cd cucumber_json_api_steps
rake features_html # generate the features documentation

# Open doc/features.html in your preferred web browser.
```

### Changelog

Releases are commented to provide a brief [changelog][changelog].

  [changelog]: https://github.com/gonzalo-bulnes/cucumber_json_api_steps/releases

Credits
-------

This gem wouldn't exist without the [Anthony Eden][aeden] [API steps][aeden-steps] and [inspiring talk](http://vimeo.com/30586709). Thanks!

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
