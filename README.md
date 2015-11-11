## ComeoninI18n

Internationalization support for the `Comeonin` password hashing library.

### Installation

The package can be installed as:

  1. Add comeonin_i18n and comeonin to your list of dependencies in `mix.exs`:

        def deps do
          [{:comeonin_i18n, "~> 0.1"},
          {:comeonin, "~> 1.5"]
        end

  2. Ensure comeonin_i18n and comeonin are started before your application:

        def application do
          [applications: [:comeonin_i18n, :comeonin]]
        end

### Contributions

If a language you know is not supported, please send us a pull request with
a translation and a simple test.

Example translations can be found in the `priv/gettext/en/LC_MESSAGES` directories
(`en` refers to the locale).

Also, add a simple test to the `test/comeonin_i18n_test.exs` file. You only need to
test one of the phrases.

### License

BSD.
