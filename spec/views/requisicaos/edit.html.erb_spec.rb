require 'spec_helper'

describe "requisicaos/edit" do
  before(:each) do
    @requisicao = assign(:requisicao, stub_model(Requisicao,
      :datarequisicao => "MyString",
      :quantidadebolsista => 1,
      :horariobolsista => "MyString",
      :assunto => "MyString",
      :nomedebolsista => "MyString",
      :setor => nil
    ))
  end

  it "renders the edit requisicao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requisicaos_path(@requisicao), :method => "post" do
      assert_select "input#requisicao_datarequisicao", :name => "requisicao[datarequisicao]"
      assert_select "input#requisicao_quantidadebolsista", :name => "requisicao[quantidadebolsista]"
      assert_select "input#requisicao_horariobolsista", :name => "requisicao[horariobolsista]"
      assert_select "input#requisicao_assunto", :name => "requisicao[assunto]"
      assert_select "input#requisicao_nomedebolsista", :name => "requisicao[nomedebolsista]"
      assert_select "input#requisicao_setor", :name => "requisicao[setor]"
    end
  end
end
