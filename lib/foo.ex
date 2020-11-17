defmodule Foo do
  use Ecto.Schema

  schema "foo" do
    field(:bar, :string)
    field(:baz, :string)
  end
end
