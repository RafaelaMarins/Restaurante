feature 'gerenciar Entrega' do

  before(:each) do
    @entrega = create(:entrega)
  end


  let(:dados) do {

    data: "2016-05-04",
    situacao: "caminho",
    cliente: "Rafaela"
   }
  end

  scenario 'incluir entrega' do #, :js => true  do
    visit new_entregar_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar entrega' do #, :js => true  do

    entrega = FactoryGirl.create(:entrega )

    visit edit_entrega_path(entrega)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir entrega' do #, :js => true  do

    entrega = FactoryGirl.create(:entrega)
    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Situação', with: dados[:situacao]
    select dados[:cliente], from: "Cliente"
    

  end

  def verificar(dados)

    page.should have_content "Situação: #{dados[:situacao]}"
    page.should have_content "Cliente: #{dados[:cliente]}"

  end

end