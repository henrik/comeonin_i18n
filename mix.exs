defmodule Mix.Tasks.Compile.ComeoninI18n do
  @shortdoc "Compiles Comeonin internationalization module"

  def run(_) do
    File.mkdir("priv")
    File.cp_r("po", "priv/gettext")
  end
end

defmodule ComeoninI18n.Mixfile do
  use Mix.Project

  def project do
    [app: :comeonin_i18n,
     version: "0.1.0",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     compilers: [:comeonin_i18n, :gettext] ++ Mix.compilers,
     deps: deps]
  end

  def application do
    [applications: [:gettext, :logger]]
  end

  defp deps do
    [{:gettext, "~> 0.7"}]
  end
end
