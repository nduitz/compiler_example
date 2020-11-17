defmodule CompilerExample do
  @moduledoc """
  Documentation for `CompilerExample`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> CompilerExample.hello()
      :world

  """
  require Identification

  def hello do
    queried = query_foo() |> CompilerExample.Repo.one!()

    baz = queried.other_field
    IO.inspect(baz)

    # removing line 25 or 25-28 or Identification.from/2 call will resolve compiler issue
    with(
      true <- is_nil(queried.foo.bar),
      update_arguments = %{
        foo: queried.foo
      }
    ) do
      IO.inspect(update_arguments)
      IO.inspect(queried)
      %{foo: %{other_id: _other_id} = foo} = queried
      Identification.from(foo, Other)
    end
  end

  defp query_foo() do
    import Ecto.Query

    from(f in Foo)
    |> select([f], %{
      foo: f
      # other: :other_field
    })
  end
end
