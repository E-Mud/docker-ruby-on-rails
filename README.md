# docker-ruby-on-rails

This is a very basic base image for Rails applications.

It can also be used as a dockerized rails cli. For example by running:

```
docker run --rm -w /app --v $PWD:/app emud/ruby-on-rails rails new MyApp
```
 If you're gonna do that frequently, consider creating an alias for it.


## Node version

For installing node the image uses [nvm](https://github.com/creationix/nvm). It installs the current LTS (6.11.0 at the moment of writing).

Releasing alternate versions with other node versions is not discarded. Please fill an issue if you want to request it.


## Alpine

The image uses the "standard" version of Ruby 2.4 image. Releasing alternate alpine versions is not discarded. Please fill an issue if you want to request it.
