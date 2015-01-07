VagrantでのRails開発環境構築
==================

Within a virtual environment using the Vagrant, is building a repository environment to develop Ruby on Rails.

## Usage

```
$ git clone git@github.com:zaru/vagrant-rails-chef.git
$ cd vagrant-rails-chef
$ bundle install --path vendor/bundler
$ bundle exec berks vendor cookbooks
$ vagrant up
```

```
$ vagrant ssh
```

```
$ cd /vagrant
$ mkdir rails
$ cd rails
$ bundle init
$ vi Gemfile
```

```                                                                                
source "https://rubygems.org"

gem "rails"
```

```
# Nokogiriでコケる場合
$ bundle config build.nokogiri --use-system-libraries

$ bundle install --path vendor/bundle
$ bundle exec rails new sample -d mysql --skip-bundle
$ cd sample
$ bundle install --path vendor/bundle
$ bundle exec rails s
```

## MySQL

- mysql-pkg/recipes/default.rb
