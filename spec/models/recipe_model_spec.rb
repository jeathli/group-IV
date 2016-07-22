require 'spec_helper'
require 'rails_helper'
require_relative '../../app/models/recipe'

RSpec.describe Recipe do
  context "with valid params" do
    let(:valid_params) { { name: 'tomato_soup', description: 'asfsafsadf' } }

    it "return no error" do
      expect(Recipe.new(valid_params)).to be_valid
    end
  end

  context "with invalid params"
   it "return error" do
    expect(Recipe.new(name: nil, description: 'sdfs')).to_not be_valid
    expect(Recipe.new(name: 'fsd', description: nil)).to_not be_valid
  end
end