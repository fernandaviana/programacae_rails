require 'spec_helper'

describe "setors/edit" do
  before(:each) do
    @setor = assign(:setor, stub_model(Setor,
      :nomesetor => "MyString",
      :coordenador => "MyString",
      :totalsetor => 1,
      :emailsetor => "MyString",
      :ramal => "MyString"
    ))
  end

  it "renders the edit setor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => setors_path(@setor), :method => "post" do
      assert_select "input#setor_nomesetor", :name => "setor[nomesetor]"
      assert_select "input#setor_coordenador", :name => "setor[coordenador]"
      assert_select "input#setor_totalsetor", :name => "setor[totalsetor]"
      assert_select "input#setor_emailsetor", :name => "setor[emailsetor]"
      assert_select "input#setor_ramal", :name => "setor[ramal]"
    end
  end
end
