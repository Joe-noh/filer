defmodule Filer.Repo.Migrations.CreateArticle do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :title, :string
      add :content, :text

      timestamps()
    end

    create unique_index(:articles, [:title], name: "articles_title_index")
  end
end
