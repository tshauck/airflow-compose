# Airflow Compose

> A small repo that creates the small infrastructure to run [airflow][1].

This repo is designed to get the necessary components of [airflow][1] installed
and talking to each other.  The compose file and the `airflow` directory do a
few things:

1. Build an image that has airflow and its dependencies.
2. Setup a redis image for airflow to use as its message broker.
3. Setup a postgres image for airflow to use as its backend database.

The [`docker-compose`][2] documentation will serve you well, but in short to get
this running:

1. Build the set of images via: `docker-compose build`
2. Run the containers via: `docker-compose up`

You should then be able to go `<docker-ip>:8080` and see the airflow UI.

__Warning__

This is a simple way to get airflow up and play with it, and because of that,
the tooling has not been put in place to persist the data. I.e. if you rebuild
the images you will lose your data.  If you'd like to use this in production
it would be behoove of you to setup a dedicated database... the good news is, if
you're looking for workflow management tools, you likely already have.

[1]: https://github.com/airbnb/airflow
