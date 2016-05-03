feature 'gerenciar Pedido' do

  before(:each) do
    @cliente = create(:cliente, nome: "Rafaela")
  end


  let(:dados) do {

    pedido: "001",
    data: "25/04",
    situacao: "preparando",
    cliente: "Rafaela"
   }
  end

  scenario 'incluir produto' do #, :js => true  do
    visit new_produto_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)

  end

  scenario 'alterar produto' do #, :js => true  do

    produto = FactoryGirl.create(:produto, cliente: @cliente )

    visit edit_produto_path(produto)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'excluir produto' do #, :js => true  do

    produto = FactoryGirl.create(:produto, cliente: @cliente)
    visit produtos_path    
    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Pedido',  with: dados[:pedido]
    fill_in 'Data',  with: dados[:data]
    fill_in 'Situação', with: dados[:situacao]
    select dados[:cliente], from: "Cliente"
    

  end

  def verificar(dados)

    page.should have_content "Pedido: #{dados[:pedido]}"
    page.should have_content "Data: #{dados[:data]}"
    page.should have_content "Situação: #{dados[:situacao]}"
    page.should have_content "Cliente: #{dados[:cliente]}"

  end

end
