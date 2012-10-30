# coding: utf-8

 require 'spec_helper'

 feature 'gerenciar requisicao' do

 scenario 'incluir requisicao' do #, :javascript => true  do

  setor = FactoryGirl.create(:setor, :nomesetor => 'cae')

    visit new_requisicao_path
 
    preencher_e_verificar_requisicao

  end

  
   scenario 'alterar requisicao' do #, :javascript => true  do

    setor = FactoryGirl.create(:setor, :nomesetor => 'cae')
    
    requisicao = FactoryGirl.create(:requisicao,:setor => setor)

     visit edit_requisicao_path(requisicao)
     
      preencher_e_verificar_requisicao

 	

end

 	

 scenario 'excluir requisicao' do #, :javascript => true  do
	

  setor = FactoryGirl.create(:setor, :nomesetor => 'cae')
 
   requisicao = FactoryGirl.create(:requisicao,:setor => setor)

   visit requisicaos_path

   click_link 'Excluir'
	

 end


  def preencher_e_verificar_requisicao

     
     fill_in 'Datarequisicao', :with => "15/04/12"
     fill_in 'Quantidadebolsista', :with => 5
     fill_in 'Horariobolsista', :with => "14:00"
     fill_in 'Assunto', :with => "Disposição de bolsista"
     fill_in 'Nomedebolsista', :with => "Carlos Wagner"


     select 'cae', :on => 'setor'
 
     click_button 'Salvar'

    
    page.should have_content 'Datarequisicao: 15/04/12'
    page.should have_content 'Quantidadebolsista: 5'
    page.should have_content 'Horariobolsista: 14:00'
    page.should have_content 'Assunto: Disposição de bolsista'
    page.should have_content 'Nomedebolsista: Carlos Wagner'
    page.should have_content 'setor: cae'


  end

end
