# About Alchemists PH

[![Build Status](https://travis-ci.org/Alchemists-PH/Website.svg?branch=travis-config)](https://travis-ci.org/Alchemists-PH/Website/builds)

Alchemists PH is a non-profit organization made up of Elixir and Erlang enthusiasts whose goal is to contribute to the growth of its local community.

> Want to learn more? See our [wiki](https://github.com/Alchemists-PH/Website/wiki).

## Contributing

Help us build a better community! We encourage everyone to contribute to this repository if something is missing or needs improvement. Contribute by helping us tackle issues, submit PRs and discuss ideas.

### Getting Started

To run this on your local machine, clone this repository:

```
$ git clone https://github.com/Alchemists-PH/Website.git
$ cd website
```

### Setup

> Note: Language versions are maintained in the [.tool-versions](https://github.com/Alchemists-PH/Website/blob/master/.tool-versions) file.

1. Install [asdf](https://github.com/HashNuke/asdf) for language version
   management.
2. Rename `config/database.exs.sample` to `config/database.exs` and replace the username and password with your local PostgreSQL credentials for all development configurations.
3. Building Phoenix:

```
$ mix deps.get
$ mix ecto.create && mix ecto.migrate
$ npm install
```

After you're done with the setup. You may do the following:

* Start Phoenix endpoint with `mix phoenix.server`
* Visit [`localhost:4000`](http://localhost:4000) and you're good to go!

## Join us!

* [Facebook](https://www.facebook.com/groups/peeug)
* [Twitter](https://twitter.com/alchemistsph)
* [#elixir](https://phackers.slack.com/messages/elixir) on [Phackers Slack](http://phackers.io)
