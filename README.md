# README

# Authentication and Sign-Up Module

This is the Authentication and Sign-Up module for TAMU 629 Self Evaluation System
by Muhammad Emad-ud-din and Xien Thomas

The deployed app can be accessed at
https://dry-wildwood-38631.herokuapp.com/

## License

All source code in the application is open-source.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```