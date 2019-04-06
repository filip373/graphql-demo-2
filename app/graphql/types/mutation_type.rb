module Types
  class MutationType < Types::BaseObject
    field :create_author, mutation: Mutations::CreateAuthor
    field :update_author, mutation: Mutations::UpdateAuthor
    field :delete_author, mutation: Mutations::DeleteAuthor

    ## TODO: remove me
    #field :test_field, String, null: false,
      #description: "An example field added by the generator"
    #def test_field
      #"Hello World"
    #end
  end
end
