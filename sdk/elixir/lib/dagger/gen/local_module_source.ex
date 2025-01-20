# This file generated by `dagger_codegen`. Please DO NOT EDIT.
defmodule Dagger.LocalModuleSource do
  @moduledoc "Module source that that originates from a path locally relative to an arbitrary directory."

  alias Dagger.Core.Client
  alias Dagger.Core.QueryBuilder, as: QB

  @derive Dagger.ID

  defstruct [:query_builder, :client]

  @type t() :: %__MODULE__{}

  @doc "The directory containing everything needed to load load and use the module."
  @spec context_directory(t()) :: Dagger.Directory.t() | nil
  def context_directory(%__MODULE__{} = local_module_source) do
    query_builder =
      local_module_source.query_builder |> QB.select("contextDirectory")

    %Dagger.Directory{
      query_builder: query_builder,
      client: local_module_source.client
    }
  end

  @doc "A unique identifier for this LocalModuleSource."
  @spec id(t()) :: {:ok, Dagger.LocalModuleSourceID.t()} | {:error, term()}
  def id(%__MODULE__{} = local_module_source) do
    query_builder =
      local_module_source.query_builder |> QB.select("id")

    Client.execute(local_module_source.client, query_builder)
  end

  @doc "The relative path to the module root from the host directory"
  @spec rel_host_path(t()) :: {:ok, String.t()} | {:error, term()}
  def rel_host_path(%__MODULE__{} = local_module_source) do
    query_builder =
      local_module_source.query_builder |> QB.select("relHostPath")

    Client.execute(local_module_source.client, query_builder)
  end

  @doc "The path to the root of the module source under the context directory. This directory contains its configuration file. It also contains its source code (possibly as a subdirectory)."
  @spec root_subpath(t()) :: {:ok, String.t()} | {:error, term()}
  def root_subpath(%__MODULE__{} = local_module_source) do
    query_builder =
      local_module_source.query_builder |> QB.select("rootSubpath")

    Client.execute(local_module_source.client, query_builder)
  end
end
