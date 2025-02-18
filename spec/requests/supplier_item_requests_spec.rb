require 'rails_helper'

RSpec.describe "SupplierItemRequests", type: :request do
  include_examples('request_shared_spec', 'supplier_item_requests', 11)
  let(:valid_attributes) do
    {
      item_code:  "MyString" ,
      item_description:  "MyString" ,
      dimensions:  "MyString" ,
      price_per_pc:  "MyString" ,
      base_unit:  "MyString" ,
      target_unit:  "MyString" ,
      supplier_document_id: create(:supplier_document).id
    }
  end

  let(:invalid_attributes) do
    {
      item_code: nil,
      item_description: "MyString",
      dimensions: "MyString" ,
      price_per_pc: "MyString" ,
      base_unit: "MyString" ,
      target_unit: "MyString" ,
      supplier_document_id:create(:supplier_document).id,
    }
  end

  let(:new_attributes) do
    {
      item_code: Faker::Code.npi,
    }
  end
end
