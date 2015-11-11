defmodule ComeoninI18n.Mixfile do
  use Mix.Project

  @description """
  Internationalization support for the Comeonin password hashing library.
  """

  def project do
    [app: :comeonin_i18n,
     version: "0.1.3",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     name: "ComeoninI18n",
     description: @description,
     package: package,
     source_url: "https://github.com/riverrun/comeonin_i18n",
     compilers: [:gettext] ++ Mix.compilers,
     deps: deps]
  end

  def application do
    [applications: [:gettext, :logger]]
  end

  defp deps do
    [{:gettext, "~> 0.7"}]
  end

  defp package do
    [
      maintainers: ["David Whitlock"],
      licenses: ["BSD"],
      links: %{"GitHub" => "https://github.com/elixircnx/comeonin_i18n",
        "Docs" => "http://hexdocs.pm/comeonin_i18n"}
    ]
  end
end
