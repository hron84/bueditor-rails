# bueditor-rails

BUeditor integration for Rails

## Installation

Put this into `Gemfile`:

```
gem 'bueditor-rails', :require => 'bueditor/engine'
```

## Usage

First, require bueditor in `application.css`:

```css
/*
 *= require 'bueditor'
 */
```

And in `application.js`:

```javascript
//= require bueditor
```


Mark all textarea with `editor-textarea` class or if you want
configure BUeditor for custom `textarea`, put similar into
your application.js:

```
jQuery(function() {
    $('textarea#bueditor').each(function(ix) {
        BUE.processTextarea(this);
    });
});
```

## Contributing to bueditor-rails
 
 * Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
 * Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
 * Fork the project.
 * Start a feature/bugfix branch.
 * Commit and push until you are happy with your contribution.
 * Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
 * Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014 Garami Gábor. See LICENSE.txt for
further details.

