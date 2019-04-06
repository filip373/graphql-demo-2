module Types
  class QueryType < Types::BaseObject
    description "root query"

    field :authors, [AuthorType], null: true do
      description "gets all authors"
    end

    field :author, AuthorType, null: true do
      description "Find a author by id"
      argument :id, ID, required: true
    end

    field :books, [BookType], null: true do
      description "Get all Books"
    end

    field :book, BookType, null: true do
      description "Find a book by id"
      argument :id, ID, required: true
    end

    def authors
      Author.all
    end

    def author(id:)
      Author.find(id)
    end

    def books
      Book.all
    end

    def book(id:)
      Book.find(id)
    end

    ## Add root-level fields here.
    ## They will be entry points for queries on your schema.

    ## TODO: remove me
    #field :test_field, String, null: false,
      #description: "An example field added by the generator"
    #def test_field
      #"Hello World!"
    #end
  end
end
