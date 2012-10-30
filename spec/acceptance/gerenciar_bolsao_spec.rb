# coding: utf-8

 require 'spec_helper'

 feature 'gerenciar bolsao' do

 scenario 'incluir bolsao' do #, :javascript => true  do

  setor = FactoryGirl.create(:setor, :nomesetor => 'cae')
  
  bolsistao = FactoryGirl.create(:bolsistao, :nomebolsista => 'Carlos')

    visit new_bolsao_path
 
    preencher_e_verificar_bolsao

  end

  
   scenario 'alterar bolsao' do #, :javascript => true  do

    setor = FactoryGirl.create(:setor, :nomesetor => 'cae')
    
     bolsistao = FactoryGirl.create(:bolsistao, :nomebolsista => 'Carlos')

     bolsao = FactoryGirl.create(:bolsao, :setor => setor, :bolsistao => bolsistao)

     visit edit_bolsao_path(bolsao)
     
      preencher_e_verificar_bolsao

 	

end

 	

 scenario 'excluir bolsao' do #, :javascript => true  do
	

  setor = FactoryGirl.create(:setor, :nomesetor => 'cae')

   bolsistao = FactoryGirl.create(:bolsistao, :nomebolsista => 'Carlos')
 
   bolsao = FactoryGirl.create(:bolsao,:setor => setor, :bolsistao => bolsistao)   

     visit bolsaos_path

      click_link 'Excluir'
	

 end


  def preencher_e_verificar_bolsao

     
     fill_in 'DataEntrada', :with => "15/04/11"
     fill_in 'HorarioAtuação', :with => "14:00 às 17:00"
     fill_in 'DataSaida', :with => "22/07/12"
     fill_in 'Campo', :with => "Reitoria"
     fill_in 'Motivo', :with => "Inicio de estágio"
     fill_in 'Bolsadicional', :with => "Moradia"

     select 'cae', :on => 'setor'

     select 'Carlos', :on => 'bolsistao'
 
     click_button 'Salvar'

    
    page.should have_content 'DataEntrada: 15/04/11'
    page.should have_content 'HorarioAtuação: 14:00 às 17:00'
    page.should have_content 'DataSaida: 22/07/12'
    page.should have_content 'Campo: Reitoria'
    page.should have_content 'Motivo: Inicio de estágio'
    page.should have_content 'Bolsadicional: Moradia'   


    page.should have_content 'setor: cae'
    page.should have_content 'Bolsista: Carlos'

  end

end
