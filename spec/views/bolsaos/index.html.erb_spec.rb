require 'spec_helper'

describe "bolsaos/index" do
  before(:each) do
    assign(:bolsaos, [
      stub_model(Bolsao,
        :dataentrada => "Dataentrada",
        :horarioatuacao => "Horarioatuacao",
        :datasaida => "Datasaida",
        :campo => "Campo",
        :motivo => "Motivo",
        :bolsadicional => "Bolsadicional",
        :bolsistao => nil,
        :setor => nil
      ),
      stub_model(Bolsao,
        :dataentrada => "Dataentrada",
        :horarioatuacao => "Horarioatuacao",
        :datasaida => "Datasaida",
        :campo => "Campo",
        :motivo => "Motivo",
        :bolsadicional => "Bolsadicional",
        :bolsistao => nil,
        :setor => nil
      )
    ])
  end

  it "renders a list of bolsaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dataentrada".to_s, :count => 2
    assert_select "tr>td", :text => "Horarioatuacao".to_s, :count => 2
    assert_select "tr>td", :text => "Datasaida".to_s, :count => 2
    assert_select "tr>td", :text => "Campo".to_s, :count => 2
    assert_select "tr>td", :text => "Motivo".to_s, :count => 2
    assert_select "tr>td", :text => "Bolsadicional".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
