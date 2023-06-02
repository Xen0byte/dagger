# This file generated by `mix dagger.gen`. Please DO NOT EDIT.
defmodule Dagger.EnvVariable do
  @moduledoc "A simple key value object that represents an environment variable."
  use Dagger.QueryBuilder
  @type t() :: %__MODULE__{}
  defstruct [:selection, :client]

  (
    @doc "The environment variable name."
    @spec name(t()) :: String.t()
    def name(%__MODULE__{} = env_variable) do
      selection = select(env_variable.selection, "name")
      execute(selection, env_variable.client)
    end
  )

  (
    @doc "The environment variable value."
    @spec value(t()) :: String.t()
    def value(%__MODULE__{} = env_variable) do
      selection = select(env_variable.selection, "value")
      execute(selection, env_variable.client)
    end
  )
end