# Tumbleweed Draws Site

Rails 5 app for Shye's web site. Hosted at [tumbleweed-draws.com](http://tumbleweed-draws.com).

Login to enable the admin functions at [tumbleweed-draws.herokuapp.com/login](https://tumbleweed-draws.herokuapp.com/login).

## Developing

Develop with Postgres locally; recommend using [Postgres](https://postgresapp.com) app. Becareful when running `bundle install` since the `pg` gem will fail. Use:

```
gem install pg -- --with-pg-config=/Applications/Postgres.app/Contents/Versions/9.5/bin/pg_config
```

Use `rbenv` to install and manage Rubies.
