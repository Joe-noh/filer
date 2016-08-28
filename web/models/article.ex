defmodule Filer.Article do
  use Filer.Web, :model

  schema "articles" do
    field :title, :string
    field :content, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :content])
    |> validate_required([:title, :content])
    |> unique_constraint(:title, name: "articles_title_index")
  end
end
