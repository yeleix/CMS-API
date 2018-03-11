class ContractorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :born_on, :gender, :hire_date
  belongs_to :user
end
