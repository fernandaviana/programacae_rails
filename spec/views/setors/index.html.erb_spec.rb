require 'spec_helper'

describe "setors/index" do
  before(:each) do
    assign(:setors, [
      stub_model(Setor,
        :nomesetor => "Nomesetor",
        :coordenador => "Coordenador",
        :totalsetor => 1,
        :emailsetor => "Emailsetor",
        :ramal => "Ramal"
      ),
      stub_model(Setor,
        :nomesetor => "Nomesetor",
        :coordenador => "Coordenador",
        :totalsetor => 1,
        :emailsetor => "Emailsetor",
        :ramal => "Ramal"
      )
    ])
  end

  it "renders a list of setors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomesetor".to_s, :count => 2
    assert_select "tr>td", :text => "Coordenador".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Emailsetor".to_s, :count => 2
    assert_select "tr>td", :text => "Ramal".to_s, :count => 2
  end
end
