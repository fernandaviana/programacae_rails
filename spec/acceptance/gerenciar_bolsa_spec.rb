# coding: utf-8

 require 'spec_helper'

 feature 'gerenciar bolsao' do

 scenario 'incluir bolsao' do #, :javascript => true  do

  setor = FactoryGirl.create(:setor, :nomesetor => 'cae')
  
  bolsistao = FactoryGirl.create(:bolsistao, :nomebolsista => 'Carlos Wagner')

    visit new_bolsao_path
 
    preencher_e_verificar_bolsao

  end

  
   scenario 'alterar bolsao' do #, :javascript => true  do

    setor = FactoryGirl.create(:setor, :nomesetor => 'cae')
    
     bolsistao = FactoryGirl.create(:bolsistao, :nomebolsista => 'Carlos Wagner')

     bolsao = FactoryGirl.create(:bolsao,:nomebolsista => bolsistao)

     visit edit_bolsao_path(bolsao)
     
      preencher_e_verificar_bolsao

 	

end

 	

 scenario 'excluir bolsao' do #, :javascript => true  do
	

  setor = FactoryGirl.create(:setor, :nomesetor => 'cae')

   bolsistao = FactoryGirl.create(:bolsistao, :nomebolsista => 'Carlos Wagner')
 
   bolsao = FactoryGirl.create(:bolsao,:bolsistao => bolsistao)

   visit bolsaos_path

   click_link 'Excluir'
	

 end


  def preencher_e_verificar_requisicao

     
     fill_in 'Datarequisicao', :with => "15/04/12"
     fill_in 'Quantidadebolsista', :with => 5
     fill_in 'Horariobolsista', :with => "14:00"
     fill_in 'Assunto', :with => "Disposição de bolsista"
     fill_in 'Nomedebolsista', :with => "Carlos Wagner"


     select 'cae', :on => 'setor'

     select 'Carlos Wagner', :on => 'bolsistao'
 
     click_button 'Salvar'

    
    page.should have_content 'Datarequisicao: 15/04/12'
    page.should have_content 'Quantidadebolsista: 5'
    page.should have_content 'Horariobolsista: 14:00'
    page.should have_content 'Assunto: Disposição de bolsista'
    page.should have_content 'Nomedebolsista: Carlos Wagner'
    page.should have_content 'setor: cae'


  end

end
