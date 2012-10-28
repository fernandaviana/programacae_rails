require 'spec_helper'

describe "requisicaos/index" do
  before(:each) do
    assign(:requisicaos, [
      stub_model(Requisicao,
        :datarequisicao => "Datarequisicao",
        :quantidadebolsista => 1,
        :horariobolsista => "Horariobolsista",
        :assunto => "Assunto",
        :nomedebolsista => "Nomedebolsista",
        :setor => nil
      ),
      stub_model(Requisicao,
        :datarequisicao => "Datarequisicao",
        :quantidadebolsista => 1,
        :horariobolsista => "Horariobolsista",
        :assunto => "Assunto",
        :nomedebolsista => "Nomedebolsista",
        :setor => nil
      )
    ])
  end

  it "renders a list of requisicaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Datarequisicao".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Horariobolsista".to_s, :count => 2
    assert_select "tr>td", :text => "Assunto".to_s, :count => 2
    assert_select "tr>td", :text => "Nomedebolsista".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
