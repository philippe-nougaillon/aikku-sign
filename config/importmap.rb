# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "stimulus-timeago", to: "https://ga.jspm.io/npm:stimulus-timeago@4.1.0/dist/stimulus-timeago.mjs"
pin "@babel/runtime/helpers/esm/assertThisInitialized", to: "https://ga.jspm.io/npm:@babel/runtime@7.23.9/helpers/esm/assertThisInitialized.js"
pin "@babel/runtime/helpers/esm/classCallCheck", to: "https://ga.jspm.io/npm:@babel/runtime@7.23.9/helpers/esm/classCallCheck.js"
pin "@babel/runtime/helpers/esm/createClass", to: "https://ga.jspm.io/npm:@babel/runtime@7.23.9/helpers/esm/createClass.js"
pin "@babel/runtime/helpers/esm/createForOfIteratorHelper", to: "https://ga.jspm.io/npm:@babel/runtime@7.23.9/helpers/esm/createForOfIteratorHelper.js"
pin "@babel/runtime/helpers/esm/createSuper", to: "https://ga.jspm.io/npm:@babel/runtime@7.23.9/helpers/esm/createSuper.js"
pin "@babel/runtime/helpers/esm/defineProperty", to: "https://ga.jspm.io/npm:@babel/runtime@7.23.9/helpers/esm/defineProperty.js"
pin "@babel/runtime/helpers/esm/inherits", to: "https://ga.jspm.io/npm:@babel/runtime@7.23.9/helpers/esm/inherits.js"
pin "@babel/runtime/helpers/esm/typeof", to: "https://ga.jspm.io/npm:@babel/runtime@7.23.9/helpers/esm/typeof.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "stimulus-notification" # @2.2.0
pin "hotkeys-js" # @3.13.7
pin "stimulus-use" # @0.51.3
pin_all_from "app/javascript/custom", under: "custom"
pin "date-fns/locale", to: "https://ga.jspm.io/npm:date-fns@4.1.0/locale.js"
pin "date-fns", to: "https://ga.jspm.io/npm:date-fns@4.1.0/index.js"
