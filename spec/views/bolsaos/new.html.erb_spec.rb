require 'spec_helper'

describe "bolsaos/new" do
  before(:each) do
    assign(:bolsao, stub_model(Bolsao,
      :dataentrada => "MyString",
      :horarioatuacao => "MyString",
      :datasaida => "MyString",
      :campo => "MyString",
      :motivo => "MyString",
      :bolsadicional => "MyString",
      :bolsistao => nil,
      :setor => nil
    ).as_new_record)
  end

  it "renders new bolsao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bolsaos_path, :method => "post" do
      assert_select "input#bolsao_dataentrada", :name => "bolsao[dataentrada]"
      assert_select "input#bolsao_horarioatuacao", :name => "bolsao[horarioatuacao]"
      assert_select "input#bolsao_datasaida", :name => "bolsao[datasaida]"
      assert_select "input#bolsao_campo", :name => "bolsao[campo]"
      assert_select "input#bolsao_motivo", :name => "bolsao[motivo]"
      assert_select "input#bolsao_bolsadicional", :name => "bolsao[bolsadicional]"
      assert_select "input#bolsao_bolsistao", :name => "bolsao[bolsistao]"
      assert_select "input#bolsao_setor", :name => "bolsao[setor]"
    end
  end
end
