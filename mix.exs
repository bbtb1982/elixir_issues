defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [ app:      :issues,
      version:  "0.0.1",
      elixir:   "~> 1.2",
      escript:  escript_config,
      deps: deps ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [ 
      applications: [ :logger, :httpoison, :jsx ]
    ]
  end

  defp deps do
    [
      { :httpoison, "~> 0.8.0" },
      { :jsx,       "~> 2.8.0" }
    ]
  end

  defp escript_config do
    [ main_module: Issues.CLI ]
  end
end
