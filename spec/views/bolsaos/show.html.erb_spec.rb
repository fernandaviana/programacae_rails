require 'spec_helper'

describe "bolsaos/show" do
  before(:each) do
    @bolsao = assign(:bolsao, stub_model(Bolsao,
      :dataentrada => "Dataentrada",
      :horarioatuacao => "Horarioatuacao",
      :datasaida => "Datasaida",
      :campo => "Campo",
      :motivo => "Motivo",
      :bolsadicional => "Bolsadicional",
      :bolsistao => nil,
      :setor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dataentrada/)
    rendered.should match(/Horarioatuacao/)
    rendered.should match(/Datasaida/)
    rendered.should match(/Campo/)
    rendered.should match(/Motivo/)
    rendered.should match(/Bolsadicional/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
