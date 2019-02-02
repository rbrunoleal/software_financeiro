Usuario.destroy_all
Usuario.create!(email: 'admin@admin.com', password: 'admin123', password_confirmation: 'admin123') if Rails.env.development?
p "Usuarios Criados!"

Banco.destroy_all
Banco.create!(:codigo => '001',:descricao => 'Banco do Brasil S.A.')
Banco.create!(:codigo => '341',:descricao => 'Banco Itaú S.A.')
Banco.create!(:codigo => '033',:descricao => 'Banco Santander (Brasil) S.A.')
Banco.create!(:codigo => '356',:descricao => 'Banco Real S.A.')
Banco.create!(:codigo => '652',:descricao => 'Itaú Unibanco Holding S.A.')
Banco.create!(:codigo => '237',:descricao => 'Banco Bradesco S.A.')
Banco.create!(:codigo => '745',:descricao => 'Banco Citibank S.A.')
Banco.create!(:codigo => '399',:descricao => 'HSBC Bank Brasil S.A. – Banco Múltiplo')
Banco.create!(:codigo => '104',:descricao => 'Caixa Econômica Federal')
Banco.create!(:codigo => '389',:descricao => 'Banco Mercantil do Brasil S.A.')
Banco.create!(:codigo => '453',:descricao => 'Banco Rural S.A.')
Banco.create!(:codigo => '422',:descricao => 'Banco Safra S.A.')
Banco.create!(:codigo => '633',:descricao => 'Banco Rendimento S.A.')
p "Bancos Criados!"

Cargo.destroy_all
Cargo.create!(:descricao => 'Advogado')
p "Cargo Criados!"

Unidade.destroy_all
Unidade.create!(:nome => 'Brasil')
u = Unidade.find_by(nome: 'Brasil')
p "País #{u.nome} Criado!"

Estado.destroy_all
Cidade.destroy_all

Estado.create!(:unidade => u, :sigla => 'AC', :nome => "Acre")
e = Estado.find_by(nome: 'Acre')

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Acrelândia")
Cidade.create!(:estado => e, :nome => "Assis Brasil")
Cidade.create!(:estado => e, :nome => "Brasiléia")
Cidade.create!(:estado => e, :nome => "Bujari")
Cidade.create!(:estado => e, :nome => "Capixaba")
Cidade.create!(:estado => e, :nome => "Cruzeiro do Sul")
Cidade.create!(:estado => e, :nome => "Epitaciolândia")
Cidade.create!(:estado => e, :nome => "Feijó")
Cidade.create!(:estado => e, :nome => "Jordão")
Cidade.create!(:estado => e, :nome => "Manoel Urbano")
Cidade.create!(:estado => e, :nome => "Marechal Thaumaturgo")
Cidade.create!(:estado => e, :nome => "Mâncio Lima")
Cidade.create!(:estado => e, :nome => "Plácido de Castro")
Cidade.create!(:estado => e, :nome => "Porto Acre")
Cidade.create!(:estado => e, :nome => "Porto Walter")
Cidade.create!(:estado => e, :nome => "Rio Branco")
Cidade.create!(:estado => e, :nome => "Rodrigues Alves")
Cidade.create!(:estado => e, :nome => "Santa Rosa do Purus")
Cidade.create!(:estado => e, :nome => "Sena Madureira")
Cidade.create!(:estado => e, :nome => "Senador Guiomard")
Cidade.create!(:estado => e, :nome => "Tarauacá")
Cidade.create!(:estado => e, :nome => "Xapuri")

Estado.create!(:unidade => u, :sigla => 'AL', :nome => "Alagoas")
e = Estado.find_by(nome: "Alagoas")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Água Branca")
Cidade.create!(:estado => e, :nome => "Anadia")
Cidade.create!(:estado => e, :nome => "Arapiraca")
Cidade.create!(:estado => e, :nome => "Atalaia")
Cidade.create!(:estado => e, :nome => "Barra de Santo Antônio")
Cidade.create!(:estado => e, :nome => "Barra de São Miguel")
Cidade.create!(:estado => e, :nome => "Batalha")
Cidade.create!(:estado => e, :nome => "Belo Monte")
Cidade.create!(:estado => e, :nome => "Belém")
Cidade.create!(:estado => e, :nome => "Boca da Mata")
Cidade.create!(:estado => e, :nome => "Branquinha")
Cidade.create!(:estado => e, :nome => "Cacimbinhas")
Cidade.create!(:estado => e, :nome => "Cajueiro")
Cidade.create!(:estado => e, :nome => "Campestre")
Cidade.create!(:estado => e, :nome => "Campo Alegre")
Cidade.create!(:estado => e, :nome => "Campo Grande")
Cidade.create!(:estado => e, :nome => "Canapi")
Cidade.create!(:estado => e, :nome => "Capela")
Cidade.create!(:estado => e, :nome => "Carneiros")
Cidade.create!(:estado => e, :nome => "Chã Preta")
Cidade.create!(:estado => e, :nome => "Coité do Nóia")
Cidade.create!(:estado => e, :nome => "Colônia Leopoldina")
Cidade.create!(:estado => e, :nome => "Coqueiro Seco")
Cidade.create!(:estado => e, :nome => "Coruripe")
Cidade.create!(:estado => e, :nome => "Craíbas")
Cidade.create!(:estado => e, :nome => "Delmiro Gouveia")
Cidade.create!(:estado => e, :nome => "Dois Riachos")
Cidade.create!(:estado => e, :nome => "Estrela de Alagoas")
Cidade.create!(:estado => e, :nome => "Feira Grande")
Cidade.create!(:estado => e, :nome => "Feliz Deserto")
Cidade.create!(:estado => e, :nome => "Flexeiras")
Cidade.create!(:estado => e, :nome => "Girau do Ponciano")
Cidade.create!(:estado => e, :nome => "Ibateguara")
Cidade.create!(:estado => e, :nome => "Igaci")
Cidade.create!(:estado => e, :nome => "Igreja Nova")
Cidade.create!(:estado => e, :nome => "Inhapi")
Cidade.create!(:estado => e, :nome => "Jacaré dos Homens")
Cidade.create!(:estado => e, :nome => "Jacuípe")
Cidade.create!(:estado => e, :nome => "Japaratinga")
Cidade.create!(:estado => e, :nome => "Jaramataia")
Cidade.create!(:estado => e, :nome => "Jequiá da Praia")
Cidade.create!(:estado => e, :nome => "Joaquim Gomes")
Cidade.create!(:estado => e, :nome => "Jundiá")
Cidade.create!(:estado => e, :nome => "Junqueiro")
Cidade.create!(:estado => e, :nome => "Lagoa da Canoa")
Cidade.create!(:estado => e, :nome => "Limoeiro de Anadia")
Cidade.create!(:estado => e, :nome => "Maceió")
Cidade.create!(:estado => e, :nome => "Major Isidoro")
Cidade.create!(:estado => e, :nome => "Mar Vermelho")
Cidade.create!(:estado => e, :nome => "Maragogi")
Cidade.create!(:estado => e, :nome => "Maravilha")
Cidade.create!(:estado => e, :nome => "Marechal Deodoro")
Cidade.create!(:estado => e, :nome => "Maribondo")
Cidade.create!(:estado => e, :nome => "Mata Grande")
Cidade.create!(:estado => e, :nome => "Matriz de Camaragibe")
Cidade.create!(:estado => e, :nome => "Messias")
Cidade.create!(:estado => e, :nome => "Minador do Negrão")
Cidade.create!(:estado => e, :nome => "Monteirópolis")
Cidade.create!(:estado => e, :nome => "Murici")
Cidade.create!(:estado => e, :nome => "Novo Lino")
Cidade.create!(:estado => e, :nome => "Olho dÁgua Grande")
Cidade.create!(:estado => e, :nome => "Olho dÁgua das Flores")
Cidade.create!(:estado => e, :nome => "Olho dÁgua do Casado")
Cidade.create!(:estado => e, :nome => "Olivença")
Cidade.create!(:estado => e, :nome => "Ouro Branco")
Cidade.create!(:estado => e, :nome => "Palestina")
Cidade.create!(:estado => e, :nome => "Palmeira dos Índios")
Cidade.create!(:estado => e, :nome => "Pariconha")
Cidade.create!(:estado => e, :nome => "Paripueira")
Cidade.create!(:estado => e, :nome => "Passo de Camaragibe")
Cidade.create!(:estado => e, :nome => "Paulo Jacinto")
Cidade.create!(:estado => e, :nome => "Penedo")
Cidade.create!(:estado => e, :nome => "Piaçabuçu")
Cidade.create!(:estado => e, :nome => "Pilar")
Cidade.create!(:estado => e, :nome => "Pindoba")
Cidade.create!(:estado => e, :nome => "Piranhas")
Cidade.create!(:estado => e, :nome => "Porto Calvo")
Cidade.create!(:estado => e, :nome => "Porto Real do Colégio")
Cidade.create!(:estado => e, :nome => "Porto de Pedras")
Cidade.create!(:estado => e, :nome => "Poço das Trincheiras")
Cidade.create!(:estado => e, :nome => "Pão de Açúcar")
Cidade.create!(:estado => e, :nome => "Quebrangulo")
Cidade.create!(:estado => e, :nome => "Rio Largo")
Cidade.create!(:estado => e, :nome => "Roteiro")
Cidade.create!(:estado => e, :nome => "Santa Luzia do Norte")
Cidade.create!(:estado => e, :nome => "Santana do Ipanema")
Cidade.create!(:estado => e, :nome => "Santana do Mundaú")
Cidade.create!(:estado => e, :nome => "Satuba")
Cidade.create!(:estado => e, :nome => "Senador Rui Palmeira")
Cidade.create!(:estado => e, :nome => "São Brás")
Cidade.create!(:estado => e, :nome => "São José da Laje")
Cidade.create!(:estado => e, :nome => "São José da Tapera")
Cidade.create!(:estado => e, :nome => "São Luís do Quitunde")
Cidade.create!(:estado => e, :nome => "São Miguel dos Campos")
Cidade.create!(:estado => e, :nome => "São Miguel dos Milagres")
Cidade.create!(:estado => e, :nome => "São Sebastião")
Cidade.create!(:estado => e, :nome => "Tanque dArca")
Cidade.create!(:estado => e, :nome => "Taquarana")
Cidade.create!(:estado => e, :nome => "Teotônio Vilela")
Cidade.create!(:estado => e, :nome => "Traipu")
Cidade.create!(:estado => e, :nome => "União dos Palmares")
Cidade.create!(:estado => e, :nome => "Viçosa")

Estado.create!(:unidade => u, :sigla => 'AM', :nome => "Amazonas")
e = Estado.find_by(nome: "Amazonas")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Alvarães")
Cidade.create!(:estado => e, :nome => "Amaturá")
Cidade.create!(:estado => e, :nome => "Anamã")
Cidade.create!(:estado => e, :nome => "Anori")
Cidade.create!(:estado => e, :nome => "Apuí")
Cidade.create!(:estado => e, :nome => "Atalaia do Norte")
Cidade.create!(:estado => e, :nome => "Autazes")
Cidade.create!(:estado => e, :nome => "Barcelos")
Cidade.create!(:estado => e, :nome => "Barreirinha")
Cidade.create!(:estado => e, :nome => "Benjamin Constant")
Cidade.create!(:estado => e, :nome => "Beruri")
Cidade.create!(:estado => e, :nome => "Boa Vista do Ramos")
Cidade.create!(:estado => e, :nome => "Boca do Acre")
Cidade.create!(:estado => e, :nome => "Borba")
Cidade.create!(:estado => e, :nome => "Caapiranga")
Cidade.create!(:estado => e, :nome => "Canutama")
Cidade.create!(:estado => e, :nome => "Carauari")
Cidade.create!(:estado => e, :nome => "Careiro")
Cidade.create!(:estado => e, :nome => "Careiro da Várzea")
Cidade.create!(:estado => e, :nome => "Coari")
Cidade.create!(:estado => e, :nome => "Codajás")
Cidade.create!(:estado => e, :nome => "Eirunepé")
Cidade.create!(:estado => e, :nome => "Envira")
Cidade.create!(:estado => e, :nome => "Fonte Boa")
Cidade.create!(:estado => e, :nome => "Guajará")
Cidade.create!(:estado => e, :nome => "Humaitá")
Cidade.create!(:estado => e, :nome => "Ipixuna")
Cidade.create!(:estado => e, :nome => "Iranduba")
Cidade.create!(:estado => e, :nome => "Itacoatiara")
Cidade.create!(:estado => e, :nome => "Itamarati")
Cidade.create!(:estado => e, :nome => "Itapiranga")
Cidade.create!(:estado => e, :nome => "Japurá")
Cidade.create!(:estado => e, :nome => "Juruá")
Cidade.create!(:estado => e, :nome => "Jutaí")
Cidade.create!(:estado => e, :nome => "Lábrea")
Cidade.create!(:estado => e, :nome => "Manacapuru")
Cidade.create!(:estado => e, :nome => "Manaquiri")
Cidade.create!(:estado => e, :nome => "Manaus")
Cidade.create!(:estado => e, :nome => "Manicoré")
Cidade.create!(:estado => e, :nome => "Maraã")
Cidade.create!(:estado => e, :nome => "Maués")
Cidade.create!(:estado => e, :nome => "Nhamundá")
Cidade.create!(:estado => e, :nome => "Nova Olinda do Norte")
Cidade.create!(:estado => e, :nome => "Novo Airão")
Cidade.create!(:estado => e, :nome => "Novo Aripuanã")
Cidade.create!(:estado => e, :nome => "Parintins")
Cidade.create!(:estado => e, :nome => "Pauini")
Cidade.create!(:estado => e, :nome => "Presidente Figueiredo")
Cidade.create!(:estado => e, :nome => "Rio Preto da Eva")
Cidade.create!(:estado => e, :nome => "Santa Isabel do Rio Negro")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Içá")
Cidade.create!(:estado => e, :nome => "Silves")
Cidade.create!(:estado => e, :nome => "São Gabriel da Cachoeira")
Cidade.create!(:estado => e, :nome => "São Paulo de Olivença")
Cidade.create!(:estado => e, :nome => "São Sebastião do Uatumã")
Cidade.create!(:estado => e, :nome => "Tabatinga")
Cidade.create!(:estado => e, :nome => "Tapauá")
Cidade.create!(:estado => e, :nome => "Tefé")
Cidade.create!(:estado => e, :nome => "Tonantins")
Cidade.create!(:estado => e, :nome => "Uarini")
Cidade.create!(:estado => e, :nome => "Urucará")
Cidade.create!(:estado => e, :nome => "Urucurituba")

Estado.create!(:unidade => u, :sigla => 'AP', :nome => "Amapá")
e = Estado.find_by(nome: "Amapá")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Amapá")
Cidade.create!(:estado => e, :nome => "Calçoene")
Cidade.create!(:estado => e, :nome => "Cutias")
Cidade.create!(:estado => e, :nome => "Ferreira Gomes")
Cidade.create!(:estado => e, :nome => "Itaubal")
Cidade.create!(:estado => e, :nome => "Laranjal do Jari")
Cidade.create!(:estado => e, :nome => "Macapá")
Cidade.create!(:estado => e, :nome => "Mazagão")
Cidade.create!(:estado => e, :nome => "Oiapoque")
Cidade.create!(:estado => e, :nome => "Pedra Branca do Amapari")
Cidade.create!(:estado => e, :nome => "Porto Grande")
Cidade.create!(:estado => e, :nome => "Pracuúba")
Cidade.create!(:estado => e, :nome => "Santana")
Cidade.create!(:estado => e, :nome => "Serra do Navio")
Cidade.create!(:estado => e, :nome => "Tartarugalzinho")
Cidade.create!(:estado => e, :nome => "Vitória do Jari")

Estado.create!(:unidade => u, :sigla => 'BA', :nome => "Bahia")
e = Estado.find_by(nome: "Bahia")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Abaré")
Cidade.create!(:estado => e, :nome => "Abaíra")
Cidade.create!(:estado => e, :nome => "Acajutiba")
Cidade.create!(:estado => e, :nome => "Adustina")
Cidade.create!(:estado => e, :nome => "Água Fria")
Cidade.create!(:estado => e, :nome => "Aiquara")
Cidade.create!(:estado => e, :nome => "Alagoinhas")
Cidade.create!(:estado => e, :nome => "Alcobaça")
Cidade.create!(:estado => e, :nome => "Almadina")
Cidade.create!(:estado => e, :nome => "Amargosa")
Cidade.create!(:estado => e, :nome => "Amélia Rodrigues")
Cidade.create!(:estado => e, :nome => "América Dourada")
Cidade.create!(:estado => e, :nome => "Anagé")
Cidade.create!(:estado => e, :nome => "Andaraí")
Cidade.create!(:estado => e, :nome => "Andorinha")
Cidade.create!(:estado => e, :nome => "Angical")
Cidade.create!(:estado => e, :nome => "Anguera")
Cidade.create!(:estado => e, :nome => "Antas")
Cidade.create!(:estado => e, :nome => "Antônio Cardoso")
Cidade.create!(:estado => e, :nome => "Antônio Gonçalves")
Cidade.create!(:estado => e, :nome => "Aporá")
Cidade.create!(:estado => e, :nome => "Apuarema")
Cidade.create!(:estado => e, :nome => "Aracatu")
Cidade.create!(:estado => e, :nome => "Araci")
Cidade.create!(:estado => e, :nome => "Aramari")
Cidade.create!(:estado => e, :nome => "Arataca")
Cidade.create!(:estado => e, :nome => "Aratuípe")
Cidade.create!(:estado => e, :nome => "Araças")
Cidade.create!(:estado => e, :nome => "Aurelino Leal")
Cidade.create!(:estado => e, :nome => "Baianópolis")
Cidade.create!(:estado => e, :nome => "Baixa Grande")
Cidade.create!(:estado => e, :nome => "Banzaê")
Cidade.create!(:estado => e, :nome => "Barra")
Cidade.create!(:estado => e, :nome => "Barra da Estiva")
Cidade.create!(:estado => e, :nome => "Barra do Choça")
Cidade.create!(:estado => e, :nome => "Barra do Mes")
Cidade.create!(:estado => e, :nome => "Barra do Rocha")
Cidade.create!(:estado => e, :nome => "Barreiras")
Cidade.create!(:estado => e, :nome => "Barro Alto")
Cidade.create!(:estado => e, :nome => "Barro Preto")
Cidade.create!(:estado => e, :nome => "Barrocas")
Cidade.create!(:estado => e, :nome => "Belmonte")
Cidade.create!(:estado => e, :nome => "Belo Campo")
Cidade.create!(:estado => e, :nome => "Biritinga")
Cidade.create!(:estado => e, :nome => "Boa Nova")
Cidade.create!(:estado => e, :nome => "Boa Vista do Tupim")
Cidade.create!(:estado => e, :nome => "Bom Jesus da Lapa")
Cidade.create!(:estado => e, :nome => "Bom Jesus da Serra")
Cidade.create!(:estado => e, :nome => "Boninal")
Cidade.create!(:estado => e, :nome => "Bonito")
Cidade.create!(:estado => e, :nome => "Boquira")
Cidade.create!(:estado => e, :nome => "Botuporã")
Cidade.create!(:estado => e, :nome => "Brejolândia")
Cidade.create!(:estado => e, :nome => "Brejões")
Cidade.create!(:estado => e, :nome => "Brotas de Macaúbas")
Cidade.create!(:estado => e, :nome => "Brumado")
Cidade.create!(:estado => e, :nome => "Buerarema")
Cidade.create!(:estado => e, :nome => "Buritirama")
Cidade.create!(:estado => e, :nome => "Caatiba")
Cidade.create!(:estado => e, :nome => "Cabaceiras do Paraguaçu")
Cidade.create!(:estado => e, :nome => "Cachoeira")
Cidade.create!(:estado => e, :nome => "Caculé")
Cidade.create!(:estado => e, :nome => "Caetanos")
Cidade.create!(:estado => e, :nome => "Caetité")
Cidade.create!(:estado => e, :nome => "Cafarnaum")
Cidade.create!(:estado => e, :nome => "Cairu")
Cidade.create!(:estado => e, :nome => "Caldeirão Grande")
Cidade.create!(:estado => e, :nome => "Camacan")
Cidade.create!(:estado => e, :nome => "Camamu")
Cidade.create!(:estado => e, :nome => "Camaçari")
Cidade.create!(:estado => e, :nome => "Campo Alegre de Lourdes")
Cidade.create!(:estado => e, :nome => "Campo Formoso")
Cidade.create!(:estado => e, :nome => "Canarana")
Cidade.create!(:estado => e, :nome => "Canavieiras")
Cidade.create!(:estado => e, :nome => "Candeal")
Cidade.create!(:estado => e, :nome => "Candeias")
Cidade.create!(:estado => e, :nome => "Candiba")
Cidade.create!(:estado => e, :nome => "Cansanção")
Cidade.create!(:estado => e, :nome => "Canudos")
Cidade.create!(:estado => e, :nome => "Canápolis")
Cidade.create!(:estado => e, :nome => "Capela do Alto Alegre")
Cidade.create!(:estado => e, :nome => "Capim Grosso")
Cidade.create!(:estado => e, :nome => "Caravelas")
Cidade.create!(:estado => e, :nome => "Caraíbas")
Cidade.create!(:estado => e, :nome => "Cardeal da Silva")
Cidade.create!(:estado => e, :nome => "Carinhanha")
Cidade.create!(:estado => e, :nome => "Casa Nova")
Cidade.create!(:estado => e, :nome => "Castro Alves")
Cidade.create!(:estado => e, :nome => "Catolândia")
Cidade.create!(:estado => e, :nome => "Catu")
Cidade.create!(:estado => e, :nome => "Caturama")
Cidade.create!(:estado => e, :nome => "Caém")
Cidade.create!(:estado => e, :nome => "Central")
Cidade.create!(:estado => e, :nome => "Chorrochó")
Cidade.create!(:estado => e, :nome => "Cipó")
Cidade.create!(:estado => e, :nome => "Coaraci")
Cidade.create!(:estado => e, :nome => "Cocos")
Cidade.create!(:estado => e, :nome => "Conceição da Feira")
Cidade.create!(:estado => e, :nome => "Conceição do Almeida")
Cidade.create!(:estado => e, :nome => "Conceição do Coité")
Cidade.create!(:estado => e, :nome => "Conceição do Jacuípe")
Cidade.create!(:estado => e, :nome => "Conde")
Cidade.create!(:estado => e, :nome => "Condeúba")
Cidade.create!(:estado => e, :nome => "Contas do Sincorá")
Cidade.create!(:estado => e, :nome => "Coração de Maria")
Cidade.create!(:estado => e, :nome => "Cordeiros")
Cidade.create!(:estado => e, :nome => "Coribe")
Cidade.create!(:estado => e, :nome => "Coronel João Sá")
Cidade.create!(:estado => e, :nome => "Correntina")
Cidade.create!(:estado => e, :nome => "Cotegipe")
Cidade.create!(:estado => e, :nome => "Cravolândia")
Cidade.create!(:estado => e, :nome => "Cristópolis")
Cidade.create!(:estado => e, :nome => "Crisópolis")
Cidade.create!(:estado => e, :nome => "Cruz das Almas")
Cidade.create!(:estado => e, :nome => "Curaçá")
Cidade.create!(:estado => e, :nome => "Cândido Sales")
Cidade.create!(:estado => e, :nome => "Cícero Dantas")
Cidade.create!(:estado => e, :nome => "Dias dÁvila")
Cidade.create!(:estado => e, :nome => "Dom Basílio")
Cidade.create!(:estado => e, :nome => "Dom Macedo Costa")
Cidade.create!(:estado => e, :nome => "Dário Meira")
Cidade.create!(:estado => e, :nome => "Elísio Medrado")
Cidade.create!(:estado => e, :nome => "Encruzilhada")
Cidade.create!(:estado => e, :nome => "Entre Rios")
Cidade.create!(:estado => e, :nome => "Érico Cardoso")
Cidade.create!(:estado => e, :nome => "Esplanada")
Cidade.create!(:estado => e, :nome => "Euclides da Cunha")
Cidade.create!(:estado => e, :nome => "Eunápolis")
Cidade.create!(:estado => e, :nome => "Feira da Mata")
Cidade.create!(:estado => e, :nome => "Feira de Santana")
Cidade.create!(:estado => e, :nome => "Filadélfia")
Cidade.create!(:estado => e, :nome => "Firmino Alves")
Cidade.create!(:estado => e, :nome => "Floresta Azul")
Cidade.create!(:estado => e, :nome => "Formosa do Rio Preto")
Cidade.create!(:estado => e, :nome => "Fátima")
Cidade.create!(:estado => e, :nome => "Gandu")
Cidade.create!(:estado => e, :nome => "Gavião")
Cidade.create!(:estado => e, :nome => "Gentio do Ouro")
Cidade.create!(:estado => e, :nome => "Glória")
Cidade.create!(:estado => e, :nome => "Gongogi")
Cidade.create!(:estado => e, :nome => "Governador Mangabeira")
Cidade.create!(:estado => e, :nome => "Guajeru")
Cidade.create!(:estado => e, :nome => "Guanambi")
Cidade.create!(:estado => e, :nome => "Guaratinga")
Cidade.create!(:estado => e, :nome => "Heliópolis")
Cidade.create!(:estado => e, :nome => "Iaçu")
Cidade.create!(:estado => e, :nome => "Ibiassucê")
Cidade.create!(:estado => e, :nome => "Ibicaraí")
Cidade.create!(:estado => e, :nome => "Ibicoara")
Cidade.create!(:estado => e, :nome => "Ibicuí")
Cidade.create!(:estado => e, :nome => "Ibipeba")
Cidade.create!(:estado => e, :nome => "Ibipitanga")
Cidade.create!(:estado => e, :nome => "Ibiquera")
Cidade.create!(:estado => e, :nome => "Ibirapitanga")
Cidade.create!(:estado => e, :nome => "Ibirapuã")
Cidade.create!(:estado => e, :nome => "Ibirataia")
Cidade.create!(:estado => e, :nome => "Ibitiara")
Cidade.create!(:estado => e, :nome => "Ibititá")
Cidade.create!(:estado => e, :nome => "Ibotirama")
Cidade.create!(:estado => e, :nome => "Ichu")
Cidade.create!(:estado => e, :nome => "Igaporã")
Cidade.create!(:estado => e, :nome => "Igrapiúna")
Cidade.create!(:estado => e, :nome => "Iguaí")
Cidade.create!(:estado => e, :nome => "Ilhéus")
Cidade.create!(:estado => e, :nome => "Inhambupe")
Cidade.create!(:estado => e, :nome => "Ipecaetá")
Cidade.create!(:estado => e, :nome => "Ipiaú")
Cidade.create!(:estado => e, :nome => "Ipirá")
Cidade.create!(:estado => e, :nome => "Ipupiara")
Cidade.create!(:estado => e, :nome => "Irajuba")
Cidade.create!(:estado => e, :nome => "Iramaia")
Cidade.create!(:estado => e, :nome => "Iraquara")
Cidade.create!(:estado => e, :nome => "Irará")
Cidade.create!(:estado => e, :nome => "Irecê")
Cidade.create!(:estado => e, :nome => "Itabela")
Cidade.create!(:estado => e, :nome => "Itaberaba")
Cidade.create!(:estado => e, :nome => "Itabuna")
Cidade.create!(:estado => e, :nome => "Itacaré")
Cidade.create!(:estado => e, :nome => "Itaeté")
Cidade.create!(:estado => e, :nome => "Itagi")
Cidade.create!(:estado => e, :nome => "Itagibá")
Cidade.create!(:estado => e, :nome => "Itagimirim")
Cidade.create!(:estado => e, :nome => "Itaguaçu da Bahia")
Cidade.create!(:estado => e, :nome => "Itaju do Colônia")
Cidade.create!(:estado => e, :nome => "Itajuípe")
Cidade.create!(:estado => e, :nome => "Itamaraju")
Cidade.create!(:estado => e, :nome => "Itamari")
Cidade.create!(:estado => e, :nome => "Itambé")
Cidade.create!(:estado => e, :nome => "Itanagra")
Cidade.create!(:estado => e, :nome => "Itanhém")
Cidade.create!(:estado => e, :nome => "Itaparica")
Cidade.create!(:estado => e, :nome => "Itapebi")
Cidade.create!(:estado => e, :nome => "Itapetinga")
Cidade.create!(:estado => e, :nome => "Itapicuru")
Cidade.create!(:estado => e, :nome => "Itapitanga")
Cidade.create!(:estado => e, :nome => "Itapé")
Cidade.create!(:estado => e, :nome => "Itaquara")
Cidade.create!(:estado => e, :nome => "Itarantim")
Cidade.create!(:estado => e, :nome => "Itatim")
Cidade.create!(:estado => e, :nome => "Itiruçu")
Cidade.create!(:estado => e, :nome => "Itiúba")
Cidade.create!(:estado => e, :nome => "Itororó")
Cidade.create!(:estado => e, :nome => "Ituaçu")
Cidade.create!(:estado => e, :nome => "Ituberá")
Cidade.create!(:estado => e, :nome => "Iuiú")
Cidade.create!(:estado => e, :nome => "Jaborandi")
Cidade.create!(:estado => e, :nome => "Jacaraci")
Cidade.create!(:estado => e, :nome => "Jacobina")
Cidade.create!(:estado => e, :nome => "Jaguaquara")
Cidade.create!(:estado => e, :nome => "Jaguarari")
Cidade.create!(:estado => e, :nome => "Jaguaripe")
Cidade.create!(:estado => e, :nome => "Jandaíra")
Cidade.create!(:estado => e, :nome => "Jequié")
Cidade.create!(:estado => e, :nome => "Jeremoabo")
Cidade.create!(:estado => e, :nome => "Jiquiriçá")
Cidade.create!(:estado => e, :nome => "Jitaúna")
Cidade.create!(:estado => e, :nome => "João Dourado")
Cidade.create!(:estado => e, :nome => "Juazeiro")
Cidade.create!(:estado => e, :nome => "Jucuruçu")
Cidade.create!(:estado => e, :nome => "Jussara")
Cidade.create!(:estado => e, :nome => "Jussari")
Cidade.create!(:estado => e, :nome => "Jussiape")
Cidade.create!(:estado => e, :nome => "Lafaiete Coutinho")
Cidade.create!(:estado => e, :nome => "Lagoa Real")
Cidade.create!(:estado => e, :nome => "Laje")
Cidade.create!(:estado => e, :nome => "Lajedinho")
Cidade.create!(:estado => e, :nome => "Lajedo do Tabocal")
Cidade.create!(:estado => e, :nome => "Lajedão")
Cidade.create!(:estado => e, :nome => "Lamarão")
Cidade.create!(:estado => e, :nome => "Lapão")
Cidade.create!(:estado => e, :nome => "Lauro de Freitas")
Cidade.create!(:estado => e, :nome => "Lençóis")
Cidade.create!(:estado => e, :nome => "Licínio de Almeida")
Cidade.create!(:estado => e, :nome => "Livramento de Nossa Senhora")
Cidade.create!(:estado => e, :nome => "Luís Eduardo Magalhães")
Cidade.create!(:estado => e, :nome => "Macajuba")
Cidade.create!(:estado => e, :nome => "Macarani")
Cidade.create!(:estado => e, :nome => "Macaúbas")
Cidade.create!(:estado => e, :nome => "Macururé")
Cidade.create!(:estado => e, :nome => "Madre de Deus")
Cidade.create!(:estado => e, :nome => "Maetinga")
Cidade.create!(:estado => e, :nome => "Maiquinique")
Cidade.create!(:estado => e, :nome => "Mairi")
Cidade.create!(:estado => e, :nome => "Malhada")
Cidade.create!(:estado => e, :nome => "Malhada de Pedras")
Cidade.create!(:estado => e, :nome => "Manoel Vitorino")
Cidade.create!(:estado => e, :nome => "Mansidão")
Cidade.create!(:estado => e, :nome => "Maracás")
Cidade.create!(:estado => e, :nome => "Maragogipe")
Cidade.create!(:estado => e, :nome => "Maraú")
Cidade.create!(:estado => e, :nome => "Marcionílio Souza")
Cidade.create!(:estado => e, :nome => "Mascote")
Cidade.create!(:estado => e, :nome => "Mata de São João")
Cidade.create!(:estado => e, :nome => "Matina")
Cidade.create!(:estado => e, :nome => "Medeiros Neto")
Cidade.create!(:estado => e, :nome => "Miguel Calmon")
Cidade.create!(:estado => e, :nome => "Milagres")
Cidade.create!(:estado => e, :nome => "Mirangaba")
Cidade.create!(:estado => e, :nome => "Mirante")
Cidade.create!(:estado => e, :nome => "Monte Santo")
Cidade.create!(:estado => e, :nome => "Morpará")
Cidade.create!(:estado => e, :nome => "Morro do Chapéu")
Cidade.create!(:estado => e, :nome => "Mortugaba")
Cidade.create!(:estado => e, :nome => "Mucugê")
Cidade.create!(:estado => e, :nome => "Mucuri")
Cidade.create!(:estado => e, :nome => "Mulungu do Morro")
Cidade.create!(:estado => e, :nome => "Mundo Novo")
Cidade.create!(:estado => e, :nome => "Muniz Ferreira")
Cidade.create!(:estado => e, :nome => "Muquém de São Francisco")
Cidade.create!(:estado => e, :nome => "Muritiba")
Cidade.create!(:estado => e, :nome => "Mutuípe")
Cidade.create!(:estado => e, :nome => "Nazaré")
Cidade.create!(:estado => e, :nome => "Nilo Peçanha")
Cidade.create!(:estado => e, :nome => "Nordestina")
Cidade.create!(:estado => e, :nome => "Nova Canaã")
Cidade.create!(:estado => e, :nome => "Nova Fátima")
Cidade.create!(:estado => e, :nome => "Nova Ibiá")
Cidade.create!(:estado => e, :nome => "Nova Itarana")
Cidade.create!(:estado => e, :nome => "Nova Redenção")
Cidade.create!(:estado => e, :nome => "Nova Soure")
Cidade.create!(:estado => e, :nome => "Nova Viçosa")
Cidade.create!(:estado => e, :nome => "Novo Horizonte")
Cidade.create!(:estado => e, :nome => "Novo Triunfo")
Cidade.create!(:estado => e, :nome => "Olindina")
Cidade.create!(:estado => e, :nome => "Oliveira dos Brejinhos")
Cidade.create!(:estado => e, :nome => "Ouriçangas")
Cidade.create!(:estado => e, :nome => "Ourolândia")
Cidade.create!(:estado => e, :nome => "Palmas de Monte Alto")
Cidade.create!(:estado => e, :nome => "Palmeiras")
Cidade.create!(:estado => e, :nome => "Paramirim")
Cidade.create!(:estado => e, :nome => "Paratinga")
Cidade.create!(:estado => e, :nome => "Paripiranga")
Cidade.create!(:estado => e, :nome => "Pau Brasil")
Cidade.create!(:estado => e, :nome => "Paulo Afonso")
Cidade.create!(:estado => e, :nome => "Pedro Alexandre")
Cidade.create!(:estado => e, :nome => "Pedrão")
Cidade.create!(:estado => e, :nome => "Piatã")
Cidade.create!(:estado => e, :nome => "Pilão Arcado")
Cidade.create!(:estado => e, :nome => "Pindaí")
Cidade.create!(:estado => e, :nome => "Pindobaçu")
Cidade.create!(:estado => e, :nome => "Pintadas")
Cidade.create!(:estado => e, :nome => "Piraí do Norte")
Cidade.create!(:estado => e, :nome => "Piripá")
Cidade.create!(:estado => e, :nome => "Piritiba")
Cidade.create!(:estado => e, :nome => "Planaltino")
Cidade.create!(:estado => e, :nome => "Planalto")
Cidade.create!(:estado => e, :nome => "Pojuca")
Cidade.create!(:estado => e, :nome => "Ponto Novo")
Cidade.create!(:estado => e, :nome => "Porto Seguro")
Cidade.create!(:estado => e, :nome => "Potiraguá")
Cidade.create!(:estado => e, :nome => "Poções")
Cidade.create!(:estado => e, :nome => "Prado")
Cidade.create!(:estado => e, :nome => "Presidente Dutra")
Cidade.create!(:estado => e, :nome => "Presidente Jânio Quadros")
Cidade.create!(:estado => e, :nome => "Presidente Tancredo Neves")
Cidade.create!(:estado => e, :nome => "Pé de Serra")
Cidade.create!(:estado => e, :nome => "Queimadas")
Cidade.create!(:estado => e, :nome => "Quijingue")
Cidade.create!(:estado => e, :nome => "Quixabeira")
Cidade.create!(:estado => e, :nome => "Rafael Jambeiro")
Cidade.create!(:estado => e, :nome => "Remanso")
Cidade.create!(:estado => e, :nome => "Retirolândia")
Cidade.create!(:estado => e, :nome => "Riacho de Santana")
Cidade.create!(:estado => e, :nome => "Riachão das Neves")
Cidade.create!(:estado => e, :nome => "Riachão do Jacuípe")
Cidade.create!(:estado => e, :nome => "Ribeira do Amparo")
Cidade.create!(:estado => e, :nome => "Ribeira do Pombal")
Cidade.create!(:estado => e, :nome => "Ribeirão do Largo")
Cidade.create!(:estado => e, :nome => "Rio Real")
Cidade.create!(:estado => e, :nome => "Rio de Contas")
Cidade.create!(:estado => e, :nome => "Rio do Antônio")
Cidade.create!(:estado => e, :nome => "Rio do Pires")
Cidade.create!(:estado => e, :nome => "Rodelas")
Cidade.create!(:estado => e, :nome => "Ruy Barbosa")
Cidade.create!(:estado => e, :nome => "Salinas da Margarida")
Cidade.create!(:estado => e, :nome => "Salvador")
Cidade.create!(:estado => e, :nome => "Santa Brígida")
Cidade.create!(:estado => e, :nome => "Santa Bárbara")
Cidade.create!(:estado => e, :nome => "Santa Cruz Cabrália")
Cidade.create!(:estado => e, :nome => "Santa Cruz da Vitória")
Cidade.create!(:estado => e, :nome => "Santa Inês")
Cidade.create!(:estado => e, :nome => "Santa Luzia")
Cidade.create!(:estado => e, :nome => "Santa Maria da Vitória")
Cidade.create!(:estado => e, :nome => "Santa Rita de Cássia")
Cidade.create!(:estado => e, :nome => "Santa Teresinha")
Cidade.create!(:estado => e, :nome => "Santaluz")
Cidade.create!(:estado => e, :nome => "Santana")
Cidade.create!(:estado => e, :nome => "Santanópolis")
Cidade.create!(:estado => e, :nome => "Santo Amaro")
Cidade.create!(:estado => e, :nome => "Santo Antônio de Jesus")
Cidade.create!(:estado => e, :nome => "Santo Estêvão")
Cidade.create!(:estado => e, :nome => "Sapeaçu")
Cidade.create!(:estado => e, :nome => "Saubara")
Cidade.create!(:estado => e, :nome => "Saúde")
Cidade.create!(:estado => e, :nome => "Seabra")
Cidade.create!(:estado => e, :nome => "Sebastião Laranjeiras")
Cidade.create!(:estado => e, :nome => "Senhor do Bonfim")
Cidade.create!(:estado => e, :nome => "Sento Sé")
Cidade.create!(:estado => e, :nome => "Serra Dourada")
Cidade.create!(:estado => e, :nome => "Serra Preta")
Cidade.create!(:estado => e, :nome => "Serra do Ramalho")
Cidade.create!(:estado => e, :nome => "Serrinha")
Cidade.create!(:estado => e, :nome => "Serrolândia")
Cidade.create!(:estado => e, :nome => "Simões Filho")
Cidade.create!(:estado => e, :nome => "Sobradinho")
Cidade.create!(:estado => e, :nome => "Souto Soares")
Cidade.create!(:estado => e, :nome => "Sátiro Dias")
Cidade.create!(:estado => e, :nome => "São Desidério")
Cidade.create!(:estado => e, :nome => "São Domingos")
Cidade.create!(:estado => e, :nome => "São Felipe")
Cidade.create!(:estado => e, :nome => "São Francisco do Conde")
Cidade.create!(:estado => e, :nome => "São Félix")
Cidade.create!(:estado => e, :nome => "São Félix do Coribe")
Cidade.create!(:estado => e, :nome => "São Gabriel")
Cidade.create!(:estado => e, :nome => "São Gonçalo dos Campos")
Cidade.create!(:estado => e, :nome => "São José da Vitória")
Cidade.create!(:estado => e, :nome => "São José do Jacuípe")
Cidade.create!(:estado => e, :nome => "São Miguel das Matas")
Cidade.create!(:estado => e, :nome => "São Sebastião do Passé")
Cidade.create!(:estado => e, :nome => "Sítio do Mato")
Cidade.create!(:estado => e, :nome => "Sítio do Quinto")
Cidade.create!(:estado => e, :nome => "Tabocas do Brejo Velho")
Cidade.create!(:estado => e, :nome => "Tanhaçu")
Cidade.create!(:estado => e, :nome => "Tanque Novo")
Cidade.create!(:estado => e, :nome => "Tanquinho")
Cidade.create!(:estado => e, :nome => "Taperoá")
Cidade.create!(:estado => e, :nome => "Tapiramutá")
Cidade.create!(:estado => e, :nome => "Teixeira de Freitas")
Cidade.create!(:estado => e, :nome => "Teodoro Sampaio")
Cidade.create!(:estado => e, :nome => "Teofilândia")
Cidade.create!(:estado => e, :nome => "Teolândia")
Cidade.create!(:estado => e, :nome => "Terra Nova")
Cidade.create!(:estado => e, :nome => "Tremedal")
Cidade.create!(:estado => e, :nome => "Tucano")
Cidade.create!(:estado => e, :nome => "Uauá")
Cidade.create!(:estado => e, :nome => "Ubaitaba")
Cidade.create!(:estado => e, :nome => "Ubatã")
Cidade.create!(:estado => e, :nome => "Ubaíra")
Cidade.create!(:estado => e, :nome => "Uibaí")
Cidade.create!(:estado => e, :nome => "Umburanas")
Cidade.create!(:estado => e, :nome => "Una")
Cidade.create!(:estado => e, :nome => "Urandi")
Cidade.create!(:estado => e, :nome => "Uruçuca")
Cidade.create!(:estado => e, :nome => "Utinga")
Cidade.create!(:estado => e, :nome => "Valente")
Cidade.create!(:estado => e, :nome => "Valença")
Cidade.create!(:estado => e, :nome => "Varzedo")
Cidade.create!(:estado => e, :nome => "Vera Cruz")
Cidade.create!(:estado => e, :nome => "Vereda")
Cidade.create!(:estado => e, :nome => "Vitória da Conquista")
Cidade.create!(:estado => e, :nome => "Várzea Nova")
Cidade.create!(:estado => e, :nome => "Várzea da Roça")
Cidade.create!(:estado => e, :nome => "Várzea do Poço")
Cidade.create!(:estado => e, :nome => "Wagner")
Cidade.create!(:estado => e, :nome => "Wanderley")
Cidade.create!(:estado => e, :nome => "Wenceslau Guimarães")
Cidade.create!(:estado => e, :nome => "Xique-Xique")


Estado.create!(:unidade => u, :sigla => 'CE', :nome => "Ceará")
e = Estado.find_by(nome: "Ceará")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Abaiara")
Cidade.create!(:estado => e, :nome => "Acarape")
Cidade.create!(:estado => e, :nome => "Acaraú")
Cidade.create!(:estado => e, :nome => "Acopiara")
Cidade.create!(:estado => e, :nome => "Aiuaba")
Cidade.create!(:estado => e, :nome => "Alcântaras")
Cidade.create!(:estado => e, :nome => "Altaneira")
Cidade.create!(:estado => e, :nome => "Alto Santo")
Cidade.create!(:estado => e, :nome => "Amontada")
Cidade.create!(:estado => e, :nome => "Antonina do Norte")
Cidade.create!(:estado => e, :nome => "Apuiarés")
Cidade.create!(:estado => e, :nome => "Aquiraz")
Cidade.create!(:estado => e, :nome => "Aracati")
Cidade.create!(:estado => e, :nome => "Aracoiaba")
Cidade.create!(:estado => e, :nome => "Arará")
Cidade.create!(:estado => e, :nome => "Araripe")
Cidade.create!(:estado => e, :nome => "Aratuba")
Cidade.create!(:estado => e, :nome => "Arneiroz")
Cidade.create!(:estado => e, :nome => "Assaré")
Cidade.create!(:estado => e, :nome => "Aurora")
Cidade.create!(:estado => e, :nome => "Baixio")
Cidade.create!(:estado => e, :nome => "Banabuiú")
Cidade.create!(:estado => e, :nome => "Barbalha")
Cidade.create!(:estado => e, :nome => "Barreira")
Cidade.create!(:estado => e, :nome => "Barro")
Cidade.create!(:estado => e, :nome => "Barroquinha")
Cidade.create!(:estado => e, :nome => "Baturité")
Cidade.create!(:estado => e, :nome => "Beberibe")
Cidade.create!(:estado => e, :nome => "Bela Cruz")
Cidade.create!(:estado => e, :nome => "Boa Viagem")
Cidade.create!(:estado => e, :nome => "Brejo Santo")
Cidade.create!(:estado => e, :nome => "Camocim")
Cidade.create!(:estado => e, :nome => "Campos Sales")
Cidade.create!(:estado => e, :nome => "Canindé")
Cidade.create!(:estado => e, :nome => "Capistrano")
Cidade.create!(:estado => e, :nome => "Caridade")
Cidade.create!(:estado => e, :nome => "Caririaçu")
Cidade.create!(:estado => e, :nome => "Cariré")
Cidade.create!(:estado => e, :nome => "Cariús")
Cidade.create!(:estado => e, :nome => "Carnaubal")
Cidade.create!(:estado => e, :nome => "Cascavel")
Cidade.create!(:estado => e, :nome => "Catarina")
Cidade.create!(:estado => e, :nome => "Catunda")
Cidade.create!(:estado => e, :nome => "Caucaia")
Cidade.create!(:estado => e, :nome => "Cedro")
Cidade.create!(:estado => e, :nome => "Chaval")
Cidade.create!(:estado => e, :nome => "Chorozinho")
Cidade.create!(:estado => e, :nome => "Choró")
Cidade.create!(:estado => e, :nome => "Coreaú")
Cidade.create!(:estado => e, :nome => "Crateús")
Cidade.create!(:estado => e, :nome => "Crato")
Cidade.create!(:estado => e, :nome => "Croatá")
Cidade.create!(:estado => e, :nome => "Cruz")
Cidade.create!(:estado => e, :nome => "Deputado Irapuan Pinheiro")
Cidade.create!(:estado => e, :nome => "Ererê")
Cidade.create!(:estado => e, :nome => "Eusébio")
Cidade.create!(:estado => e, :nome => "Farias Brito")
Cidade.create!(:estado => e, :nome => "Forquilha")
Cidade.create!(:estado => e, :nome => "Fortaleza")
Cidade.create!(:estado => e, :nome => "Fortim")
Cidade.create!(:estado => e, :nome => "Frecheirinha")
Cidade.create!(:estado => e, :nome => "General Sampaio")
Cidade.create!(:estado => e, :nome => "Granja")
Cidade.create!(:estado => e, :nome => "Granjeiro")
Cidade.create!(:estado => e, :nome => "Graça")
Cidade.create!(:estado => e, :nome => "Groaíras")
Cidade.create!(:estado => e, :nome => "Guaiúba")
Cidade.create!(:estado => e, :nome => "Guaraciaba do Norte")
Cidade.create!(:estado => e, :nome => "Guaramiranga")
Cidade.create!(:estado => e, :nome => "Hidrolândia")
Cidade.create!(:estado => e, :nome => "Horizonte")
Cidade.create!(:estado => e, :nome => "Ibaretama")
Cidade.create!(:estado => e, :nome => "Ibiapina")
Cidade.create!(:estado => e, :nome => "Ibicuitinga")
Cidade.create!(:estado => e, :nome => "Icapuí")
Cidade.create!(:estado => e, :nome => "Icó")
Cidade.create!(:estado => e, :nome => "Iguatu")
Cidade.create!(:estado => e, :nome => "Indepência")
Cidade.create!(:estado => e, :nome => "Ipaporanga")
Cidade.create!(:estado => e, :nome => "Ipaumirim")
Cidade.create!(:estado => e, :nome => "Ipu")
Cidade.create!(:estado => e, :nome => "Ipueiras")
Cidade.create!(:estado => e, :nome => "Iracema")
Cidade.create!(:estado => e, :nome => "Irauçuba")
Cidade.create!(:estado => e, :nome => "Itaitinga")
Cidade.create!(:estado => e, :nome => "Itaiçaba")
Cidade.create!(:estado => e, :nome => "Itapagé")
Cidade.create!(:estado => e, :nome => "Itapipoca")
Cidade.create!(:estado => e, :nome => "Itapiúna")
Cidade.create!(:estado => e, :nome => "Itarema")
Cidade.create!(:estado => e, :nome => "Itatira")
Cidade.create!(:estado => e, :nome => "Jaguaretama")
Cidade.create!(:estado => e, :nome => "Jaguaribara")
Cidade.create!(:estado => e, :nome => "Jaguaribe")
Cidade.create!(:estado => e, :nome => "Jaguaruana")
Cidade.create!(:estado => e, :nome => "Jardim")
Cidade.create!(:estado => e, :nome => "Jati")
Cidade.create!(:estado => e, :nome => "Jijoca de Jericoacoara")
Cidade.create!(:estado => e, :nome => "Juazeiro do Norte")
Cidade.create!(:estado => e, :nome => "Jucás")
Cidade.create!(:estado => e, :nome => "Lavras da Mangabeira")
Cidade.create!(:estado => e, :nome => "Limoeiro do Norte")
Cidade.create!(:estado => e, :nome => "Madalena")
Cidade.create!(:estado => e, :nome => "Maracanaú")
Cidade.create!(:estado => e, :nome => "Maranguape")
Cidade.create!(:estado => e, :nome => "Marco")
Cidade.create!(:estado => e, :nome => "Martinópole")
Cidade.create!(:estado => e, :nome => "Massapê")
Cidade.create!(:estado => e, :nome => "Mauriti")
Cidade.create!(:estado => e, :nome => "Meruoca")
Cidade.create!(:estado => e, :nome => "Milagres")
Cidade.create!(:estado => e, :nome => "Milhã")
Cidade.create!(:estado => e, :nome => "Miraíma")
Cidade.create!(:estado => e, :nome => "Missão Velha")
Cidade.create!(:estado => e, :nome => "Mombaça")
Cidade.create!(:estado => e, :nome => "Monsenhor Tabosa")
Cidade.create!(:estado => e, :nome => "Morada Nova")
Cidade.create!(:estado => e, :nome => "Moraújo")
Cidade.create!(:estado => e, :nome => "Morrinhos")
Cidade.create!(:estado => e, :nome => "Mucambo")
Cidade.create!(:estado => e, :nome => "Mulungu")
Cidade.create!(:estado => e, :nome => "Nova Olinda")
Cidade.create!(:estado => e, :nome => "Nova Russas")
Cidade.create!(:estado => e, :nome => "Novo Oriente")
Cidade.create!(:estado => e, :nome => "Ocara")
Cidade.create!(:estado => e, :nome => "Orós")
Cidade.create!(:estado => e, :nome => "Pacajus")
Cidade.create!(:estado => e, :nome => "Pacatuba")
Cidade.create!(:estado => e, :nome => "Pacoti")
Cidade.create!(:estado => e, :nome => "Pacujá")
Cidade.create!(:estado => e, :nome => "Palhano")
Cidade.create!(:estado => e, :nome => "Palmácia")
Cidade.create!(:estado => e, :nome => "Paracuru")
Cidade.create!(:estado => e, :nome => "Paraipaba")
Cidade.create!(:estado => e, :nome => "Parambu")
Cidade.create!(:estado => e, :nome => "Paramoti")
Cidade.create!(:estado => e, :nome => "Pedra Branca")
Cidade.create!(:estado => e, :nome => "Penaforte")
Cidade.create!(:estado => e, :nome => "Pentecoste")
Cidade.create!(:estado => e, :nome => "Pereiro")
Cidade.create!(:estado => e, :nome => "Pindoretama")
Cidade.create!(:estado => e, :nome => "Piquet Carneiro")
Cidade.create!(:estado => e, :nome => "Pires Ferreira")
Cidade.create!(:estado => e, :nome => "Poranga")
Cidade.create!(:estado => e, :nome => "Porteiras")
Cidade.create!(:estado => e, :nome => "Potengi")
Cidade.create!(:estado => e, :nome => "Potiretama")
Cidade.create!(:estado => e, :nome => "Quiterianópolis")
Cidade.create!(:estado => e, :nome => "Quixadá")
Cidade.create!(:estado => e, :nome => "Quixelô")
Cidade.create!(:estado => e, :nome => "Quixeramobim")
Cidade.create!(:estado => e, :nome => "Quixeré")
Cidade.create!(:estado => e, :nome => "Redenção")
Cidade.create!(:estado => e, :nome => "Reriutaba")
Cidade.create!(:estado => e, :nome => "Russas")
Cidade.create!(:estado => e, :nome => "Saboeiro")
Cidade.create!(:estado => e, :nome => "Salitre")
Cidade.create!(:estado => e, :nome => "Santa Quitéria")
Cidade.create!(:estado => e, :nome => "Santana do Acaraú")
Cidade.create!(:estado => e, :nome => "Santana do Cariri")
Cidade.create!(:estado => e, :nome => "Senador Pompeu")
Cidade.create!(:estado => e, :nome => "Senador Sá")
Cidade.create!(:estado => e, :nome => "Sobral")
Cidade.create!(:estado => e, :nome => "Solonópole")
Cidade.create!(:estado => e, :nome => "São Benedito")
Cidade.create!(:estado => e, :nome => "São Gonçalo do Amarante")
Cidade.create!(:estado => e, :nome => "São João do Jaguaribe")
Cidade.create!(:estado => e, :nome => "São Luís do Curu")
Cidade.create!(:estado => e, :nome => "Tabuleiro do Norte")
Cidade.create!(:estado => e, :nome => "Tamboril")
Cidade.create!(:estado => e, :nome => "Tarrafas")
Cidade.create!(:estado => e, :nome => "Tauá")
Cidade.create!(:estado => e, :nome => "Tejuçuoca")
Cidade.create!(:estado => e, :nome => "Tianguá")
Cidade.create!(:estado => e, :nome => "Trairi")
Cidade.create!(:estado => e, :nome => "Tururu")
Cidade.create!(:estado => e, :nome => "Ubajara")
Cidade.create!(:estado => e, :nome => "Umari")
Cidade.create!(:estado => e, :nome => "Umirim")
Cidade.create!(:estado => e, :nome => "Uruburetama")
Cidade.create!(:estado => e, :nome => "Uruoca")
Cidade.create!(:estado => e, :nome => "Varjota")
Cidade.create!(:estado => e, :nome => "Viçosa do Ceará")
Cidade.create!(:estado => e, :nome => "Várzea Alegre")


Estado.create!(:unidade => u, :sigla => 'DF', :nome => "Distrito Federal")
e = Estado.find_by(nome: "Distrito Federal")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Águas Claras")
Cidade.create!(:estado => e, :nome => "Brasília")
Cidade.create!(:estado => e, :nome => "Brazlândia")
Cidade.create!(:estado => e, :nome => "Candangolândia")
Cidade.create!(:estado => e, :nome => "Ceilândia")
Cidade.create!(:estado => e, :nome => "Cruzeiro")
Cidade.create!(:estado => e, :nome => "Gama")
Cidade.create!(:estado => e, :nome => "Guará")
Cidade.create!(:estado => e, :nome => "Itapoã")
Cidade.create!(:estado => e, :nome => "Jardim Botânico")
Cidade.create!(:estado => e, :nome => "Lago Norte")
Cidade.create!(:estado => e, :nome => "Lago Sul")
Cidade.create!(:estado => e, :nome => "Núcleo Bandeirante")
Cidade.create!(:estado => e, :nome => "Paranoá")
Cidade.create!(:estado => e, :nome => "Park Way")
Cidade.create!(:estado => e, :nome => "Planaltina")
Cidade.create!(:estado => e, :nome => "Recanto das Emas")
Cidade.create!(:estado => e, :nome => "Riacho Fundo")
Cidade.create!(:estado => e, :nome => "Riacho Fundo II")
Cidade.create!(:estado => e, :nome => "Samambaia")
Cidade.create!(:estado => e, :nome => "Santa Maria")
Cidade.create!(:estado => e, :nome => "São Sebastião")
Cidade.create!(:estado => e, :nome => "Sobradinho")
Cidade.create!(:estado => e, :nome => "Sobradinho II")
Cidade.create!(:estado => e, :nome => "SCIA")
Cidade.create!(:estado => e, :nome => "SIA")
Cidade.create!(:estado => e, :nome => "Sudoeste e Octogonal")
Cidade.create!(:estado => e, :nome => "Taguatinga")
Cidade.create!(:estado => e, :nome => "Varjão")


Estado.create!(:unidade => u, :sigla => 'ES', :nome => "Espírito Santo")
e = Estado.find_by(nome: "Espírito Santo")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Afonso Cláudio")
Cidade.create!(:estado => e, :nome => "Água Doce do Norte")
Cidade.create!(:estado => e, :nome => "Águia Branca")
Cidade.create!(:estado => e, :nome => "Alegre")
Cidade.create!(:estado => e, :nome => "Alfredo Chaves")
Cidade.create!(:estado => e, :nome => "Alto Rio Novo")
Cidade.create!(:estado => e, :nome => "Anchieta")
Cidade.create!(:estado => e, :nome => "Apiacá")
Cidade.create!(:estado => e, :nome => "Aracruz")
Cidade.create!(:estado => e, :nome => "Atilio Vivacqua")
Cidade.create!(:estado => e, :nome => "Baixo Guandu")
Cidade.create!(:estado => e, :nome => "Barra de São Francisco")
Cidade.create!(:estado => e, :nome => "Boa Esperança")
Cidade.create!(:estado => e, :nome => "Bom Jesus do Norte")
Cidade.create!(:estado => e, :nome => "Brejetuba")
Cidade.create!(:estado => e, :nome => "Cachoeiro de Itapemirim")
Cidade.create!(:estado => e, :nome => "Cariacica")
Cidade.create!(:estado => e, :nome => "Castelo")
Cidade.create!(:estado => e, :nome => "Colatina")
Cidade.create!(:estado => e, :nome => "Conceição da Barra")
Cidade.create!(:estado => e, :nome => "Conceição do Castelo")
Cidade.create!(:estado => e, :nome => "Divino de São Lourenço")
Cidade.create!(:estado => e, :nome => "Domingos Martins")
Cidade.create!(:estado => e, :nome => "Dores do Rio Preto")
Cidade.create!(:estado => e, :nome => "Ecoporanga")
Cidade.create!(:estado => e, :nome => "Fundão")
Cidade.create!(:estado => e, :nome => "Governador Lindenberg")
Cidade.create!(:estado => e, :nome => "Guarapari")
Cidade.create!(:estado => e, :nome => "Guaçuí")
Cidade.create!(:estado => e, :nome => "Ibatiba")
Cidade.create!(:estado => e, :nome => "Ibiraçu")
Cidade.create!(:estado => e, :nome => "Ibitirama")
Cidade.create!(:estado => e, :nome => "Iconha")
Cidade.create!(:estado => e, :nome => "Irupi")
Cidade.create!(:estado => e, :nome => "Itaguaçu")
Cidade.create!(:estado => e, :nome => "Itapemirim")
Cidade.create!(:estado => e, :nome => "Itarana")
Cidade.create!(:estado => e, :nome => "Iúna")
Cidade.create!(:estado => e, :nome => "Jaguaré")
Cidade.create!(:estado => e, :nome => "Jerônimo Monteiro")
Cidade.create!(:estado => e, :nome => "João Neiva")
Cidade.create!(:estado => e, :nome => "Laranja da Terra")
Cidade.create!(:estado => e, :nome => "Linhares")
Cidade.create!(:estado => e, :nome => "Mantenópolis")
Cidade.create!(:estado => e, :nome => "Marataízes")
Cidade.create!(:estado => e, :nome => "Marechal Floriano")
Cidade.create!(:estado => e, :nome => "Marilândia")
Cidade.create!(:estado => e, :nome => "Mimoso do Sul")
Cidade.create!(:estado => e, :nome => "Montanha")
Cidade.create!(:estado => e, :nome => "Mucurici")
Cidade.create!(:estado => e, :nome => "Muniz Freire")
Cidade.create!(:estado => e, :nome => "Muqui")
Cidade.create!(:estado => e, :nome => "Nova Venécia")
Cidade.create!(:estado => e, :nome => "Pancas")
Cidade.create!(:estado => e, :nome => "Pedro Canário")
Cidade.create!(:estado => e, :nome => "Pinheiros")
Cidade.create!(:estado => e, :nome => "Piúma")
Cidade.create!(:estado => e, :nome => "Ponto Belo")
Cidade.create!(:estado => e, :nome => "Presidente Kennedy")
Cidade.create!(:estado => e, :nome => "Rio Bananal")
Cidade.create!(:estado => e, :nome => "Rio Novo do Sul")
Cidade.create!(:estado => e, :nome => "Santa Leopoldina")
Cidade.create!(:estado => e, :nome => "Santa Maria de Jetibá")
Cidade.create!(:estado => e, :nome => "Santa Teresa")
Cidade.create!(:estado => e, :nome => "Serra")
Cidade.create!(:estado => e, :nome => "Sooretama")
Cidade.create!(:estado => e, :nome => "São Domingos do Norte")
Cidade.create!(:estado => e, :nome => "São Gabriel da Palha")
Cidade.create!(:estado => e, :nome => "São José do Calçado")
Cidade.create!(:estado => e, :nome => "São Mateus")
Cidade.create!(:estado => e, :nome => "São Roque do Canaã")
Cidade.create!(:estado => e, :nome => "Vargem Alta")
Cidade.create!(:estado => e, :nome => "Va Nova do Imigrante")
Cidade.create!(:estado => e, :nome => "Viana")
Cidade.create!(:estado => e, :nome => "Vila Pavão")
Cidade.create!(:estado => e, :nome => "Vila Valério")
Cidade.create!(:estado => e, :nome => "Vila Velha")
Cidade.create!(:estado => e, :nome => "Vitória")


Estado.create!(:unidade => u, :sigla => 'GO', :nome => "Goiás")
e = Estado.find_by(nome: "Goiás")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Abadia de Goiás")
Cidade.create!(:estado => e, :nome => "Abadiânia")
Cidade.create!(:estado => e, :nome => "Acreúna")
Cidade.create!(:estado => e, :nome => "Adelândia")
Cidade.create!(:estado => e, :nome => "Água Fria de Goiás")
Cidade.create!(:estado => e, :nome => "Água Limpa")
Cidade.create!(:estado => e, :nome => "Águas Lindas de Goiás")
Cidade.create!(:estado => e, :nome => "Alexânia")
Cidade.create!(:estado => e, :nome => "Aloândia")
Cidade.create!(:estado => e, :nome => "Alto Horizonte")
Cidade.create!(:estado => e, :nome => "Alto Paraíso de Goiás")
Cidade.create!(:estado => e, :nome => "Alvorada do Norte")
Cidade.create!(:estado => e, :nome => "Amaralina")
Cidade.create!(:estado => e, :nome => "Americano do Brasil")
Cidade.create!(:estado => e, :nome => "Amorinópolis")
Cidade.create!(:estado => e, :nome => "Anhanguera")
Cidade.create!(:estado => e, :nome => "Anicuns")
Cidade.create!(:estado => e, :nome => "Anápolis")
Cidade.create!(:estado => e, :nome => "Aparecida de Goiânia")
Cidade.create!(:estado => e, :nome => "Aparecida do Rio Doce")
Cidade.create!(:estado => e, :nome => "Aporé")
Cidade.create!(:estado => e, :nome => "Aragarças")
Cidade.create!(:estado => e, :nome => "Aragoiânia")
Cidade.create!(:estado => e, :nome => "Araguapaz")
Cidade.create!(:estado => e, :nome => "Araçu")
Cidade.create!(:estado => e, :nome => "Arenópolis")
Cidade.create!(:estado => e, :nome => "Aruanã")
Cidade.create!(:estado => e, :nome => "Aurilândia")
Cidade.create!(:estado => e, :nome => "Avelinópolis")
Cidade.create!(:estado => e, :nome => "Baliza")
Cidade.create!(:estado => e, :nome => "Barro Alto")
Cidade.create!(:estado => e, :nome => "Bela Vista de Goiás")
Cidade.create!(:estado => e, :nome => "Bom Jardim de Goiás")
Cidade.create!(:estado => e, :nome => "Bom Jesus de Goiás")
Cidade.create!(:estado => e, :nome => "Bonfinópolis")
Cidade.create!(:estado => e, :nome => "Bonópolis")
Cidade.create!(:estado => e, :nome => "Brazabrantes")
Cidade.create!(:estado => e, :nome => "Britânia")
Cidade.create!(:estado => e, :nome => "Buriti Alegre")
Cidade.create!(:estado => e, :nome => "Buriti de Goiás")
Cidade.create!(:estado => e, :nome => "Buritinópolis")
Cidade.create!(:estado => e, :nome => "Cabeceiras")
Cidade.create!(:estado => e, :nome => "Cachoeira Alta")
Cidade.create!(:estado => e, :nome => "Cachoeira Dourada")
Cidade.create!(:estado => e, :nome => "Cachoeira de Goiás")
Cidade.create!(:estado => e, :nome => "Caiapônia")
Cidade.create!(:estado => e, :nome => "Caldas Novas")
Cidade.create!(:estado => e, :nome => "Caldazinha")
Cidade.create!(:estado => e, :nome => "Campestre de Goiás")
Cidade.create!(:estado => e, :nome => "Campinaçu")
Cidade.create!(:estado => e, :nome => "Campinorte")
Cidade.create!(:estado => e, :nome => "Campo Alegre de Goiás")
Cidade.create!(:estado => e, :nome => "Campo Limpo de Goiás")
Cidade.create!(:estado => e, :nome => "Campos Belos")
Cidade.create!(:estado => e, :nome => "Campos Verdes")
Cidade.create!(:estado => e, :nome => "Carmo do Rio Verde")
Cidade.create!(:estado => e, :nome => "Castelândia")
Cidade.create!(:estado => e, :nome => "Catalão")
Cidade.create!(:estado => e, :nome => "Caturaí")
Cidade.create!(:estado => e, :nome => "Cavalcante")
Cidade.create!(:estado => e, :nome => "Caçu")
Cidade.create!(:estado => e, :nome => "Ceres")
Cidade.create!(:estado => e, :nome => "Cezarina")
Cidade.create!(:estado => e, :nome => "Chapadão do Céu")
Cidade.create!(:estado => e, :nome => "Cidade Ocidental")
Cidade.create!(:estado => e, :nome => "Cocalzinho de Goiás")
Cidade.create!(:estado => e, :nome => "Colinas do Sul")
Cidade.create!(:estado => e, :nome => "Corumbaíba")
Cidade.create!(:estado => e, :nome => "Corumbá de Goiás")
Cidade.create!(:estado => e, :nome => "Cristalina")
Cidade.create!(:estado => e, :nome => "Cristianópolis")
Cidade.create!(:estado => e, :nome => "Crixás")
Cidade.create!(:estado => e, :nome => "Cromínia")
Cidade.create!(:estado => e, :nome => "Cumari")
Cidade.create!(:estado => e, :nome => "Córrego do Ouro")
Cidade.create!(:estado => e, :nome => "Damianópolis")
Cidade.create!(:estado => e, :nome => "Damolândia")
Cidade.create!(:estado => e, :nome => "Davinópolis")
Cidade.create!(:estado => e, :nome => "Diorama")
Cidade.create!(:estado => e, :nome => "Divinópolis de Goiás")
Cidade.create!(:estado => e, :nome => "Doverlândia")
Cidade.create!(:estado => e, :nome => "Edealina")
Cidade.create!(:estado => e, :nome => "Edéia")
Cidade.create!(:estado => e, :nome => "Estrela do Norte")
Cidade.create!(:estado => e, :nome => "Faina")
Cidade.create!(:estado => e, :nome => "Faza Nova")
Cidade.create!(:estado => e, :nome => "Firminópolis")
Cidade.create!(:estado => e, :nome => "Flores de Goiás")
Cidade.create!(:estado => e, :nome => "Formosa")
Cidade.create!(:estado => e, :nome => "Formoso")
Cidade.create!(:estado => e, :nome => "Gameleira de Goiás")
Cidade.create!(:estado => e, :nome => "Goiandira")
Cidade.create!(:estado => e, :nome => "Goianira")
Cidade.create!(:estado => e, :nome => "Goianápolis")
Cidade.create!(:estado => e, :nome => "Goianésia")
Cidade.create!(:estado => e, :nome => "Goiatuba")
Cidade.create!(:estado => e, :nome => "Goiás")
Cidade.create!(:estado => e, :nome => "Goiânia")
Cidade.create!(:estado => e, :nome => "Gouvelândia")
Cidade.create!(:estado => e, :nome => "Guapó")
Cidade.create!(:estado => e, :nome => "Guarani de Goiás")
Cidade.create!(:estado => e, :nome => "Guaraíta")
Cidade.create!(:estado => e, :nome => "Guarinos")
Cidade.create!(:estado => e, :nome => "Heitoraí")
Cidade.create!(:estado => e, :nome => "Hidrolina")
Cidade.create!(:estado => e, :nome => "Hidrolândia")
Cidade.create!(:estado => e, :nome => "Iaciara")
Cidade.create!(:estado => e, :nome => "Inaciolândia")
Cidade.create!(:estado => e, :nome => "Indiara")
Cidade.create!(:estado => e, :nome => "Inhumas")
Cidade.create!(:estado => e, :nome => "Ipameri")
Cidade.create!(:estado => e, :nome => "Ipiranga de Goiás")
Cidade.create!(:estado => e, :nome => "Iporá")
Cidade.create!(:estado => e, :nome => "Israelândia")
Cidade.create!(:estado => e, :nome => "Itaberaí")
Cidade.create!(:estado => e, :nome => "Itaguari")
Cidade.create!(:estado => e, :nome => "Itaguaru")
Cidade.create!(:estado => e, :nome => "Itajá")
Cidade.create!(:estado => e, :nome => "Itapaci")
Cidade.create!(:estado => e, :nome => "Itapirapuã")
Cidade.create!(:estado => e, :nome => "Itapuranga")
Cidade.create!(:estado => e, :nome => "Itarumã")
Cidade.create!(:estado => e, :nome => "Itauçu")
Cidade.create!(:estado => e, :nome => "Itumbiara")
Cidade.create!(:estado => e, :nome => "Ivolândia")
Cidade.create!(:estado => e, :nome => "Jandaia")
Cidade.create!(:estado => e, :nome => "Jaraguá")
Cidade.create!(:estado => e, :nome => "Jataí")
Cidade.create!(:estado => e, :nome => "Jaupaci")
Cidade.create!(:estado => e, :nome => "Jesúpolis")
Cidade.create!(:estado => e, :nome => "Joviânia")
Cidade.create!(:estado => e, :nome => "Jussara")
Cidade.create!(:estado => e, :nome => "Lagoa Santa")
Cidade.create!(:estado => e, :nome => "Leopoldo de Bulhões")
Cidade.create!(:estado => e, :nome => "Luziânia")
Cidade.create!(:estado => e, :nome => "Mairipotaba")
Cidade.create!(:estado => e, :nome => "Mambaí")
Cidade.create!(:estado => e, :nome => "Mara Rosa")
Cidade.create!(:estado => e, :nome => "Marzagão")
Cidade.create!(:estado => e, :nome => "Matrinchã")
Cidade.create!(:estado => e, :nome => "Maurilândia")
Cidade.create!(:estado => e, :nome => "Mimoso de Goiás")
Cidade.create!(:estado => e, :nome => "Minaçu")
Cidade.create!(:estado => e, :nome => "Mineiros")
Cidade.create!(:estado => e, :nome => "Moiporá")
Cidade.create!(:estado => e, :nome => "Monte Alegre de Goiás")
Cidade.create!(:estado => e, :nome => "Montes Claros de Goiás")
Cidade.create!(:estado => e, :nome => "Montividiu")
Cidade.create!(:estado => e, :nome => "Montividiu do Norte")
Cidade.create!(:estado => e, :nome => "Morrinhos")
Cidade.create!(:estado => e, :nome => "Morro Agudo de Goiás")
Cidade.create!(:estado => e, :nome => "Mossâmedes")
Cidade.create!(:estado => e, :nome => "Mozarlândia")
Cidade.create!(:estado => e, :nome => "Mundo Novo")
Cidade.create!(:estado => e, :nome => "Mutunópolis")
Cidade.create!(:estado => e, :nome => "Nazário")
Cidade.create!(:estado => e, :nome => "Nerópolis")
Cidade.create!(:estado => e, :nome => "Niquelândia")
Cidade.create!(:estado => e, :nome => "Nova América")
Cidade.create!(:estado => e, :nome => "Nova Aurora")
Cidade.create!(:estado => e, :nome => "Nova Crixás")
Cidade.create!(:estado => e, :nome => "Nova Glória")
Cidade.create!(:estado => e, :nome => "Nova Iguaçu de Goiás")
Cidade.create!(:estado => e, :nome => "Nova Roma")
Cidade.create!(:estado => e, :nome => "Nova Veneza")
Cidade.create!(:estado => e, :nome => "Novo Brasil")
Cidade.create!(:estado => e, :nome => "Novo Gama")
Cidade.create!(:estado => e, :nome => "Novo Planalto")
Cidade.create!(:estado => e, :nome => "Orizona")
Cidade.create!(:estado => e, :nome => "Ouro Verde de Goiás")
Cidade.create!(:estado => e, :nome => "Ouvidor")
Cidade.create!(:estado => e, :nome => "Padre Bernardo")
Cidade.create!(:estado => e, :nome => "Palestina de Goiás")
Cidade.create!(:estado => e, :nome => "Palmeiras de Goiás")
Cidade.create!(:estado => e, :nome => "Palmelo")
Cidade.create!(:estado => e, :nome => "Palminópolis")
Cidade.create!(:estado => e, :nome => "Panamá")
Cidade.create!(:estado => e, :nome => "Paranaiguara")
Cidade.create!(:estado => e, :nome => "Paraúna")
Cidade.create!(:estado => e, :nome => "Perolândia")
Cidade.create!(:estado => e, :nome => "Petrolina de Goiás")
Cidade.create!(:estado => e, :nome => "Pilar de Goiás")
Cidade.create!(:estado => e, :nome => "Piracanjuba")
Cidade.create!(:estado => e, :nome => "Piranhas")
Cidade.create!(:estado => e, :nome => "Pirenópolis")
Cidade.create!(:estado => e, :nome => "Pires do Rio")
Cidade.create!(:estado => e, :nome => "Planaltina")
Cidade.create!(:estado => e, :nome => "Pontalina")
Cidade.create!(:estado => e, :nome => "Porangatu")
Cidade.create!(:estado => e, :nome => "Porteirão")
Cidade.create!(:estado => e, :nome => "Portelândia")
Cidade.create!(:estado => e, :nome => "Posse")
Cidade.create!(:estado => e, :nome => "Professor Jamil")
Cidade.create!(:estado => e, :nome => "Quirinópolis")
Cidade.create!(:estado => e, :nome => "Rialma")
Cidade.create!(:estado => e, :nome => "Rianápolis")
Cidade.create!(:estado => e, :nome => "Rio Quente")
Cidade.create!(:estado => e, :nome => "Rio Verde")
Cidade.create!(:estado => e, :nome => "Rubiataba")
Cidade.create!(:estado => e, :nome => "Sanclerlândia")
Cidade.create!(:estado => e, :nome => "Santa Bárbara de Goiás")
Cidade.create!(:estado => e, :nome => "Santa Cruz de Goiás")
Cidade.create!(:estado => e, :nome => "Santa Fé de Goiás")
Cidade.create!(:estado => e, :nome => "Santa Helena de Goiás")
Cidade.create!(:estado => e, :nome => "Santa Isabel")
Cidade.create!(:estado => e, :nome => "Santa Rita do Araguaia")
Cidade.create!(:estado => e, :nome => "Santa Rita do Novo Destino")
Cidade.create!(:estado => e, :nome => "Santa Rosa de Goiás")
Cidade.create!(:estado => e, :nome => "Santa Tereza de Goiás")
Cidade.create!(:estado => e, :nome => "Santa Terezinha de Goiás")
Cidade.create!(:estado => e, :nome => "Santo Antônio da Barra")
Cidade.create!(:estado => e, :nome => "Santo Antônio de Goiás")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Descoberto")
Cidade.create!(:estado => e, :nome => "Senador Canedo")
Cidade.create!(:estado => e, :nome => "Serranópolis")
Cidade.create!(:estado => e, :nome => "Silvânia")
Cidade.create!(:estado => e, :nome => "Simolândia")
Cidade.create!(:estado => e, :nome => "São Domingos")
Cidade.create!(:estado => e, :nome => "São Francisco de Goiás")
Cidade.create!(:estado => e, :nome => "São João dAliança")
Cidade.create!(:estado => e, :nome => "São João da Paraúna")
Cidade.create!(:estado => e, :nome => "São Luís de Montes Belos")
Cidade.create!(:estado => e, :nome => "São Luíz do Norte")
Cidade.create!(:estado => e, :nome => "São Miguel do Araguaia")
Cidade.create!(:estado => e, :nome => "São Miguel do Passa Quatro")
Cidade.create!(:estado => e, :nome => "São Patrício")
Cidade.create!(:estado => e, :nome => "São Simão")
Cidade.create!(:estado => e, :nome => "Sítio dAbadia")
Cidade.create!(:estado => e, :nome => "Taquaral de Goiás")
Cidade.create!(:estado => e, :nome => "Teresina de Goiás")
Cidade.create!(:estado => e, :nome => "Terezópolis de Goiás")
Cidade.create!(:estado => e, :nome => "Trindade")
Cidade.create!(:estado => e, :nome => "Trombas")
Cidade.create!(:estado => e, :nome => "Três Ranchos")
Cidade.create!(:estado => e, :nome => "Turvelândia")
Cidade.create!(:estado => e, :nome => "Turvânia")
Cidade.create!(:estado => e, :nome => "Uirapuru")
Cidade.create!(:estado => e, :nome => "Uruana")
Cidade.create!(:estado => e, :nome => "Uruaçu")
Cidade.create!(:estado => e, :nome => "Urutaí")
Cidade.create!(:estado => e, :nome => "Valparaíso de Goiás")
Cidade.create!(:estado => e, :nome => "Varjão")
Cidade.create!(:estado => e, :nome => "Vianópolis")
Cidade.create!(:estado => e, :nome => "Vicentinópolis")
Cidade.create!(:estado => e, :nome => "Vila Boa")
Cidade.create!(:estado => e, :nome => "Vila Propício")


Estado.create!(:unidade => u, :sigla => 'MA', :nome => "Maranhão")
e = Estado.find_by(nome: "Maranhão")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Afonso Cunha")
Cidade.create!(:estado => e, :nome => "Água Doce do Maranhão")
Cidade.create!(:estado => e, :nome => "Alcântara")
Cidade.create!(:estado => e, :nome => "Aldeias Altas")
Cidade.create!(:estado => e, :nome => "Altamira do Maranhão")
Cidade.create!(:estado => e, :nome => "Alto Alegre do Maranhão")
Cidade.create!(:estado => e, :nome => "Alto Alegre do Pindaré")
Cidade.create!(:estado => e, :nome => "Alto Parnaíba")
Cidade.create!(:estado => e, :nome => "Amapá do Maranhão")
Cidade.create!(:estado => e, :nome => "Amarante do Maranhão")
Cidade.create!(:estado => e, :nome => "Anajatuba")
Cidade.create!(:estado => e, :nome => "Anapurus")
Cidade.create!(:estado => e, :nome => "Apicum-Açu")
Cidade.create!(:estado => e, :nome => "Araguanã")
Cidade.create!(:estado => e, :nome => "Araioses")
Cidade.create!(:estado => e, :nome => "Arame")
Cidade.create!(:estado => e, :nome => "Arari")
Cidade.create!(:estado => e, :nome => "Axixá")
Cidade.create!(:estado => e, :nome => "Açailândia")
Cidade.create!(:estado => e, :nome => "Bacabal")
Cidade.create!(:estado => e, :nome => "Bacabeira")
Cidade.create!(:estado => e, :nome => "Bacuri")
Cidade.create!(:estado => e, :nome => "Bacurituba")
Cidade.create!(:estado => e, :nome => "Balsas")
Cidade.create!(:estado => e, :nome => "Barra do Corda")
Cidade.create!(:estado => e, :nome => "Barreirinhas")
Cidade.create!(:estado => e, :nome => "Barão de Grajaú")
Cidade.create!(:estado => e, :nome => "Bela Vista do Maranhão")
Cidade.create!(:estado => e, :nome => "Belágua")
Cidade.create!(:estado => e, :nome => "Benedito Leite")
Cidade.create!(:estado => e, :nome => "Bequimão")
Cidade.create!(:estado => e, :nome => "Bernardo do Mearim")
Cidade.create!(:estado => e, :nome => "Boa Vista do Gurupi")
Cidade.create!(:estado => e, :nome => "Bom Jardim")
Cidade.create!(:estado => e, :nome => "Bom Jesus das Selvas")
Cidade.create!(:estado => e, :nome => "Bom Lugar")
Cidade.create!(:estado => e, :nome => "Brejo")
Cidade.create!(:estado => e, :nome => "Brejo de Areia")
Cidade.create!(:estado => e, :nome => "Buriti")
Cidade.create!(:estado => e, :nome => "Buriti Bravo")
Cidade.create!(:estado => e, :nome => "Buriticupu")
Cidade.create!(:estado => e, :nome => "Buritirana")
Cidade.create!(:estado => e, :nome => "Cachoeira Grande")
Cidade.create!(:estado => e, :nome => "Cajapió")
Cidade.create!(:estado => e, :nome => "Cajari")
Cidade.create!(:estado => e, :nome => "Campestre do Maranhão")
Cidade.create!(:estado => e, :nome => "Cantanhede")
Cidade.create!(:estado => e, :nome => "Capinzal do Norte")
Cidade.create!(:estado => e, :nome => "Carolina")
Cidade.create!(:estado => e, :nome => "Carutapera")
Cidade.create!(:estado => e, :nome => "Caxias")
Cidade.create!(:estado => e, :nome => "Cedral")
Cidade.create!(:estado => e, :nome => "Central do Maranhão")
Cidade.create!(:estado => e, :nome => "Centro Novo do Maranhão")
Cidade.create!(:estado => e, :nome => "Centro do Guilherme")
Cidade.create!(:estado => e, :nome => "Chapadinha")
Cidade.create!(:estado => e, :nome => "Cidelândia")
Cidade.create!(:estado => e, :nome => "Codó")
Cidade.create!(:estado => e, :nome => "Coelho Neto")
Cidade.create!(:estado => e, :nome => "Colinas")
Cidade.create!(:estado => e, :nome => "Conceição do Lago-Açu")
Cidade.create!(:estado => e, :nome => "Coroatá")
Cidade.create!(:estado => e, :nome => "Cururupu")
Cidade.create!(:estado => e, :nome => "Cândido Mes")
Cidade.create!(:estado => e, :nome => "Davinópolis")
Cidade.create!(:estado => e, :nome => "Dom Pedro")
Cidade.create!(:estado => e, :nome => "Duque Bacelar")
Cidade.create!(:estado => e, :nome => "Esperantinópolis")
Cidade.create!(:estado => e, :nome => "Estreito")
Cidade.create!(:estado => e, :nome => "Feira Nova do Maranhão")
Cidade.create!(:estado => e, :nome => "Fernando Falcão")
Cidade.create!(:estado => e, :nome => "Formosa da Serra Negra")
Cidade.create!(:estado => e, :nome => "Fortaleza dos Nogueiras")
Cidade.create!(:estado => e, :nome => "Fortuna")
Cidade.create!(:estado => e, :nome => "Godofredo Viana")
Cidade.create!(:estado => e, :nome => "Gonçalves Dias")
Cidade.create!(:estado => e, :nome => "Governador Archer")
Cidade.create!(:estado => e, :nome => "Governador Edison Lobão")
Cidade.create!(:estado => e, :nome => "Governador Eugênio Barros")
Cidade.create!(:estado => e, :nome => "Governador Luiz Rocha")
Cidade.create!(:estado => e, :nome => "Governador Newton Bello")
Cidade.create!(:estado => e, :nome => "Governador Nunes Freire")
Cidade.create!(:estado => e, :nome => "Grajaú")
Cidade.create!(:estado => e, :nome => "Graça Aranha")
Cidade.create!(:estado => e, :nome => "Guimarães")
Cidade.create!(:estado => e, :nome => "Humberto de Campos")
Cidade.create!(:estado => e, :nome => "Icatu")
Cidade.create!(:estado => e, :nome => "Igarapé Grande")
Cidade.create!(:estado => e, :nome => "Igarapé do Meio")
Cidade.create!(:estado => e, :nome => "Imperatriz")
Cidade.create!(:estado => e, :nome => "Itaipava do Grajaú")
Cidade.create!(:estado => e, :nome => "Itapecuru Mirim")
Cidade.create!(:estado => e, :nome => "Itinga do Maranhão")
Cidade.create!(:estado => e, :nome => "Jatobá")
Cidade.create!(:estado => e, :nome => "Jenipapo dos Vieiras")
Cidade.create!(:estado => e, :nome => "Joselândia")
Cidade.create!(:estado => e, :nome => "João Lisboa")
Cidade.create!(:estado => e, :nome => "Junco do Maranhão")
Cidade.create!(:estado => e, :nome => "Lago Verde")
Cidade.create!(:estado => e, :nome => "Lago da Pedra")
Cidade.create!(:estado => e, :nome => "Lago do Junco")
Cidade.create!(:estado => e, :nome => "Lago dos Rodrigues")
Cidade.create!(:estado => e, :nome => "Lagoa Grande do Maranhão")
Cidade.create!(:estado => e, :nome => "Lagoa do Mato")
Cidade.create!(:estado => e, :nome => "Lajeado Novo")
Cidade.create!(:estado => e, :nome => "Lima Campos")
Cidade.create!(:estado => e, :nome => "Loreto")
Cidade.create!(:estado => e, :nome => "Luís Domingues")
Cidade.create!(:estado => e, :nome => "Magalhães de Almeida")
Cidade.create!(:estado => e, :nome => "Maracaçumé")
Cidade.create!(:estado => e, :nome => "Marajá do Sena")
Cidade.create!(:estado => e, :nome => "Maranhãozinho")
Cidade.create!(:estado => e, :nome => "Mata Roma")
Cidade.create!(:estado => e, :nome => "Matinha")
Cidade.create!(:estado => e, :nome => "Matões")
Cidade.create!(:estado => e, :nome => "Matões do Norte")
Cidade.create!(:estado => e, :nome => "Milagres do Maranhão")
Cidade.create!(:estado => e, :nome => "Mirador")
Cidade.create!(:estado => e, :nome => "Miranda do Norte")
Cidade.create!(:estado => e, :nome => "Mirinzal")
Cidade.create!(:estado => e, :nome => "Montes Altos")
Cidade.create!(:estado => e, :nome => "Monção")
Cidade.create!(:estado => e, :nome => "Morros")
Cidade.create!(:estado => e, :nome => "Nina Rodrigues")
Cidade.create!(:estado => e, :nome => "Nova Colinas")
Cidade.create!(:estado => e, :nome => "Nova Iorque")
Cidade.create!(:estado => e, :nome => "Nova Olinda do Maranhão")
Cidade.create!(:estado => e, :nome => "Olho dÁgua das Cunhãs")
Cidade.create!(:estado => e, :nome => "Olinda Nova do Maranhão")
Cidade.create!(:estado => e, :nome => "Palmeirândia")
Cidade.create!(:estado => e, :nome => "Paraibano")
Cidade.create!(:estado => e, :nome => "Parnarama")
Cidade.create!(:estado => e, :nome => "Passagem Franca")
Cidade.create!(:estado => e, :nome => "Pastos Bons")
Cidade.create!(:estado => e, :nome => "Paulino Neves")
Cidade.create!(:estado => e, :nome => "Paulo Ramos")
Cidade.create!(:estado => e, :nome => "Paço do Lumiar")
Cidade.create!(:estado => e, :nome => "Pedreiras")
Cidade.create!(:estado => e, :nome => "Pedro do Rosário")
Cidade.create!(:estado => e, :nome => "Penalva")
Cidade.create!(:estado => e, :nome => "Peri Mirim")
Cidade.create!(:estado => e, :nome => "Peritoró")
Cidade.create!(:estado => e, :nome => "Pindaré-Mirim")
Cidade.create!(:estado => e, :nome => "Pinheiro")
Cidade.create!(:estado => e, :nome => "Pio XII")
Cidade.create!(:estado => e, :nome => "Pirapemas")
Cidade.create!(:estado => e, :nome => "Porto Franco")
Cidade.create!(:estado => e, :nome => "Porto Rico do Maranhão")
Cidade.create!(:estado => e, :nome => "Poção de Pedras")
Cidade.create!(:estado => e, :nome => "Presidente Dutra")
Cidade.create!(:estado => e, :nome => "Presidente Juscelino")
Cidade.create!(:estado => e, :nome => "Presidente Médici")
Cidade.create!(:estado => e, :nome => "Presidente Sarney")
Cidade.create!(:estado => e, :nome => "Presidente Vargas")
Cidade.create!(:estado => e, :nome => "Primeira Cruz")
Cidade.create!(:estado => e, :nome => "Raposa")
Cidade.create!(:estado => e, :nome => "Riachão")
Cidade.create!(:estado => e, :nome => "Ribamar Fiquene")
Cidade.create!(:estado => e, :nome => "Rosário")
Cidade.create!(:estado => e, :nome => "Sambaíba")
Cidade.create!(:estado => e, :nome => "Santa Filomena do Maranhão")
Cidade.create!(:estado => e, :nome => "Santa Helena")
Cidade.create!(:estado => e, :nome => "Santa Inês")
Cidade.create!(:estado => e, :nome => "Santa Luzia")
Cidade.create!(:estado => e, :nome => "Santa Luzia do Paruá")
Cidade.create!(:estado => e, :nome => "Santa Quitéria do Maranhão")
Cidade.create!(:estado => e, :nome => "Santa Rita")
Cidade.create!(:estado => e, :nome => "Santana do Maranhão")
Cidade.create!(:estado => e, :nome => "Santo Amaro do Maranhão")
Cidade.create!(:estado => e, :nome => "Santo Antônio dos Lopes")
Cidade.create!(:estado => e, :nome => "Satubinha")
Cidade.create!(:estado => e, :nome => "Senador Alexandre Costa")
Cidade.create!(:estado => e, :nome => "Senador La Rocque")
Cidade.create!(:estado => e, :nome => "Serrano do Maranhão")
Cidade.create!(:estado => e, :nome => "Sucupira do Norte")
Cidade.create!(:estado => e, :nome => "Sucupira do Riachão")
Cidade.create!(:estado => e, :nome => "São Benedito do Rio Preto")
Cidade.create!(:estado => e, :nome => "São Bento")
Cidade.create!(:estado => e, :nome => "São Bernardo")
Cidade.create!(:estado => e, :nome => "São Domingos do Azeitão")
Cidade.create!(:estado => e, :nome => "São Domingos do Maranhão")
Cidade.create!(:estado => e, :nome => "São Francisco do Brejão")
Cidade.create!(:estado => e, :nome => "São Francisco do Maranhão")
Cidade.create!(:estado => e, :nome => "São Félix de Balsas")
Cidade.create!(:estado => e, :nome => "São José de Ribamar")
Cidade.create!(:estado => e, :nome => "São José dos Basílios")
Cidade.create!(:estado => e, :nome => "São João Batista")
Cidade.create!(:estado => e, :nome => "São João do Carú")
Cidade.create!(:estado => e, :nome => "São João do Paraíso")
Cidade.create!(:estado => e, :nome => "São João do Soter")
Cidade.create!(:estado => e, :nome => "São João dos Patos")
Cidade.create!(:estado => e, :nome => "São Luís")
Cidade.create!(:estado => e, :nome => "São Luís Gonzaga do Maranhão")
Cidade.create!(:estado => e, :nome => "São Mateus do Maranhão")
Cidade.create!(:estado => e, :nome => "São Pedro da Água Branca")
Cidade.create!(:estado => e, :nome => "São Pedro dos Crentes")
Cidade.create!(:estado => e, :nome => "São Raimundo das Mangabeiras")
Cidade.create!(:estado => e, :nome => "São Raimundo do Doca Bezerra")
Cidade.create!(:estado => e, :nome => "São Roberto")
Cidade.create!(:estado => e, :nome => "São Vicente Ferrer")
Cidade.create!(:estado => e, :nome => "Sítio Novo")
Cidade.create!(:estado => e, :nome => "Tasso Fragoso")
Cidade.create!(:estado => e, :nome => "Timbiras")
Cidade.create!(:estado => e, :nome => "Timon")
Cidade.create!(:estado => e, :nome => "Trizidela do Vale")
Cidade.create!(:estado => e, :nome => "Tsiglailândia")
Cidade.create!(:estado => e, :nome => "Tuntum")
Cidade.create!(:estado => e, :nome => "Turiaçu")
Cidade.create!(:estado => e, :nome => "Turilândia")
Cidade.create!(:estado => e, :nome => "Tutóia")
Cidade.create!(:estado => e, :nome => "Urbano Santos")
Cidade.create!(:estado => e, :nome => "Vargem Grande")
Cidade.create!(:estado => e, :nome => "Viana")
Cidade.create!(:estado => e, :nome => "Vila Nova dos Martírios")
Cidade.create!(:estado => e, :nome => "Vitorino Freire")
Cidade.create!(:estado => e, :nome => "Vitória do Mearim")
Cidade.create!(:estado => e, :nome => "Zé Doca")


Estado.create!(:unidade => u, :sigla => 'MG', :nome => "Minas Gerais")
e = Estado.find_by(nome: "Minas Gerais")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Abadia dos Dourados")
Cidade.create!(:estado => e, :nome => "Abaeté")
Cidade.create!(:estado => e, :nome => "Abre Campo")
Cidade.create!(:estado => e, :nome => "Acaiaca")
Cidade.create!(:estado => e, :nome => "Água Boa")
Cidade.create!(:estado => e, :nome => "Água Comprida")
Cidade.create!(:estado => e, :nome => "Aguanil")
Cidade.create!(:estado => e, :nome => "Águas Formosas")
Cidade.create!(:estado => e, :nome => "Águas Vermelhas")
Cidade.create!(:estado => e, :nome => "Aimorés")
Cidade.create!(:estado => e, :nome => "Aiuruoca")
Cidade.create!(:estado => e, :nome => "Alagoa")
Cidade.create!(:estado => e, :nome => "Albertina")
Cidade.create!(:estado => e, :nome => "Alfenas")
Cidade.create!(:estado => e, :nome => "Alfredo Vasconcelos")
Cidade.create!(:estado => e, :nome => "Almenara")
Cidade.create!(:estado => e, :nome => "Alpercata")
Cidade.create!(:estado => e, :nome => "Alpinópolis")
Cidade.create!(:estado => e, :nome => "Alterosa")
Cidade.create!(:estado => e, :nome => "Alto Caparaó")
Cidade.create!(:estado => e, :nome => "Alto Jequitibá")
Cidade.create!(:estado => e, :nome => "Alto Rio Doce")
Cidade.create!(:estado => e, :nome => "Alvarenga")
Cidade.create!(:estado => e, :nome => "Alvinópolis")
Cidade.create!(:estado => e, :nome => "Alvorada de Minas")
Cidade.create!(:estado => e, :nome => "Além Paraíba")
Cidade.create!(:estado => e, :nome => "Amparo do Serra")
Cidade.create!(:estado => e, :nome => "Andradas")
Cidade.create!(:estado => e, :nome => "Andrelândia")
Cidade.create!(:estado => e, :nome => "Angelândia")
Cidade.create!(:estado => e, :nome => "Antônio Carlos")
Cidade.create!(:estado => e, :nome => "Antônio Dias")
Cidade.create!(:estado => e, :nome => "Antônio Prado de Minas")
Cidade.create!(:estado => e, :nome => "Aracitaba")
Cidade.create!(:estado => e, :nome => "Araguari")
Cidade.create!(:estado => e, :nome => "Arantina")
Cidade.create!(:estado => e, :nome => "Araponga")
Cidade.create!(:estado => e, :nome => "Araporã")
Cidade.create!(:estado => e, :nome => "Arapuá")
Cidade.create!(:estado => e, :nome => "Araxá")
Cidade.create!(:estado => e, :nome => "Araçaí")
Cidade.create!(:estado => e, :nome => "Araçuaí")
Cidade.create!(:estado => e, :nome => "Araújos")
Cidade.create!(:estado => e, :nome => "Arceburgo")
Cidade.create!(:estado => e, :nome => "Arcos")
Cidade.create!(:estado => e, :nome => "Areado")
Cidade.create!(:estado => e, :nome => "Argirita")
Cidade.create!(:estado => e, :nome => "Aricanduva")
Cidade.create!(:estado => e, :nome => "Arinos")
Cidade.create!(:estado => e, :nome => "Astolfo Dutra")
Cidade.create!(:estado => e, :nome => "Ataléia")
Cidade.create!(:estado => e, :nome => "Augusto de Lima")
Cidade.create!(:estado => e, :nome => "Açucena")
Cidade.create!(:estado => e, :nome => "Baepi")
Cidade.create!(:estado => e, :nome => "Baldim")
Cidade.create!(:estado => e, :nome => "Bambuí")
Cidade.create!(:estado => e, :nome => "Bandeira")
Cidade.create!(:estado => e, :nome => "Bandeira do Sul")
Cidade.create!(:estado => e, :nome => "Barbacena")
Cidade.create!(:estado => e, :nome => "Barra Longa")
Cidade.create!(:estado => e, :nome => "Barroso")
Cidade.create!(:estado => e, :nome => "Barão de Cocais")
Cidade.create!(:estado => e, :nome => "Barão de Monte Alto")
Cidade.create!(:estado => e, :nome => "Bela Vista de Minas")
Cidade.create!(:estado => e, :nome => "Belmiro Braga")
Cidade.create!(:estado => e, :nome => "Belo Horizonte")
Cidade.create!(:estado => e, :nome => "Belo Oriente")
Cidade.create!(:estado => e, :nome => "Belo Vale")
Cidade.create!(:estado => e, :nome => "Berilo")
Cidade.create!(:estado => e, :nome => "Berizal")
Cidade.create!(:estado => e, :nome => "Bertópolis")
Cidade.create!(:estado => e, :nome => "Betim")
Cidade.create!(:estado => e, :nome => "Bias Fortes")
Cidade.create!(:estado => e, :nome => "Bicas")
Cidade.create!(:estado => e, :nome => "Biquinhas")
Cidade.create!(:estado => e, :nome => "Boa Esperança")
Cidade.create!(:estado => e, :nome => "Bocaina de Minas")
Cidade.create!(:estado => e, :nome => "Bocaiúva")
Cidade.create!(:estado => e, :nome => "Bom Despacho")
Cidade.create!(:estado => e, :nome => "Bom Jardim de Minas")
Cidade.create!(:estado => e, :nome => "Bom Jesus da Penha")
Cidade.create!(:estado => e, :nome => "Bom Jesus do Amparo")
Cidade.create!(:estado => e, :nome => "Bom Jesus do Galho")
Cidade.create!(:estado => e, :nome => "Bom Repouso")
Cidade.create!(:estado => e, :nome => "Bom Sucesso")
Cidade.create!(:estado => e, :nome => "Bonfim")
Cidade.create!(:estado => e, :nome => "Bonfinópolis de Minas")
Cidade.create!(:estado => e, :nome => "Bonito de Minas")
Cidade.create!(:estado => e, :nome => "Borda da Mata")
Cidade.create!(:estado => e, :nome => "Botelhos")
Cidade.create!(:estado => e, :nome => "Botumirim")
Cidade.create!(:estado => e, :nome => "Brasilândia de Minas")
Cidade.create!(:estado => e, :nome => "Brasília de Minas")
Cidade.create!(:estado => e, :nome => "Brasópolis")
Cidade.create!(:estado => e, :nome => "Braúnas")
Cidade.create!(:estado => e, :nome => "Brumadinho")
Cidade.create!(:estado => e, :nome => "Brás Pires")
Cidade.create!(:estado => e, :nome => "Bueno Brandão")
Cidade.create!(:estado => e, :nome => "Buenópolis")
Cidade.create!(:estado => e, :nome => "Bugre")
Cidade.create!(:estado => e, :nome => "Buritis")
Cidade.create!(:estado => e, :nome => "Buritizeiro")
Cidade.create!(:estado => e, :nome => "Cabeceira Grande")
Cidade.create!(:estado => e, :nome => "Cabo Verde")
Cidade.create!(:estado => e, :nome => "Cachoeira Dourada")
Cidade.create!(:estado => e, :nome => "Cachoeira da Prata")
Cidade.create!(:estado => e, :nome => "Cachoeira de Minas")
Cidade.create!(:estado => e, :nome => "Cachoeira de Pajeú")
Cidade.create!(:estado => e, :nome => "Caetanópolis")
Cidade.create!(:estado => e, :nome => "Caeté")
Cidade.create!(:estado => e, :nome => "Caiana")
Cidade.create!(:estado => e, :nome => "Cajuri")
Cidade.create!(:estado => e, :nome => "Caldas")
Cidade.create!(:estado => e, :nome => "Camacho")
Cidade.create!(:estado => e, :nome => "Camanducaia")
Cidade.create!(:estado => e, :nome => "Cambuquira")
Cidade.create!(:estado => e, :nome => "Cambuí")
Cidade.create!(:estado => e, :nome => "Campanha")
Cidade.create!(:estado => e, :nome => "Campanário")
Cidade.create!(:estado => e, :nome => "Campestre")
Cidade.create!(:estado => e, :nome => "Campina Verde")
Cidade.create!(:estado => e, :nome => "Campo Azul")
Cidade.create!(:estado => e, :nome => "Campo Belo")
Cidade.create!(:estado => e, :nome => "Campo Florido")
Cidade.create!(:estado => e, :nome => "Campo do Meio")
Cidade.create!(:estado => e, :nome => "Campos Altos")
Cidade.create!(:estado => e, :nome => "Campos Gerais")
Cidade.create!(:estado => e, :nome => "Cana Verde")
Cidade.create!(:estado => e, :nome => "Canaã")
Cidade.create!(:estado => e, :nome => "Candeias")
Cidade.create!(:estado => e, :nome => "Cantagalo")
Cidade.create!(:estado => e, :nome => "Canápolis")
Cidade.create!(:estado => e, :nome => "Caparaó")
Cidade.create!(:estado => e, :nome => "Capela Nova")
Cidade.create!(:estado => e, :nome => "Capelinha")
Cidade.create!(:estado => e, :nome => "Capetinga")
Cidade.create!(:estado => e, :nome => "Capim Branco")
Cidade.create!(:estado => e, :nome => "Capinópolis")
Cidade.create!(:estado => e, :nome => "Capitão Andrade")
Cidade.create!(:estado => e, :nome => "Capitão Enéas")
Cidade.create!(:estado => e, :nome => "Capitólio")
Cidade.create!(:estado => e, :nome => "Caputira")
Cidade.create!(:estado => e, :nome => "Caranaíba")
Cidade.create!(:estado => e, :nome => "Carandaí")
Cidade.create!(:estado => e, :nome => "Carangola")
Cidade.create!(:estado => e, :nome => "Caratinga")
Cidade.create!(:estado => e, :nome => "Caraí")
Cidade.create!(:estado => e, :nome => "Carbonita")
Cidade.create!(:estado => e, :nome => "Careaçu")
Cidade.create!(:estado => e, :nome => "Carlos Chagas")
Cidade.create!(:estado => e, :nome => "Carmo da Cachoeira")
Cidade.create!(:estado => e, :nome => "Carmo da Mata")
Cidade.create!(:estado => e, :nome => "Carmo de Minas")
Cidade.create!(:estado => e, :nome => "Carmo do Cajuru")
Cidade.create!(:estado => e, :nome => "Carmo do Paranaíba")
Cidade.create!(:estado => e, :nome => "Carmo do Rio Claro")
Cidade.create!(:estado => e, :nome => "Carmésia")
Cidade.create!(:estado => e, :nome => "Carmópolis de Minas")
Cidade.create!(:estado => e, :nome => "Carneirinho")
Cidade.create!(:estado => e, :nome => "Carrancas")
Cidade.create!(:estado => e, :nome => "Carvalhos")
Cidade.create!(:estado => e, :nome => "Carvalhópolis")
Cidade.create!(:estado => e, :nome => "Casa Grande")
Cidade.create!(:estado => e, :nome => "Cascalho Rico")
Cidade.create!(:estado => e, :nome => "Cataguases")
Cidade.create!(:estado => e, :nome => "Catas Altas")
Cidade.create!(:estado => e, :nome => "Catas Altas da Noruega")
Cidade.create!(:estado => e, :nome => "Catuji")
Cidade.create!(:estado => e, :nome => "Catuti")
Cidade.create!(:estado => e, :nome => "Caxambu")
Cidade.create!(:estado => e, :nome => "Cedro do Abaeté")
Cidade.create!(:estado => e, :nome => "Central de Minas")
Cidade.create!(:estado => e, :nome => "Centralina")
Cidade.create!(:estado => e, :nome => "Chalé")
Cidade.create!(:estado => e, :nome => "Chapada Gaúcha")
Cidade.create!(:estado => e, :nome => "Chapada do Norte")
Cidade.create!(:estado => e, :nome => "Chiador")
Cidade.create!(:estado => e, :nome => "Chácara")
Cidade.create!(:estado => e, :nome => "Cipotânea")
Cidade.create!(:estado => e, :nome => "Claraval")
Cidade.create!(:estado => e, :nome => "Claro dos Poções")
Cidade.create!(:estado => e, :nome => "Cláudio")
Cidade.create!(:estado => e, :nome => "Coimbra")
Cidade.create!(:estado => e, :nome => "Coluna")
Cidade.create!(:estado => e, :nome => "Comador Gomes")
Cidade.create!(:estado => e, :nome => "Comercinho")
Cidade.create!(:estado => e, :nome => "Conceição da Aparecida")
Cidade.create!(:estado => e, :nome => "Conceição da Barra de Minas")
Cidade.create!(:estado => e, :nome => "Conceição das Alagoas")
Cidade.create!(:estado => e, :nome => "Conceição das Pedras")
Cidade.create!(:estado => e, :nome => "Conceição de Ipanema")
Cidade.create!(:estado => e, :nome => "Conceição do Mato Dentro")
Cidade.create!(:estado => e, :nome => "Conceição do Pará")
Cidade.create!(:estado => e, :nome => "Conceição do Rio Verde")
Cidade.create!(:estado => e, :nome => "Conceição dos Ouros")
Cidade.create!(:estado => e, :nome => "Confins")
Cidade.create!(:estado => e, :nome => "Congonhal")
Cidade.create!(:estado => e, :nome => "Congonhas")
Cidade.create!(:estado => e, :nome => "Congonhas do Norte")
Cidade.create!(:estado => e, :nome => "Conquista")
Cidade.create!(:estado => e, :nome => "Conselheiro Lafaiete")
Cidade.create!(:estado => e, :nome => "Conselheiro Pena")
Cidade.create!(:estado => e, :nome => "Consolação")
Cidade.create!(:estado => e, :nome => "Contagem")
Cidade.create!(:estado => e, :nome => "Coqueiral")
Cidade.create!(:estado => e, :nome => "Coração de Jesus")
Cidade.create!(:estado => e, :nome => "Cordisburgo")
Cidade.create!(:estado => e, :nome => "Cordislândia")
Cidade.create!(:estado => e, :nome => "Corinto")
Cidade.create!(:estado => e, :nome => "Coroaci")
Cidade.create!(:estado => e, :nome => "Coromandel")
Cidade.create!(:estado => e, :nome => "Coronel Fabriciano")
Cidade.create!(:estado => e, :nome => "Coronel Murta")
Cidade.create!(:estado => e, :nome => "Coronel Pacheco")
Cidade.create!(:estado => e, :nome => "Coronel Xavier Chaves")
Cidade.create!(:estado => e, :nome => "Couto de Magalhães de Minas")
Cidade.create!(:estado => e, :nome => "Cristais")
Cidade.create!(:estado => e, :nome => "Cristiano Otoni")
Cidade.create!(:estado => e, :nome => "Cristina")
Cidade.create!(:estado => e, :nome => "Cristália")
Cidade.create!(:estado => e, :nome => "Crisólita")
Cidade.create!(:estado => e, :nome => "Crucilândia")
Cidade.create!(:estado => e, :nome => "Cruzeiro da Fortaleza")
Cidade.create!(:estado => e, :nome => "Cruzília")
Cidade.create!(:estado => e, :nome => "Cuparaque")
Cidade.create!(:estado => e, :nome => "Curral de Dentro")
Cidade.create!(:estado => e, :nome => "Curvelo")
Cidade.create!(:estado => e, :nome => "Cássia")
Cidade.create!(:estado => e, :nome => "Córrego Danta")
Cidade.create!(:estado => e, :nome => "Córrego Fundo")
Cidade.create!(:estado => e, :nome => "Córrego Novo")
Cidade.create!(:estado => e, :nome => "Córrego do Bom Jesus")
Cidade.create!(:estado => e, :nome => "Cônego Marinho")
Cidade.create!(:estado => e, :nome => "Datas")
Cidade.create!(:estado => e, :nome => "Delfim Moreira")
Cidade.create!(:estado => e, :nome => "Delfinópolis")
Cidade.create!(:estado => e, :nome => "Delta")
Cidade.create!(:estado => e, :nome => "Descoberto")
Cidade.create!(:estado => e, :nome => "Desterro de Entre Rios")
Cidade.create!(:estado => e, :nome => "Desterro do Melo")
Cidade.create!(:estado => e, :nome => "Diamantina")
Cidade.create!(:estado => e, :nome => "Diogo de Vasconcelos")
Cidade.create!(:estado => e, :nome => "Dionísio")
Cidade.create!(:estado => e, :nome => "Divino")
Cidade.create!(:estado => e, :nome => "Divino das Laranjeiras")
Cidade.create!(:estado => e, :nome => "Divinolândia de Minas")
Cidade.create!(:estado => e, :nome => "Divinésia")
Cidade.create!(:estado => e, :nome => "Divinópolis")
Cidade.create!(:estado => e, :nome => "Divisa Alegre")
Cidade.create!(:estado => e, :nome => "Divisa Nova")
Cidade.create!(:estado => e, :nome => "Divisópolis")
Cidade.create!(:estado => e, :nome => "Dom Bosco")
Cidade.create!(:estado => e, :nome => "Dom Cavati")
Cidade.create!(:estado => e, :nome => "Dom Joaquim")
Cidade.create!(:estado => e, :nome => "Dom Silvério")
Cidade.create!(:estado => e, :nome => "Dom Viçoso")
Cidade.create!(:estado => e, :nome => "Dona Eusébia")
Cidade.create!(:estado => e, :nome => "Dores de Campos")
Cidade.create!(:estado => e, :nome => "Dores de Guanhães")
Cidade.create!(:estado => e, :nome => "Dores do Indaiá")
Cidade.create!(:estado => e, :nome => "Dores do Turvo")
Cidade.create!(:estado => e, :nome => "Doresópolis")
Cidade.create!(:estado => e, :nome => "Douradoquara")
Cidade.create!(:estado => e, :nome => "Durandé")
Cidade.create!(:estado => e, :nome => "Elói Mes")
Cidade.create!(:estado => e, :nome => "Engenheiro Caldas")
Cidade.create!(:estado => e, :nome => "Engenheiro Navarro")
Cidade.create!(:estado => e, :nome => "Entre Folhas")
Cidade.create!(:estado => e, :nome => "Entre Rios de Minas")
Cidade.create!(:estado => e, :nome => "Ervália")
Cidade.create!(:estado => e, :nome => "Esmeraldas")
Cidade.create!(:estado => e, :nome => "Espera Feliz")
Cidade.create!(:estado => e, :nome => "Espinosa")
Cidade.create!(:estado => e, :nome => "Espírito Santo do Dourado")
Cidade.create!(:estado => e, :nome => "Estiva")
Cidade.create!(:estado => e, :nome => "Estrela Dalva")
Cidade.create!(:estado => e, :nome => "Estrela do Indaiá")
Cidade.create!(:estado => e, :nome => "Estrela do Sul")
Cidade.create!(:estado => e, :nome => "Eugenópolis")
Cidade.create!(:estado => e, :nome => "Ewbank da Câmara")
Cidade.create!(:estado => e, :nome => "Extrema")
Cidade.create!(:estado => e, :nome => "Fama")
Cidade.create!(:estado => e, :nome => "Faria Lemos")
Cidade.create!(:estado => e, :nome => "Felisburgo")
Cidade.create!(:estado => e, :nome => "Felixlândia")
Cidade.create!(:estado => e, :nome => "Felício dos Santos")
Cidade.create!(:estado => e, :nome => "Fernandes Tourinho")
Cidade.create!(:estado => e, :nome => "Ferros")
Cidade.create!(:estado => e, :nome => "Fervedouro")
Cidade.create!(:estado => e, :nome => "Florestal")
Cidade.create!(:estado => e, :nome => "Formiga")
Cidade.create!(:estado => e, :nome => "Formoso")
Cidade.create!(:estado => e, :nome => "Fortaleza de Minas")
Cidade.create!(:estado => e, :nome => "Fortuna de Minas")
Cidade.create!(:estado => e, :nome => "Francisco Badaró")
Cidade.create!(:estado => e, :nome => "Francisco Dumont")
Cidade.create!(:estado => e, :nome => "Francisco Sá")
Cidade.create!(:estado => e, :nome => "Franciscópolis")
Cidade.create!(:estado => e, :nome => "Frei Gaspar")
Cidade.create!(:estado => e, :nome => "Frei Inocêncio")
Cidade.create!(:estado => e, :nome => "Frei Lagonegro")
Cidade.create!(:estado => e, :nome => "Fronteira")
Cidade.create!(:estado => e, :nome => "Fronteira dos Vales")
Cidade.create!(:estado => e, :nome => "Fruta de Leite")
Cidade.create!(:estado => e, :nome => "Frutal")
Cidade.create!(:estado => e, :nome => "Funilândia")
Cidade.create!(:estado => e, :nome => "Galiléia")
Cidade.create!(:estado => e, :nome => "Gameleiras")
Cidade.create!(:estado => e, :nome => "Glaucilândia")
Cidade.create!(:estado => e, :nome => "Goiabeira")
Cidade.create!(:estado => e, :nome => "Goianá")
Cidade.create!(:estado => e, :nome => "Gonzaga")
Cidade.create!(:estado => e, :nome => "Gonçalves")
Cidade.create!(:estado => e, :nome => "Gouveia")
Cidade.create!(:estado => e, :nome => "Governador Valadares")
Cidade.create!(:estado => e, :nome => "Grupiara")
Cidade.create!(:estado => e, :nome => "Grão Mogol")
Cidade.create!(:estado => e, :nome => "Guanhães")
Cidade.create!(:estado => e, :nome => "Guapé")
Cidade.create!(:estado => e, :nome => "Guaraciaba")
Cidade.create!(:estado => e, :nome => "Guaraciama")
Cidade.create!(:estado => e, :nome => "Guarani")
Cidade.create!(:estado => e, :nome => "Guaranésia")
Cidade.create!(:estado => e, :nome => "Guarará")
Cidade.create!(:estado => e, :nome => "Guarda-Mor")
Cidade.create!(:estado => e, :nome => "Guaxupé")
Cidade.create!(:estado => e, :nome => "Guidoval")
Cidade.create!(:estado => e, :nome => "Guimarânia")
Cidade.create!(:estado => e, :nome => "Guiricema")
Cidade.create!(:estado => e, :nome => "Gurinhatã")
Cidade.create!(:estado => e, :nome => "Heliodora")
Cidade.create!(:estado => e, :nome => "Iapu")
Cidade.create!(:estado => e, :nome => "Ibertioga")
Cidade.create!(:estado => e, :nome => "Ibiaí")
Cidade.create!(:estado => e, :nome => "Ibiracatu")
Cidade.create!(:estado => e, :nome => "Ibiraci")
Cidade.create!(:estado => e, :nome => "Ibirité")
Cidade.create!(:estado => e, :nome => "Ibitiúra de Minas")
Cidade.create!(:estado => e, :nome => "Ibituruna")
Cidade.create!(:estado => e, :nome => "Ibiá")
Cidade.create!(:estado => e, :nome => "Icaraí de Minas")
Cidade.create!(:estado => e, :nome => "Igarapé")
Cidade.create!(:estado => e, :nome => "Igaratinga")
Cidade.create!(:estado => e, :nome => "Iguatama")
Cidade.create!(:estado => e, :nome => "Ijaci")
Cidade.create!(:estado => e, :nome => "Ilicínea")
Cidade.create!(:estado => e, :nome => "Imbé de Minas")
Cidade.create!(:estado => e, :nome => "Inconfidentes")
Cidade.create!(:estado => e, :nome => "Indaiabira")
Cidade.create!(:estado => e, :nome => "Indianópolis")
Cidade.create!(:estado => e, :nome => "Ingaí")
Cidade.create!(:estado => e, :nome => "Inhapim")
Cidade.create!(:estado => e, :nome => "Inhaúma")
Cidade.create!(:estado => e, :nome => "Inimutaba")
Cidade.create!(:estado => e, :nome => "Ipaba")
Cidade.create!(:estado => e, :nome => "Ipanema")
Cidade.create!(:estado => e, :nome => "Ipatinga")
Cidade.create!(:estado => e, :nome => "Ipiaçu")
Cidade.create!(:estado => e, :nome => "Ipuiúna")
Cidade.create!(:estado => e, :nome => "Iraí de Minas")
Cidade.create!(:estado => e, :nome => "Itabira")
Cidade.create!(:estado => e, :nome => "Itabirinha")
Cidade.create!(:estado => e, :nome => "Itabirito")
Cidade.create!(:estado => e, :nome => "Itacambira")
Cidade.create!(:estado => e, :nome => "Itacarambi")
Cidade.create!(:estado => e, :nome => "Itaguara")
Cidade.create!(:estado => e, :nome => "Itaipé")
Cidade.create!(:estado => e, :nome => "Itajubá")
Cidade.create!(:estado => e, :nome => "Itamarandiba")
Cidade.create!(:estado => e, :nome => "Itamarati de Minas")
Cidade.create!(:estado => e, :nome => "Itambacuri")
Cidade.create!(:estado => e, :nome => "Itambé do Mato Dentro")
Cidade.create!(:estado => e, :nome => "Itamogi")
Cidade.create!(:estado => e, :nome => "Itamonte")
Cidade.create!(:estado => e, :nome => "Itanhandu")
Cidade.create!(:estado => e, :nome => "Itanhomi")
Cidade.create!(:estado => e, :nome => "Itaobim")
Cidade.create!(:estado => e, :nome => "Itapagipe")
Cidade.create!(:estado => e, :nome => "Itapecerica")
Cidade.create!(:estado => e, :nome => "Itapeva")
Cidade.create!(:estado => e, :nome => "Itatiaiuçu")
Cidade.create!(:estado => e, :nome => "Itaverava")
Cidade.create!(:estado => e, :nome => "Itaú de Minas")
Cidade.create!(:estado => e, :nome => "Itaúna")
Cidade.create!(:estado => e, :nome => "Itinga")
Cidade.create!(:estado => e, :nome => "Itueta")
Cidade.create!(:estado => e, :nome => "Ituiutaba")
Cidade.create!(:estado => e, :nome => "Itumirim")
Cidade.create!(:estado => e, :nome => "Iturama")
Cidade.create!(:estado => e, :nome => "Itutinga")
Cidade.create!(:estado => e, :nome => "Jaboticatubas")
Cidade.create!(:estado => e, :nome => "Jacinto")
Cidade.create!(:estado => e, :nome => "Jacutinga")
Cidade.create!(:estado => e, :nome => "Jacuí")
Cidade.create!(:estado => e, :nome => "Jaguaraçu")
Cidade.create!(:estado => e, :nome => "Jampruca")
Cidade.create!(:estado => e, :nome => "Janaúba")
Cidade.create!(:estado => e, :nome => "Januária")
Cidade.create!(:estado => e, :nome => "Japaraíba")
Cidade.create!(:estado => e, :nome => "Japonvar")
Cidade.create!(:estado => e, :nome => "Jaíba")
Cidade.create!(:estado => e, :nome => "Jeceaba")
Cidade.create!(:estado => e, :nome => "Jenipapo de Minas")
Cidade.create!(:estado => e, :nome => "Jequeri")
Cidade.create!(:estado => e, :nome => "Jequitaí")
Cidade.create!(:estado => e, :nome => "Jequitibá")
Cidade.create!(:estado => e, :nome => "Jequitinhonha")
Cidade.create!(:estado => e, :nome => "Jesuânia")
Cidade.create!(:estado => e, :nome => "Joanésia")
Cidade.create!(:estado => e, :nome => "Joaquim Felício")
Cidade.create!(:estado => e, :nome => "Joaíma")
Cidade.create!(:estado => e, :nome => "Jordânia")
Cidade.create!(:estado => e, :nome => "Josenópolis")
Cidade.create!(:estado => e, :nome => "José Gonçalves de Minas")
Cidade.create!(:estado => e, :nome => "José Raydan")
Cidade.create!(:estado => e, :nome => "João Monlevade")
Cidade.create!(:estado => e, :nome => "João Pinheiro")
Cidade.create!(:estado => e, :nome => "Juatuba")
Cidade.create!(:estado => e, :nome => "Juiz de Fora")
Cidade.create!(:estado => e, :nome => "Juramento")
Cidade.create!(:estado => e, :nome => "Juruaia")
Cidade.create!(:estado => e, :nome => "Juvenília")
Cidade.create!(:estado => e, :nome => "Ladainha")
Cidade.create!(:estado => e, :nome => "Lagamar")
Cidade.create!(:estado => e, :nome => "Lagoa Dourada")
Cidade.create!(:estado => e, :nome => "Lagoa Formosa")
Cidade.create!(:estado => e, :nome => "Lagoa Grande")
Cidade.create!(:estado => e, :nome => "Lagoa Santa")
Cidade.create!(:estado => e, :nome => "Lagoa da Prata")
Cidade.create!(:estado => e, :nome => "Lagoa dos Patos")
Cidade.create!(:estado => e, :nome => "Lajinha")
Cidade.create!(:estado => e, :nome => "Lambari")
Cidade.create!(:estado => e, :nome => "Lamim")
Cidade.create!(:estado => e, :nome => "Laranjal")
Cidade.create!(:estado => e, :nome => "Lassance")
Cidade.create!(:estado => e, :nome => "Lavras")
Cidade.create!(:estado => e, :nome => "Leandro Ferreira")
Cidade.create!(:estado => e, :nome => "Leme do Prado")
Cidade.create!(:estado => e, :nome => "Leopoldina")
Cidade.create!(:estado => e, :nome => "Liberdade")
Cidade.create!(:estado => e, :nome => "Lima Duarte")
Cidade.create!(:estado => e, :nome => "Limeira do Oeste")
Cidade.create!(:estado => e, :nome => "Lontra")
Cidade.create!(:estado => e, :nome => "Luisburgo")
Cidade.create!(:estado => e, :nome => "Luislândia")
Cidade.create!(:estado => e, :nome => "Luminárias")
Cidade.create!(:estado => e, :nome => "Luz")
Cidade.create!(:estado => e, :nome => "Machacalis")
Cidade.create!(:estado => e, :nome => "Machado")
Cidade.create!(:estado => e, :nome => "Madre de Deus de Minas")
Cidade.create!(:estado => e, :nome => "Malacacheta")
Cidade.create!(:estado => e, :nome => "Mamonas")
Cidade.create!(:estado => e, :nome => "Manga")
Cidade.create!(:estado => e, :nome => "Manhuaçu")
Cidade.create!(:estado => e, :nome => "Manhumirim")
Cidade.create!(:estado => e, :nome => "Mantena")
Cidade.create!(:estado => e, :nome => "Mar de Espanha")
Cidade.create!(:estado => e, :nome => "Maravilhas")
Cidade.create!(:estado => e, :nome => "Maria da Fé")
Cidade.create!(:estado => e, :nome => "Mariana")
Cidade.create!(:estado => e, :nome => "Marilac")
Cidade.create!(:estado => e, :nome => "Maripá de Minas")
Cidade.create!(:estado => e, :nome => "Marliéria")
Cidade.create!(:estado => e, :nome => "Marmelópolis")
Cidade.create!(:estado => e, :nome => "Martinho Campos")
Cidade.create!(:estado => e, :nome => "Martins Soares")
Cidade.create!(:estado => e, :nome => "Mata Verde")
Cidade.create!(:estado => e, :nome => "Materlândia")
Cidade.create!(:estado => e, :nome => "Mateus Leme")
Cidade.create!(:estado => e, :nome => "Mathias Lobato")
Cidade.create!(:estado => e, :nome => "Matias Barbosa")
Cidade.create!(:estado => e, :nome => "Matias Cardoso")
Cidade.create!(:estado => e, :nome => "Matipó")
Cidade.create!(:estado => e, :nome => "Mato Verde")
Cidade.create!(:estado => e, :nome => "Matozinhos")
Cidade.create!(:estado => e, :nome => "Matutina")
Cidade.create!(:estado => e, :nome => "Medeiros")
Cidade.create!(:estado => e, :nome => "Medina")
Cidade.create!(:estado => e, :nome => "Mes Pimentel")
Cidade.create!(:estado => e, :nome => "Mercês")
Cidade.create!(:estado => e, :nome => "Mesquita")
Cidade.create!(:estado => e, :nome => "Minas Novas")
Cidade.create!(:estado => e, :nome => "Minduri")
Cidade.create!(:estado => e, :nome => "Mirabela")
Cidade.create!(:estado => e, :nome => "Miradouro")
Cidade.create!(:estado => e, :nome => "Miravânia")
Cidade.create!(:estado => e, :nome => "Miraí")
Cidade.create!(:estado => e, :nome => "Moeda")
Cidade.create!(:estado => e, :nome => "Moema")
Cidade.create!(:estado => e, :nome => "Monjolos")
Cidade.create!(:estado => e, :nome => "Monsenhor Paulo")
Cidade.create!(:estado => e, :nome => "Montalvânia")
Cidade.create!(:estado => e, :nome => "Monte Alegre de Minas")
Cidade.create!(:estado => e, :nome => "Monte Azul")
Cidade.create!(:estado => e, :nome => "Monte Belo")
Cidade.create!(:estado => e, :nome => "Monte Carmelo")
Cidade.create!(:estado => e, :nome => "Monte Formoso")
Cidade.create!(:estado => e, :nome => "Monte Santo de Minas")
Cidade.create!(:estado => e, :nome => "Monte Sião")
Cidade.create!(:estado => e, :nome => "Montes Claros")
Cidade.create!(:estado => e, :nome => "Montezuma")
Cidade.create!(:estado => e, :nome => "Morada Nova de Minas")
Cidade.create!(:estado => e, :nome => "Morro da Garça")
Cidade.create!(:estado => e, :nome => "Morro do Pilar")
Cidade.create!(:estado => e, :nome => "Munhoz")
Cidade.create!(:estado => e, :nome => "Muriaé")
Cidade.create!(:estado => e, :nome => "Mutum")
Cidade.create!(:estado => e, :nome => "Muzambinho")
Cidade.create!(:estado => e, :nome => "Mário Campos")
Cidade.create!(:estado => e, :nome => "Nacip Raydan")
Cidade.create!(:estado => e, :nome => "Nanuque")
Cidade.create!(:estado => e, :nome => "Naque")
Cidade.create!(:estado => e, :nome => "Natalândia")
Cidade.create!(:estado => e, :nome => "Natércia")
Cidade.create!(:estado => e, :nome => "Nazareno")
Cidade.create!(:estado => e, :nome => "Nepomuceno")
Cidade.create!(:estado => e, :nome => "Ninheira")
Cidade.create!(:estado => e, :nome => "Nova Belém")
Cidade.create!(:estado => e, :nome => "Nova Era")
Cidade.create!(:estado => e, :nome => "Nova Lima")
Cidade.create!(:estado => e, :nome => "Nova Módica")
Cidade.create!(:estado => e, :nome => "Nova Ponte")
Cidade.create!(:estado => e, :nome => "Nova Porteirinha")
Cidade.create!(:estado => e, :nome => "Nova Rese")
Cidade.create!(:estado => e, :nome => "Nova Serrana")
Cidade.create!(:estado => e, :nome => "Nova União")
Cidade.create!(:estado => e, :nome => "Novo Cruzeiro")
Cidade.create!(:estado => e, :nome => "Novo Oriente de Minas")
Cidade.create!(:estado => e, :nome => "Novorizonte")
Cidade.create!(:estado => e, :nome => "Olaria")
Cidade.create!(:estado => e, :nome => "Olhos-dÁgua")
Cidade.create!(:estado => e, :nome => "Oliveira")
Cidade.create!(:estado => e, :nome => "Oliveira Fortes")
Cidade.create!(:estado => e, :nome => "Olímpio Noronha")
Cidade.create!(:estado => e, :nome => "Onça de Pitangui")
Cidade.create!(:estado => e, :nome => "Oratórios")
Cidade.create!(:estado => e, :nome => "Orizânia")
Cidade.create!(:estado => e, :nome => "Ouro Branco")
Cidade.create!(:estado => e, :nome => "Ouro Fino")
Cidade.create!(:estado => e, :nome => "Ouro Preto")
Cidade.create!(:estado => e, :nome => "Ouro Verde de Minas")
Cidade.create!(:estado => e, :nome => "Padre Carvalho")
Cidade.create!(:estado => e, :nome => "Padre Paraíso")
Cidade.create!(:estado => e, :nome => "Pai Pedro")
Cidade.create!(:estado => e, :nome => "Paineiras")
Cidade.create!(:estado => e, :nome => "Pains")
Cidade.create!(:estado => e, :nome => "Paiva")
Cidade.create!(:estado => e, :nome => "Palma")
Cidade.create!(:estado => e, :nome => "Palmópolis")
Cidade.create!(:estado => e, :nome => "Papagaios")
Cidade.create!(:estado => e, :nome => "Paracatu")
Cidade.create!(:estado => e, :nome => "Paraguaçu")
Cidade.create!(:estado => e, :nome => "Paraisópolis")
Cidade.create!(:estado => e, :nome => "Paraopeba")
Cidade.create!(:estado => e, :nome => "Pará de Minas")
Cidade.create!(:estado => e, :nome => "Passa Quatro")
Cidade.create!(:estado => e, :nome => "Passa Tempo")
Cidade.create!(:estado => e, :nome => "Passa-Vinte")
Cidade.create!(:estado => e, :nome => "Passabém")
Cidade.create!(:estado => e, :nome => "Passos")
Cidade.create!(:estado => e, :nome => "Patis")
Cidade.create!(:estado => e, :nome => "Patos de Minas")
Cidade.create!(:estado => e, :nome => "Patrocínio")
Cidade.create!(:estado => e, :nome => "Patrocínio do Muriaé")
Cidade.create!(:estado => e, :nome => "Paula Cândido")
Cidade.create!(:estado => e, :nome => "Paulistas")
Cidade.create!(:estado => e, :nome => "Pavão")
Cidade.create!(:estado => e, :nome => "Pedra Azul")
Cidade.create!(:estado => e, :nome => "Pedra Bonita")
Cidade.create!(:estado => e, :nome => "Pedra Dourada")
Cidade.create!(:estado => e, :nome => "Pedra do Anta")
Cidade.create!(:estado => e, :nome => "Pedra do Indaiá")
Cidade.create!(:estado => e, :nome => "Pedralva")
Cidade.create!(:estado => e, :nome => "Pedras de Maria da Cruz")
Cidade.create!(:estado => e, :nome => "Pedrinópolis")
Cidade.create!(:estado => e, :nome => "Pedro Leopoldo")
Cidade.create!(:estado => e, :nome => "Pedro Teixeira")
Cidade.create!(:estado => e, :nome => "Pequeri")
Cidade.create!(:estado => e, :nome => "Pequi")
Cidade.create!(:estado => e, :nome => "Perdigão")
Cidade.create!(:estado => e, :nome => "Perdizes")
Cidade.create!(:estado => e, :nome => "Perdões")
Cidade.create!(:estado => e, :nome => "Periquito")
Cidade.create!(:estado => e, :nome => "Pescador")
Cidade.create!(:estado => e, :nome => "Peçanha")
Cidade.create!(:estado => e, :nome => "Piau")
Cidade.create!(:estado => e, :nome => "Piedade de Caratinga")
Cidade.create!(:estado => e, :nome => "Piedade de Ponte Nova")
Cidade.create!(:estado => e, :nome => "Piedade do Rio Grande")
Cidade.create!(:estado => e, :nome => "Piedade dos Gerais")
Cidade.create!(:estado => e, :nome => "Pimenta")
Cidade.create!(:estado => e, :nome => "Pingo-dÁgua")
Cidade.create!(:estado => e, :nome => "Pintópolis")
Cidade.create!(:estado => e, :nome => "Piracema")
Cidade.create!(:estado => e, :nome => "Pirajuba")
Cidade.create!(:estado => e, :nome => "Piranga")
Cidade.create!(:estado => e, :nome => "Piranguinho")
Cidade.create!(:estado => e, :nome => "Piranguçu")
Cidade.create!(:estado => e, :nome => "Pirapetinga")
Cidade.create!(:estado => e, :nome => "Pirapora")
Cidade.create!(:estado => e, :nome => "Piraúba")
Cidade.create!(:estado => e, :nome => "Pitangui")
Cidade.create!(:estado => e, :nome => "Piumhi")
Cidade.create!(:estado => e, :nome => "Planura")
Cidade.create!(:estado => e, :nome => "Pocrane")
Cidade.create!(:estado => e, :nome => "Pompéu")
Cidade.create!(:estado => e, :nome => "Ponte Nova")
Cidade.create!(:estado => e, :nome => "Ponto Chique")
Cidade.create!(:estado => e, :nome => "Ponto dos Volantes")
Cidade.create!(:estado => e, :nome => "Porteirinha")
Cidade.create!(:estado => e, :nome => "Porto Firme")
Cidade.create!(:estado => e, :nome => "Poté")
Cidade.create!(:estado => e, :nome => "Pouso Alegre")
Cidade.create!(:estado => e, :nome => "Pouso Alto")
Cidade.create!(:estado => e, :nome => "Poço Fundo")
Cidade.create!(:estado => e, :nome => "Poços de Caldas")
Cidade.create!(:estado => e, :nome => "Prados")
Cidade.create!(:estado => e, :nome => "Prata")
Cidade.create!(:estado => e, :nome => "Pratinha")
Cidade.create!(:estado => e, :nome => "Pratápolis")
Cidade.create!(:estado => e, :nome => "Presidente Bernardes")
Cidade.create!(:estado => e, :nome => "Presidente Juscelino")
Cidade.create!(:estado => e, :nome => "Presidente Kubitschek")
Cidade.create!(:estado => e, :nome => "Presidente Olegário")
Cidade.create!(:estado => e, :nome => "Prudente de Morais")
Cidade.create!(:estado => e, :nome => "Quartel Geral")
Cidade.create!(:estado => e, :nome => "Queluzito")
Cidade.create!(:estado => e, :nome => "Raposos")
Cidade.create!(:estado => e, :nome => "Raul Soares")
Cidade.create!(:estado => e, :nome => "Recreio")
Cidade.create!(:estado => e, :nome => "Reduto")
Cidade.create!(:estado => e, :nome => "Rese Costa")
Cidade.create!(:estado => e, :nome => "Resplor")
Cidade.create!(:estado => e, :nome => "Ressaquinha")
Cidade.create!(:estado => e, :nome => "Riachinho")
Cidade.create!(:estado => e, :nome => "Riacho dos Machados")
Cidade.create!(:estado => e, :nome => "Ribeirão Vermelho")
Cidade.create!(:estado => e, :nome => "Ribeirão das Neves")
Cidade.create!(:estado => e, :nome => "Rio Acima")
Cidade.create!(:estado => e, :nome => "Rio Casca")
Cidade.create!(:estado => e, :nome => "Rio Doce")
Cidade.create!(:estado => e, :nome => "Rio Espera")
Cidade.create!(:estado => e, :nome => "Rio Manso")
Cidade.create!(:estado => e, :nome => "Rio Novo")
Cidade.create!(:estado => e, :nome => "Rio Paranaíba")
Cidade.create!(:estado => e, :nome => "Rio Pardo de Minas")
Cidade.create!(:estado => e, :nome => "Rio Piracicaba")
Cidade.create!(:estado => e, :nome => "Rio Pomba")
Cidade.create!(:estado => e, :nome => "Rio Preto")
Cidade.create!(:estado => e, :nome => "Rio Vermelho")
Cidade.create!(:estado => e, :nome => "Rio do Prado")
Cidade.create!(:estado => e, :nome => "Ritápolis")
Cidade.create!(:estado => e, :nome => "Rochedo de Minas")
Cidade.create!(:estado => e, :nome => "Rodeiro")
Cidade.create!(:estado => e, :nome => "Romaria")
Cidade.create!(:estado => e, :nome => "Rosário da Limeira")
Cidade.create!(:estado => e, :nome => "Rubelita")
Cidade.create!(:estado => e, :nome => "Rubim")
Cidade.create!(:estado => e, :nome => "Sabará")
Cidade.create!(:estado => e, :nome => "Sabinópolis")
Cidade.create!(:estado => e, :nome => "Sacramento")
Cidade.create!(:estado => e, :nome => "Salinas")
Cidade.create!(:estado => e, :nome => "Salto da Divisa")
Cidade.create!(:estado => e, :nome => "Santa Bárbara")
Cidade.create!(:estado => e, :nome => "Santa Bárbara do Leste")
Cidade.create!(:estado => e, :nome => "Santa Bárbara do Monte Verde")
Cidade.create!(:estado => e, :nome => "Santa Bárbara do Tugúrio")
Cidade.create!(:estado => e, :nome => "Santa Cruz de Minas")
Cidade.create!(:estado => e, :nome => "Santa Cruz de Salinas")
Cidade.create!(:estado => e, :nome => "Santa Cruz do Escalvado")
Cidade.create!(:estado => e, :nome => "Santa Efigênia de Minas")
Cidade.create!(:estado => e, :nome => "Santa Fé de Minas")
Cidade.create!(:estado => e, :nome => "Santa Helena de Minas")
Cidade.create!(:estado => e, :nome => "Santa Juliana")
Cidade.create!(:estado => e, :nome => "Santa Luzia")
Cidade.create!(:estado => e, :nome => "Santa Margarida")
Cidade.create!(:estado => e, :nome => "Santa Maria de Itabira")
Cidade.create!(:estado => e, :nome => "Santa Maria do Salto")
Cidade.create!(:estado => e, :nome => "Santa Maria do Suaçuí")
Cidade.create!(:estado => e, :nome => "Santa Rita de Caldas")
Cidade.create!(:estado => e, :nome => "Santa Rita de Ibitipoca")
Cidade.create!(:estado => e, :nome => "Santa Rita de Jacutinga")
Cidade.create!(:estado => e, :nome => "Santa Rita de Minas")
Cidade.create!(:estado => e, :nome => "Santa Rita do Itueto")
Cidade.create!(:estado => e, :nome => "Santa Rita do Sapucaí")
Cidade.create!(:estado => e, :nome => "Santa Rosa da Serra")
Cidade.create!(:estado => e, :nome => "Santa Vitória")
Cidade.create!(:estado => e, :nome => "Santana da Vargem")
Cidade.create!(:estado => e, :nome => "Santana de Cataguases")
Cidade.create!(:estado => e, :nome => "Santana de Pirapama")
Cidade.create!(:estado => e, :nome => "Santana do Deserto")
Cidade.create!(:estado => e, :nome => "Santana do Garambéu")
Cidade.create!(:estado => e, :nome => "Santana do Jacaré")
Cidade.create!(:estado => e, :nome => "Santana do Manhuaçu")
Cidade.create!(:estado => e, :nome => "Santana do Paraíso")
Cidade.create!(:estado => e, :nome => "Santana do Riacho")
Cidade.create!(:estado => e, :nome => "Santana dos Montes")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Amparo")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Aventureiro")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Grama")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Itambé")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Jacinto")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Monte")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Retiro")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Rio Abaixo")
Cidade.create!(:estado => e, :nome => "Santo Hipólito")
Cidade.create!(:estado => e, :nome => "Santos Dumont")
Cidade.create!(:estado => e, :nome => "Sapucaí-Mirim")
Cidade.create!(:estado => e, :nome => "Sardoá")
Cidade.create!(:estado => e, :nome => "Sarzedo")
Cidade.create!(:estado => e, :nome => "Sem-Peixe")
Cidade.create!(:estado => e, :nome => "Senador Amaral")
Cidade.create!(:estado => e, :nome => "Senador Cortes")
Cidade.create!(:estado => e, :nome => "Senador Firmino")
Cidade.create!(:estado => e, :nome => "Senador José Bento")
Cidade.create!(:estado => e, :nome => "Senador Modestino Gonçalves")
Cidade.create!(:estado => e, :nome => "Senhora de Oliveira")
Cidade.create!(:estado => e, :nome => "Senhora do Porto")
Cidade.create!(:estado => e, :nome => "Senhora dos Remédios")
Cidade.create!(:estado => e, :nome => "Sericita")
Cidade.create!(:estado => e, :nome => "Seritinga")
Cidade.create!(:estado => e, :nome => "Serra Azul de Minas")
Cidade.create!(:estado => e, :nome => "Serra da Saudade")
Cidade.create!(:estado => e, :nome => "Serra do Salitre")
Cidade.create!(:estado => e, :nome => "Serra dos Aimorés")
Cidade.create!(:estado => e, :nome => "Serrania")
Cidade.create!(:estado => e, :nome => "Serranos")
Cidade.create!(:estado => e, :nome => "Serranópolis de Minas")
Cidade.create!(:estado => e, :nome => "Serro")
Cidade.create!(:estado => e, :nome => "Sete Lagoas")
Cidade.create!(:estado => e, :nome => "Setubinha")
Cidade.create!(:estado => e, :nome => "Silveirânia")
Cidade.create!(:estado => e, :nome => "Silvianópolis")
Cidade.create!(:estado => e, :nome => "Simonésia")
Cidade.create!(:estado => e, :nome => "Simão Pereira")
Cidade.create!(:estado => e, :nome => "Sobrália")
Cidade.create!(:estado => e, :nome => "Soledade de Minas")
Cidade.create!(:estado => e, :nome => "São Bento Abade")
Cidade.create!(:estado => e, :nome => "São Brás do Suaçuí")
Cidade.create!(:estado => e, :nome => "São Domingos das Dores")
Cidade.create!(:estado => e, :nome => "São Domingos do Prata")
Cidade.create!(:estado => e, :nome => "São Francisco")
Cidade.create!(:estado => e, :nome => "São Francisco de Paula")
Cidade.create!(:estado => e, :nome => "São Francisco de Sales")
Cidade.create!(:estado => e, :nome => "São Francisco do Glória")
Cidade.create!(:estado => e, :nome => "São Félix de Minas")
Cidade.create!(:estado => e, :nome => "São Geraldo")
Cidade.create!(:estado => e, :nome => "São Geraldo da Piedade")
Cidade.create!(:estado => e, :nome => "São Geraldo do Baixio")
Cidade.create!(:estado => e, :nome => "São Gonçalo do Abaeté")
Cidade.create!(:estado => e, :nome => "São Gonçalo do Pará")
Cidade.create!(:estado => e, :nome => "São Gonçalo do Rio Abaixo")
Cidade.create!(:estado => e, :nome => "São Gonçalo do Rio Preto")
Cidade.create!(:estado => e, :nome => "São Gonçalo do Sapucaí")
Cidade.create!(:estado => e, :nome => "São Gotardo")
Cidade.create!(:estado => e, :nome => "São Joaquim de Bicas")
Cidade.create!(:estado => e, :nome => "São José da Barra")
Cidade.create!(:estado => e, :nome => "São José da Lapa")
Cidade.create!(:estado => e, :nome => "São José da Safira")
Cidade.create!(:estado => e, :nome => "São José da Varginha")
Cidade.create!(:estado => e, :nome => "São José do Alegre")
Cidade.create!(:estado => e, :nome => "São José do Divino")
Cidade.create!(:estado => e, :nome => "São José do Goiabal")
Cidade.create!(:estado => e, :nome => "São José do Jacuri")
Cidade.create!(:estado => e, :nome => "São José do Mantimento")
Cidade.create!(:estado => e, :nome => "São João Batista do Glória")
Cidade.create!(:estado => e, :nome => "São João Evangelista")
Cidade.create!(:estado => e, :nome => "São João Nepomuceno")
Cidade.create!(:estado => e, :nome => "São João da Lagoa")
Cidade.create!(:estado => e, :nome => "São João da Mata")
Cidade.create!(:estado => e, :nome => "São João da Ponte")
Cidade.create!(:estado => e, :nome => "São João das Missões")
Cidade.create!(:estado => e, :nome => "São João del Rei")
Cidade.create!(:estado => e, :nome => "São João do Manhuaçu")
Cidade.create!(:estado => e, :nome => "São João do Manteninha")
Cidade.create!(:estado => e, :nome => "São João do Oriente")
Cidade.create!(:estado => e, :nome => "São João do Pacuí")
Cidade.create!(:estado => e, :nome => "São João do Paraíso")
Cidade.create!(:estado => e, :nome => "São Lourenço")
Cidade.create!(:estado => e, :nome => "São Miguel do Anta")
Cidade.create!(:estado => e, :nome => "São Pedro da União")
Cidade.create!(:estado => e, :nome => "São Pedro do Suaçuí")
Cidade.create!(:estado => e, :nome => "São Pedro dos Ferros")
Cidade.create!(:estado => e, :nome => "São Romão")
Cidade.create!(:estado => e, :nome => "São Roque de Minas")
Cidade.create!(:estado => e, :nome => "São Sebastião da Bela Vista")
Cidade.create!(:estado => e, :nome => "São Sebastião da Vargem Alegre")
Cidade.create!(:estado => e, :nome => "São Sebastião do Anta")
Cidade.create!(:estado => e, :nome => "São Sebastião do Maranhão")
Cidade.create!(:estado => e, :nome => "São Sebastião do Oeste")
Cidade.create!(:estado => e, :nome => "São Sebastião do Paraíso")
Cidade.create!(:estado => e, :nome => "São Sebastião do Rio Preto")
Cidade.create!(:estado => e, :nome => "São Sebastião do Rio Verde")
Cidade.create!(:estado => e, :nome => "São Thomé das Letras")
Cidade.create!(:estado => e, :nome => "São Tiago")
Cidade.create!(:estado => e, :nome => "São Tomás de Aquino")
Cidade.create!(:estado => e, :nome => "São Vicente de Minas")
Cidade.create!(:estado => e, :nome => "Tabuleiro")
Cidade.create!(:estado => e, :nome => "Taiobeiras")
Cidade.create!(:estado => e, :nome => "Taparuba")
Cidade.create!(:estado => e, :nome => "Tapira")
Cidade.create!(:estado => e, :nome => "Tapiraí")
Cidade.create!(:estado => e, :nome => "Taquaraçu de Minas")
Cidade.create!(:estado => e, :nome => "Tarumirim")
Cidade.create!(:estado => e, :nome => "Teixeiras")
Cidade.create!(:estado => e, :nome => "Teófilo Otoni")
Cidade.create!(:estado => e, :nome => "Timóteo")
Cidade.create!(:estado => e, :nome => "Tiradentes")
Cidade.create!(:estado => e, :nome => "Tiros")
Cidade.create!(:estado => e, :nome => "Tocantins")
Cidade.create!(:estado => e, :nome => "Tocos do Moji")
Cidade.create!(:estado => e, :nome => "Toledo")
Cidade.create!(:estado => e, :nome => "Tombos")
Cidade.create!(:estado => e, :nome => "Três Corações")
Cidade.create!(:estado => e, :nome => "Três Marias")
Cidade.create!(:estado => e, :nome => "Três Pontas")
Cidade.create!(:estado => e, :nome => "Tumiritinga")
Cidade.create!(:estado => e, :nome => "Tupaciguara")
Cidade.create!(:estado => e, :nome => "Turmalina")
Cidade.create!(:estado => e, :nome => "Turvolândia")
Cidade.create!(:estado => e, :nome => "Ubaporanga")
Cidade.create!(:estado => e, :nome => "Ubaí")
Cidade.create!(:estado => e, :nome => "Uberaba")
Cidade.create!(:estado => e, :nome => "Uberlândia")
Cidade.create!(:estado => e, :nome => "Ubá")
Cidade.create!(:estado => e, :nome => "Umburatiba")
Cidade.create!(:estado => e, :nome => "Unaí")
Cidade.create!(:estado => e, :nome => "União de Minas")
Cidade.create!(:estado => e, :nome => "Uruana de Minas")
Cidade.create!(:estado => e, :nome => "Urucuia")
Cidade.create!(:estado => e, :nome => "Urucânia")
Cidade.create!(:estado => e, :nome => "Vargem Alegre")
Cidade.create!(:estado => e, :nome => "Vargem Bonita")
Cidade.create!(:estado => e, :nome => "Vargem Grande do Rio Pardo")
Cidade.create!(:estado => e, :nome => "Varginha")
Cidade.create!(:estado => e, :nome => "Varjão de Minas")
Cidade.create!(:estado => e, :nome => "Varzelândia")
Cidade.create!(:estado => e, :nome => "Vazante")
Cidade.create!(:estado => e, :nome => "Verdelândia")
Cidade.create!(:estado => e, :nome => "Veredinha")
Cidade.create!(:estado => e, :nome => "Vermelho Novo")
Cidade.create!(:estado => e, :nome => "Veríssimo")
Cidade.create!(:estado => e, :nome => "Vespasiano")
Cidade.create!(:estado => e, :nome => "Vieiras")
Cidade.create!(:estado => e, :nome => "Virgem da Lapa")
Cidade.create!(:estado => e, :nome => "Virginópolis")
Cidade.create!(:estado => e, :nome => "Virgolândia")
Cidade.create!(:estado => e, :nome => "Virgínia")
Cidade.create!(:estado => e, :nome => "Visconde do Rio Branco")
Cidade.create!(:estado => e, :nome => "Viçosa")
Cidade.create!(:estado => e, :nome => "Volta Grande")
Cidade.create!(:estado => e, :nome => "Várzea da Palma")
Cidade.create!(:estado => e, :nome => "Wenceslau Braz")


Estado.create!(:unidade => u, :sigla => 'MS', :nome => "Mato Grosso do Sul")
e = Estado.find_by(nome: "Mato Grosso do Sul")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Água Clara")
Cidade.create!(:estado => e, :nome => "Alcinópolis")
Cidade.create!(:estado => e, :nome => "Amambaí")
Cidade.create!(:estado => e, :nome => "Anastácio")
Cidade.create!(:estado => e, :nome => "Anaurilândia")
Cidade.create!(:estado => e, :nome => "Angélica")
Cidade.create!(:estado => e, :nome => "Antônio João")
Cidade.create!(:estado => e, :nome => "Aparecida do Taboado")
Cidade.create!(:estado => e, :nome => "Aquidauana")
Cidade.create!(:estado => e, :nome => "Aral Moreira")
Cidade.create!(:estado => e, :nome => "Bandeirantes")
Cidade.create!(:estado => e, :nome => "Bataguassu")
Cidade.create!(:estado => e, :nome => "Batayporã")
Cidade.create!(:estado => e, :nome => "Bela Vista")
Cidade.create!(:estado => e, :nome => "Bodoquena")
Cidade.create!(:estado => e, :nome => "Bonito")
Cidade.create!(:estado => e, :nome => "Brasilândia")
Cidade.create!(:estado => e, :nome => "Caarapó")
Cidade.create!(:estado => e, :nome => "Camapuã")
Cidade.create!(:estado => e, :nome => "Campo Grande")
Cidade.create!(:estado => e, :nome => "Caracol")
Cidade.create!(:estado => e, :nome => "Cassilândia")
Cidade.create!(:estado => e, :nome => "Chapadão do Sul")
Cidade.create!(:estado => e, :nome => "Corguinho")
Cidade.create!(:estado => e, :nome => "Coronel Sapucaia")
Cidade.create!(:estado => e, :nome => "Corumbá")
Cidade.create!(:estado => e, :nome => "Costa Rica")
Cidade.create!(:estado => e, :nome => "Coxim")
Cidade.create!(:estado => e, :nome => "Deodápolis")
Cidade.create!(:estado => e, :nome => "Dois Irmãos do Buriti")
Cidade.create!(:estado => e, :nome => "Douradina")
Cidade.create!(:estado => e, :nome => "Dourados")
Cidade.create!(:estado => e, :nome => "Eldorado")
Cidade.create!(:estado => e, :nome => "Figueirão")
Cidade.create!(:estado => e, :nome => "Fátima do Sul")
Cidade.create!(:estado => e, :nome => "Glória de Dourados")
Cidade.create!(:estado => e, :nome => "Guia Lopes da Laguna")
Cidade.create!(:estado => e, :nome => "Iguatemi")
Cidade.create!(:estado => e, :nome => "Inocência")
Cidade.create!(:estado => e, :nome => "Itaporã")
Cidade.create!(:estado => e, :nome => "Itaquiraí")
Cidade.create!(:estado => e, :nome => "Ivinhema")
Cidade.create!(:estado => e, :nome => "Japorã")
Cidade.create!(:estado => e, :nome => "Jaraguari")
Cidade.create!(:estado => e, :nome => "Jardim")
Cidade.create!(:estado => e, :nome => "Jateí")
Cidade.create!(:estado => e, :nome => "Juti")
Cidade.create!(:estado => e, :nome => "Ladário")
Cidade.create!(:estado => e, :nome => "Laguna Carapã")
Cidade.create!(:estado => e, :nome => "Maracaju")
Cidade.create!(:estado => e, :nome => "Miranda")
Cidade.create!(:estado => e, :nome => "Mundo Novo")
Cidade.create!(:estado => e, :nome => "Naviraí")
Cidade.create!(:estado => e, :nome => "Nioaque")
Cidade.create!(:estado => e, :nome => "Nova Alvorada do Sul")
Cidade.create!(:estado => e, :nome => "Nova Andradina")
Cidade.create!(:estado => e, :nome => "Novo Horizonte do Sul")
Cidade.create!(:estado => e, :nome => "Paranaíba")
Cidade.create!(:estado => e, :nome => "Paranhos")
Cidade.create!(:estado => e, :nome => "Pedro Gomes")
Cidade.create!(:estado => e, :nome => "Ponta Porã")
Cidade.create!(:estado => e, :nome => "Porto Murtinho")
Cidade.create!(:estado => e, :nome => "Ribas do Rio Pardo")
Cidade.create!(:estado => e, :nome => "Rio Brilhante")
Cidade.create!(:estado => e, :nome => "Rio Negro")
Cidade.create!(:estado => e, :nome => "Rio Verde de Mato Grosso")
Cidade.create!(:estado => e, :nome => "Rochedo")
Cidade.create!(:estado => e, :nome => "Santa Rita do Pardo")
Cidade.create!(:estado => e, :nome => "Selvíria")
Cidade.create!(:estado => e, :nome => "Sete Quedas")
Cidade.create!(:estado => e, :nome => "Sidrolândia")
Cidade.create!(:estado => e, :nome => "Sonora")
Cidade.create!(:estado => e, :nome => "São Gabriel do Oeste")
Cidade.create!(:estado => e, :nome => "Tacuru")
Cidade.create!(:estado => e, :nome => "Taquarussu")
Cidade.create!(:estado => e, :nome => "Terenos")
Cidade.create!(:estado => e, :nome => "Três Lagoas")
Cidade.create!(:estado => e, :nome => "Vicentina")


Estado.create!(:unidade => u, :sigla => 'MT', :nome => "Mato Grosso")
e = Estado.find_by(nome: "Mato Grosso")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Acorizal")
Cidade.create!(:estado => e, :nome => "Água Boa")
Cidade.create!(:estado => e, :nome => "Alta Floresta")
Cidade.create!(:estado => e, :nome => "Alto Araguaia")
Cidade.create!(:estado => e, :nome => "Alto Boa Vista")
Cidade.create!(:estado => e, :nome => "Alto Garças")
Cidade.create!(:estado => e, :nome => "Alto Paraguai")
Cidade.create!(:estado => e, :nome => "Alto Taquari")
Cidade.create!(:estado => e, :nome => "Apiacás")
Cidade.create!(:estado => e, :nome => "Araguaiana")
Cidade.create!(:estado => e, :nome => "Araguainha")
Cidade.create!(:estado => e, :nome => "Araputanga")
Cidade.create!(:estado => e, :nome => "Arenápolis")
Cidade.create!(:estado => e, :nome => "Aripuanã")
Cidade.create!(:estado => e, :nome => "Barra do Bugres")
Cidade.create!(:estado => e, :nome => "Barra do Garças")
Cidade.create!(:estado => e, :nome => "Barão de Melgaço")
Cidade.create!(:estado => e, :nome => "Bom Jesus do Araguaia")
Cidade.create!(:estado => e, :nome => "Brasnorte")
Cidade.create!(:estado => e, :nome => "Campinápolis")
Cidade.create!(:estado => e, :nome => "Campo Novo do Parecis")
Cidade.create!(:estado => e, :nome => "Campo Verde")
Cidade.create!(:estado => e, :nome => "Campos de Júlio")
Cidade.create!(:estado => e, :nome => "Canabrava do Norte")
Cidade.create!(:estado => e, :nome => "Canarana")
Cidade.create!(:estado => e, :nome => "Carlinda")
Cidade.create!(:estado => e, :nome => "Castanheira")
Cidade.create!(:estado => e, :nome => "Chapada dos Guimarães")
Cidade.create!(:estado => e, :nome => "Cláudia")
Cidade.create!(:estado => e, :nome => "Cocalinho")
Cidade.create!(:estado => e, :nome => "Colniza")
Cidade.create!(:estado => e, :nome => "Colíder")
Cidade.create!(:estado => e, :nome => "Comodoro")
Cidade.create!(:estado => e, :nome => "Confresa")
Cidade.create!(:estado => e, :nome => "Conquista dOeste")
Cidade.create!(:estado => e, :nome => "Cotriguaçu")
Cidade.create!(:estado => e, :nome => "Cuiabá")
Cidade.create!(:estado => e, :nome => "Curvelândia")
Cidade.create!(:estado => e, :nome => "Cáceres")
Cidade.create!(:estado => e, :nome => "Denise")
Cidade.create!(:estado => e, :nome => "Diamantino")
Cidade.create!(:estado => e, :nome => "Dom Aquino")
Cidade.create!(:estado => e, :nome => "Feliz Natal")
Cidade.create!(:estado => e, :nome => "Figueirópolis dOeste")
Cidade.create!(:estado => e, :nome => "Gaúcha do Norte")
Cidade.create!(:estado => e, :nome => "General Carneiro")
Cidade.create!(:estado => e, :nome => "Glória dOeste")
Cidade.create!(:estado => e, :nome => "Guarantã do Norte")
Cidade.create!(:estado => e, :nome => "Guiratinga")
Cidade.create!(:estado => e, :nome => "Indiavaí")
Cidade.create!(:estado => e, :nome => "Ipiranga do Norte")
Cidade.create!(:estado => e, :nome => "Itanhangá")
Cidade.create!(:estado => e, :nome => "Itaúba")
Cidade.create!(:estado => e, :nome => "Itiquira")
Cidade.create!(:estado => e, :nome => "Jaciara")
Cidade.create!(:estado => e, :nome => "Jangada")
Cidade.create!(:estado => e, :nome => "Jauru")
Cidade.create!(:estado => e, :nome => "Juara")
Cidade.create!(:estado => e, :nome => "Juruena")
Cidade.create!(:estado => e, :nome => "Juscimeira")
Cidade.create!(:estado => e, :nome => "Juína")
Cidade.create!(:estado => e, :nome => "Lambari dOeste")
Cidade.create!(:estado => e, :nome => "Lucas do Rio Verde")
Cidade.create!(:estado => e, :nome => "Luciára")
Cidade.create!(:estado => e, :nome => "Marcelândia")
Cidade.create!(:estado => e, :nome => "Matupá")
Cidade.create!(:estado => e, :nome => "Mirassol dOeste")
Cidade.create!(:estado => e, :nome => "Nobres")
Cidade.create!(:estado => e, :nome => "Nortelândia")
Cidade.create!(:estado => e, :nome => "Nossa Senhora do Livramento")
Cidade.create!(:estado => e, :nome => "Nova Bandeirantes")
Cidade.create!(:estado => e, :nome => "Nova Brasilândia")
Cidade.create!(:estado => e, :nome => "Nova Canaã do Norte")
Cidade.create!(:estado => e, :nome => "Nova Guarita")
Cidade.create!(:estado => e, :nome => "Nova Lacerda")
Cidade.create!(:estado => e, :nome => "Nova Marilândia")
Cidade.create!(:estado => e, :nome => "Nova Maringá")
Cidade.create!(:estado => e, :nome => "Nova Monte Verde")
Cidade.create!(:estado => e, :nome => "Nova Mutum")
Cidade.create!(:estado => e, :nome => "Nova Nazaré")
Cidade.create!(:estado => e, :nome => "Nova Olímpia")
Cidade.create!(:estado => e, :nome => "Nova Santa Helena")
Cidade.create!(:estado => e, :nome => "Nova Ubiratã")
Cidade.create!(:estado => e, :nome => "Nova Xavantina")
Cidade.create!(:estado => e, :nome => "Novo Horizonte do Norte")
Cidade.create!(:estado => e, :nome => "Novo Mundo")
Cidade.create!(:estado => e, :nome => "Novo Santo Antônio")
Cidade.create!(:estado => e, :nome => "Novo São Joaquim")
Cidade.create!(:estado => e, :nome => "Paranatinga")
Cidade.create!(:estado => e, :nome => "Paranaíta")
Cidade.create!(:estado => e, :nome => "Pedra Preta")
Cidade.create!(:estado => e, :nome => "Peixoto de Azevedo")
Cidade.create!(:estado => e, :nome => "Planalto da Serra")
Cidade.create!(:estado => e, :nome => "Poconé")
Cidade.create!(:estado => e, :nome => "Pontal do Araguaia")
Cidade.create!(:estado => e, :nome => "Ponte Branca")
Cidade.create!(:estado => e, :nome => "Pontes e Lacerda")
Cidade.create!(:estado => e, :nome => "Porto Alegre do Norte")
Cidade.create!(:estado => e, :nome => "Porto Esperidião")
Cidade.create!(:estado => e, :nome => "Porto Estrela")
Cidade.create!(:estado => e, :nome => "Porto dos Gaúchos")
Cidade.create!(:estado => e, :nome => "Poxoréo")
Cidade.create!(:estado => e, :nome => "Primavera do Leste")
Cidade.create!(:estado => e, :nome => "Querência")
Cidade.create!(:estado => e, :nome => "Reserva do Cabaçal")
Cidade.create!(:estado => e, :nome => "Ribeirão Cascalheira")
Cidade.create!(:estado => e, :nome => "Ribeirãozinho")
Cidade.create!(:estado => e, :nome => "Rio Branco")
Cidade.create!(:estado => e, :nome => "Rondolândia")
Cidade.create!(:estado => e, :nome => "Rondonópolis")
Cidade.create!(:estado => e, :nome => "Rosário Oeste")
Cidade.create!(:estado => e, :nome => "Salto do Céu")
Cidade.create!(:estado => e, :nome => "Santa Carmem")
Cidade.create!(:estado => e, :nome => "Santa Cruz do Xingu")
Cidade.create!(:estado => e, :nome => "Santa Rita do Trivelato")
Cidade.create!(:estado => e, :nome => "Santa Terezinha")
Cidade.create!(:estado => e, :nome => "Santo Afonso")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Leste")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Leverger")
Cidade.create!(:estado => e, :nome => "Sapezal")
Cidade.create!(:estado => e, :nome => "Serra Nova Dourada")
Cidade.create!(:estado => e, :nome => "Sinop")
Cidade.create!(:estado => e, :nome => "Sorriso")
Cidade.create!(:estado => e, :nome => "São Félix do Araguaia")
Cidade.create!(:estado => e, :nome => "São José do Povo")
Cidade.create!(:estado => e, :nome => "São José do Rio Claro")
Cidade.create!(:estado => e, :nome => "São José do Xingu")
Cidade.create!(:estado => e, :nome => "São José dos Quatro Marcos")
Cidade.create!(:estado => e, :nome => "São Pedro da Cipa")
Cidade.create!(:estado => e, :nome => "Tabaporã")
Cidade.create!(:estado => e, :nome => "Tangará da Serra")
Cidade.create!(:estado => e, :nome => "Tapurah")
Cidade.create!(:estado => e, :nome => "Terra Nova do Norte")
Cidade.create!(:estado => e, :nome => "Tesouro")
Cidade.create!(:estado => e, :nome => "Torixoréu")
Cidade.create!(:estado => e, :nome => "União do Sul")
Cidade.create!(:estado => e, :nome => "Vale de São Domingos")
Cidade.create!(:estado => e, :nome => "Vera")
Cidade.create!(:estado => e, :nome => "Vila Bela da Santíssima Trindade")
Cidade.create!(:estado => e, :nome => "Vila Rica")
Cidade.create!(:estado => e, :nome => "Várzea Grande")


Estado.create!(:unidade => u, :sigla => 'PA', :nome => "Pará")
e = Estado.find_by(nome: "Pará")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Abaetetuba")
Cidade.create!(:estado => e, :nome => "Abel Figueiredo")
Cidade.create!(:estado => e, :nome => "Acará")
Cidade.create!(:estado => e, :nome => "Afuá")
Cidade.create!(:estado => e, :nome => "Água Azul do Norte")
Cidade.create!(:estado => e, :nome => "Alenquer")
Cidade.create!(:estado => e, :nome => "Almeirim")
Cidade.create!(:estado => e, :nome => "Altamira")
Cidade.create!(:estado => e, :nome => "Anajás")
Cidade.create!(:estado => e, :nome => "Ananindeua")
Cidade.create!(:estado => e, :nome => "Anapu")
Cidade.create!(:estado => e, :nome => "Augusto Corrêa")
Cidade.create!(:estado => e, :nome => "Aurora do Pará")
Cidade.create!(:estado => e, :nome => "Aveiro")
Cidade.create!(:estado => e, :nome => "Bagre")
Cidade.create!(:estado => e, :nome => "Baião")
Cidade.create!(:estado => e, :nome => "Bannach")
Cidade.create!(:estado => e, :nome => "Barcarena")
Cidade.create!(:estado => e, :nome => "Belterra")
Cidade.create!(:estado => e, :nome => "Belém")
Cidade.create!(:estado => e, :nome => "Benevides")
Cidade.create!(:estado => e, :nome => "Bom Jesus do Tocantins")
Cidade.create!(:estado => e, :nome => "Bonito")
Cidade.create!(:estado => e, :nome => "Bragança")
Cidade.create!(:estado => e, :nome => "Brasil Novo")
Cidade.create!(:estado => e, :nome => "Brejo Grande do Araguaia")
Cidade.create!(:estado => e, :nome => "Breu Branco")
Cidade.create!(:estado => e, :nome => "Breves")
Cidade.create!(:estado => e, :nome => "Bujaru")
Cidade.create!(:estado => e, :nome => "Cachoeira do Arari")
Cidade.create!(:estado => e, :nome => "Cachoeira do Piriá")
Cidade.create!(:estado => e, :nome => "Cametá")
Cidade.create!(:estado => e, :nome => "Canaã dos Carajás")
Cidade.create!(:estado => e, :nome => "Capanema")
Cidade.create!(:estado => e, :nome => "Capitão Poço")
Cidade.create!(:estado => e, :nome => "Castanhal")
Cidade.create!(:estado => e, :nome => "Chaves")
Cidade.create!(:estado => e, :nome => "Colares")
Cidade.create!(:estado => e, :nome => "Conceição do Araguaia")
Cidade.create!(:estado => e, :nome => "Concórdia do Pará")
Cidade.create!(:estado => e, :nome => "Cumaru do Norte")
Cidade.create!(:estado => e, :nome => "Curionópolis")
Cidade.create!(:estado => e, :nome => "Curralinho")
Cidade.create!(:estado => e, :nome => "Curuá")
Cidade.create!(:estado => e, :nome => "Curuçá")
Cidade.create!(:estado => e, :nome => "Dom Eliseu")
Cidade.create!(:estado => e, :nome => "Eldorado dos Carajás")
Cidade.create!(:estado => e, :nome => "Faro")
Cidade.create!(:estado => e, :nome => "Floresta do Araguaia")
Cidade.create!(:estado => e, :nome => "Garrafão do Norte")
Cidade.create!(:estado => e, :nome => "Goianésia do Pará")
Cidade.create!(:estado => e, :nome => "Gurupá")
Cidade.create!(:estado => e, :nome => "Igarapé-Açu")
Cidade.create!(:estado => e, :nome => "Igarapé-Miri")
Cidade.create!(:estado => e, :nome => "Inhangapi")
Cidade.create!(:estado => e, :nome => "Ipixuna do Pará")
Cidade.create!(:estado => e, :nome => "Irituia")
Cidade.create!(:estado => e, :nome => "Itaituba")
Cidade.create!(:estado => e, :nome => "Itupiranga")
Cidade.create!(:estado => e, :nome => "Jacareacanga")
Cidade.create!(:estado => e, :nome => "Jacundá")
Cidade.create!(:estado => e, :nome => "Juruti")
Cidade.create!(:estado => e, :nome => "Limoeiro do Ajuru")
Cidade.create!(:estado => e, :nome => "Magalhães Barata")
Cidade.create!(:estado => e, :nome => "Marabá")
Cidade.create!(:estado => e, :nome => "Maracanã")
Cidade.create!(:estado => e, :nome => "Marapanim")
Cidade.create!(:estado => e, :nome => "Marituba")
Cidade.create!(:estado => e, :nome => "Medicilândia")
Cidade.create!(:estado => e, :nome => "Melgaço")
Cidade.create!(:estado => e, :nome => "Mocajuba")
Cidade.create!(:estado => e, :nome => "Moju")
Cidade.create!(:estado => e, :nome => "Monte Alegre")
Cidade.create!(:estado => e, :nome => "Muaná")
Cidade.create!(:estado => e, :nome => "Mãe do Rio")
Cidade.create!(:estado => e, :nome => "Nova Esperança do Piriá")
Cidade.create!(:estado => e, :nome => "Nova Ipixuna")
Cidade.create!(:estado => e, :nome => "Nova Timboteua")
Cidade.create!(:estado => e, :nome => "Novo Progresso")
Cidade.create!(:estado => e, :nome => "Novo Repartimento")
Cidade.create!(:estado => e, :nome => "Óbidos")
Cidade.create!(:estado => e, :nome => "Oeiras do Pará")
Cidade.create!(:estado => e, :nome => "Oriximiná")
Cidade.create!(:estado => e, :nome => "Ourilândia do Norte")
Cidade.create!(:estado => e, :nome => "Ourém")
Cidade.create!(:estado => e, :nome => "Pacajá")
Cidade.create!(:estado => e, :nome => "Palestina do Pará")
Cidade.create!(:estado => e, :nome => "Paragominas")
Cidade.create!(:estado => e, :nome => "Parauapebas")
Cidade.create!(:estado => e, :nome => "Pau dArco")
Cidade.create!(:estado => e, :nome => "Peixe-Boi")
Cidade.create!(:estado => e, :nome => "Piçarra")
Cidade.create!(:estado => e, :nome => "Placas")
Cidade.create!(:estado => e, :nome => "Ponta de Pedras")
Cidade.create!(:estado => e, :nome => "Portel")
Cidade.create!(:estado => e, :nome => "Porto de Moz")
Cidade.create!(:estado => e, :nome => "Prainha")
Cidade.create!(:estado => e, :nome => "Primavera")
Cidade.create!(:estado => e, :nome => "Quatipuru")
Cidade.create!(:estado => e, :nome => "Redenção")
Cidade.create!(:estado => e, :nome => "Rio Maria")
Cidade.create!(:estado => e, :nome => "Rondon do Pará")
Cidade.create!(:estado => e, :nome => "Rurópolis")
Cidade.create!(:estado => e, :nome => "Salinópolis")
Cidade.create!(:estado => e, :nome => "Salvaterra")
Cidade.create!(:estado => e, :nome => "Santa Bárbara do Pará")
Cidade.create!(:estado => e, :nome => "Santa Cruz do Arari")
Cidade.create!(:estado => e, :nome => "Santa Isabel do Pará")
Cidade.create!(:estado => e, :nome => "Santa Luzia do Pará")
Cidade.create!(:estado => e, :nome => "Santa Maria das Barreiras")
Cidade.create!(:estado => e, :nome => "Santa Maria do Pará")
Cidade.create!(:estado => e, :nome => "Santana do Araguaia")
Cidade.create!(:estado => e, :nome => "Santarém")
Cidade.create!(:estado => e, :nome => "Santarém Novo")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Tauá")
Cidade.create!(:estado => e, :nome => "Sapucaia")
Cidade.create!(:estado => e, :nome => "Senador José Porfírio")
Cidade.create!(:estado => e, :nome => "Soure")
Cidade.create!(:estado => e, :nome => "São Caetano de Odivelas")
Cidade.create!(:estado => e, :nome => "São Domingos do Araguaia")
Cidade.create!(:estado => e, :nome => "São Domingos do Capim")
Cidade.create!(:estado => e, :nome => "São Francisco do Pará")
Cidade.create!(:estado => e, :nome => "São Félix do Xingu")
Cidade.create!(:estado => e, :nome => "São Geraldo do Araguaia")
Cidade.create!(:estado => e, :nome => "São João da Ponta")
Cidade.create!(:estado => e, :nome => "São João de Pirabas")
Cidade.create!(:estado => e, :nome => "São João do Araguaia")
Cidade.create!(:estado => e, :nome => "São Miguel do Guamá")
Cidade.create!(:estado => e, :nome => "São Sebastião da Boa Vista")
Cidade.create!(:estado => e, :nome => "Tailândia")
Cidade.create!(:estado => e, :nome => "Terra Alta")
Cidade.create!(:estado => e, :nome => "Terra Santa")
Cidade.create!(:estado => e, :nome => "Tomé-Açu")
Cidade.create!(:estado => e, :nome => "Tracuateua")
Cidade.create!(:estado => e, :nome => "Trairão")
Cidade.create!(:estado => e, :nome => "Tucumã")
Cidade.create!(:estado => e, :nome => "Tucuruí")
Cidade.create!(:estado => e, :nome => "Ulianópolis")
Cidade.create!(:estado => e, :nome => "Uruará")
Cidade.create!(:estado => e, :nome => "Vigia")
Cidade.create!(:estado => e, :nome => "Viseu")
Cidade.create!(:estado => e, :nome => "Vitória do Xingu")
Cidade.create!(:estado => e, :nome => "Xinguara")


Estado.create!(:unidade => u, :sigla => 'PB', :nome => "Paraíba")
e = Estado.find_by(nome: "Paraíba")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Água Branca")
Cidade.create!(:estado => e, :nome => "Aguiar")
Cidade.create!(:estado => e, :nome => "Alagoa Grande")
Cidade.create!(:estado => e, :nome => "Alagoa Nova")
Cidade.create!(:estado => e, :nome => "Alagoinha")
Cidade.create!(:estado => e, :nome => "Alcantil")
Cidade.create!(:estado => e, :nome => "Algodão de Jandaíra")
Cidade.create!(:estado => e, :nome => "Alhandra")
Cidade.create!(:estado => e, :nome => "Amparo")
Cidade.create!(:estado => e, :nome => "Aparecida")
Cidade.create!(:estado => e, :nome => "Arara")
Cidade.create!(:estado => e, :nome => "Araruna")
Cidade.create!(:estado => e, :nome => "Araçagi")
Cidade.create!(:estado => e, :nome => "Areia")
Cidade.create!(:estado => e, :nome => "Areia de Baraúnas")
Cidade.create!(:estado => e, :nome => "Areial")
Cidade.create!(:estado => e, :nome => "Aroeiras")
Cidade.create!(:estado => e, :nome => "Assunção")
Cidade.create!(:estado => e, :nome => "Bananeiras")
Cidade.create!(:estado => e, :nome => "Baraúna")
Cidade.create!(:estado => e, :nome => "Barra de Santa Rosa")
Cidade.create!(:estado => e, :nome => "Barra de Santana")
Cidade.create!(:estado => e, :nome => "Barra de São Miguel")
Cidade.create!(:estado => e, :nome => "Bayeux")
Cidade.create!(:estado => e, :nome => "Baía da Traição")
Cidade.create!(:estado => e, :nome => "Belém")
Cidade.create!(:estado => e, :nome => "Belém do Brejo do Cruz")
Cidade.create!(:estado => e, :nome => "Bernardino Batista")
Cidade.create!(:estado => e, :nome => "Boa Ventura")
Cidade.create!(:estado => e, :nome => "Boa Vista")
Cidade.create!(:estado => e, :nome => "Bom Jesus")
Cidade.create!(:estado => e, :nome => "Bom Sucesso")
Cidade.create!(:estado => e, :nome => "Bonito de Santa Fé")
Cidade.create!(:estado => e, :nome => "Boqueirão")
Cidade.create!(:estado => e, :nome => "Borborema")
Cidade.create!(:estado => e, :nome => "Brejo do Cruz")
Cidade.create!(:estado => e, :nome => "Brejo dos Santos")
Cidade.create!(:estado => e, :nome => "Caaporã")
Cidade.create!(:estado => e, :nome => "Cabaceiras")
Cidade.create!(:estado => e, :nome => "Cabedelo")
Cidade.create!(:estado => e, :nome => "Cachoeira dos Índios")
Cidade.create!(:estado => e, :nome => "Cacimba de Areia")
Cidade.create!(:estado => e, :nome => "Cacimba de Dentro")
Cidade.create!(:estado => e, :nome => "Cacimbas")
Cidade.create!(:estado => e, :nome => "Caiçara")
Cidade.create!(:estado => e, :nome => "Cajazeiras")
Cidade.create!(:estado => e, :nome => "Cajazeirinhas")
Cidade.create!(:estado => e, :nome => "Caldas Brandão")
Cidade.create!(:estado => e, :nome => "Camalaú")
Cidade.create!(:estado => e, :nome => "Campina Grande")
Cidade.create!(:estado => e, :nome => "Campo de Santana")
Cidade.create!(:estado => e, :nome => "Capim")
Cidade.create!(:estado => e, :nome => "Caraúbas")
Cidade.create!(:estado => e, :nome => "Carrapateira")
Cidade.create!(:estado => e, :nome => "Casserengue")
Cidade.create!(:estado => e, :nome => "Catingueira")
Cidade.create!(:estado => e, :nome => "Catolé do Rocha")
Cidade.create!(:estado => e, :nome => "Caturité")
Cidade.create!(:estado => e, :nome => "Conceição")
Cidade.create!(:estado => e, :nome => "Condado")
Cidade.create!(:estado => e, :nome => "Conde")
Cidade.create!(:estado => e, :nome => "Congo")
Cidade.create!(:estado => e, :nome => "Coremas")
Cidade.create!(:estado => e, :nome => "Coxixola")
Cidade.create!(:estado => e, :nome => "Cruz do Espírito Santo")
Cidade.create!(:estado => e, :nome => "Cubati")
Cidade.create!(:estado => e, :nome => "Cuitegi")
Cidade.create!(:estado => e, :nome => "Cuité")
Cidade.create!(:estado => e, :nome => "Cuité de Mamanguape")
Cidade.create!(:estado => e, :nome => "Curral Velho")
Cidade.create!(:estado => e, :nome => "Curral de Cima")
Cidade.create!(:estado => e, :nome => "Damião")
Cidade.create!(:estado => e, :nome => "Desterro")
Cidade.create!(:estado => e, :nome => "Diamante")
Cidade.create!(:estado => e, :nome => "Dona Inês")
Cidade.create!(:estado => e, :nome => "Duas Estradas")
Cidade.create!(:estado => e, :nome => "Emas")
Cidade.create!(:estado => e, :nome => "Esperança")
Cidade.create!(:estado => e, :nome => "Fagundes")
Cidade.create!(:estado => e, :nome => "Frei Martinho")
Cidade.create!(:estado => e, :nome => "Gado Bravo")
Cidade.create!(:estado => e, :nome => "Guarabira")
Cidade.create!(:estado => e, :nome => "Gurinhém")
Cidade.create!(:estado => e, :nome => "Gurjão")
Cidade.create!(:estado => e, :nome => "Ibiara")
Cidade.create!(:estado => e, :nome => "Igaracy")
Cidade.create!(:estado => e, :nome => "Imaculada")
Cidade.create!(:estado => e, :nome => "Ingá")
Cidade.create!(:estado => e, :nome => "Itabaiana")
Cidade.create!(:estado => e, :nome => "Itaporanga")
Cidade.create!(:estado => e, :nome => "Itapororoca")
Cidade.create!(:estado => e, :nome => "Itatuba")
Cidade.create!(:estado => e, :nome => "Jacaraú")
Cidade.create!(:estado => e, :nome => "Jericó")
Cidade.create!(:estado => e, :nome => "João Pessoa")
Cidade.create!(:estado => e, :nome => "Juarez Távora")
Cidade.create!(:estado => e, :nome => "Juazeirinho")
Cidade.create!(:estado => e, :nome => "Junco do Seridó")
Cidade.create!(:estado => e, :nome => "Juripiranga")
Cidade.create!(:estado => e, :nome => "Juru")
Cidade.create!(:estado => e, :nome => "Lagoa")
Cidade.create!(:estado => e, :nome => "Lagoa Seca")
Cidade.create!(:estado => e, :nome => "Lagoa de Dentro")
Cidade.create!(:estado => e, :nome => "Lastro")
Cidade.create!(:estado => e, :nome => "Livramento")
Cidade.create!(:estado => e, :nome => "Logradouro")
Cidade.create!(:estado => e, :nome => "Lucena")
Cidade.create!(:estado => e, :nome => "Malta")
Cidade.create!(:estado => e, :nome => "Mamanguape")
Cidade.create!(:estado => e, :nome => "Manaíra")
Cidade.create!(:estado => e, :nome => "Marcação")
Cidade.create!(:estado => e, :nome => "Mari")
Cidade.create!(:estado => e, :nome => "Marizópolis")
Cidade.create!(:estado => e, :nome => "Massaranduba")
Cidade.create!(:estado => e, :nome => "Mataraca")
Cidade.create!(:estado => e, :nome => "Matinhas")
Cidade.create!(:estado => e, :nome => "Mato Grosso")
Cidade.create!(:estado => e, :nome => "Maturéia")
Cidade.create!(:estado => e, :nome => "Mogeiro")
Cidade.create!(:estado => e, :nome => "Montadas")
Cidade.create!(:estado => e, :nome => "Monte Horebe")
Cidade.create!(:estado => e, :nome => "Monteiro")
Cidade.create!(:estado => e, :nome => "Mulungu")
Cidade.create!(:estado => e, :nome => "Mãe dÁgua")
Cidade.create!(:estado => e, :nome => "Natuba")
Cidade.create!(:estado => e, :nome => "Nazarezinho")
Cidade.create!(:estado => e, :nome => "Nova Floresta")
Cidade.create!(:estado => e, :nome => "Nova Olinda")
Cidade.create!(:estado => e, :nome => "Nova Palmeira")
Cidade.create!(:estado => e, :nome => "Olho dÁgua")
Cidade.create!(:estado => e, :nome => "Olivedos")
Cidade.create!(:estado => e, :nome => "Ouro Velho")
Cidade.create!(:estado => e, :nome => "Parari")
Cidade.create!(:estado => e, :nome => "Passagem")
Cidade.create!(:estado => e, :nome => "Patos")
Cidade.create!(:estado => e, :nome => "Paulista")
Cidade.create!(:estado => e, :nome => "Pedra Branca")
Cidade.create!(:estado => e, :nome => "Pedra Lavrada")
Cidade.create!(:estado => e, :nome => "Pedras de Fogo")
Cidade.create!(:estado => e, :nome => "Pedro Régis")
Cidade.create!(:estado => e, :nome => "Piancó")
Cidade.create!(:estado => e, :nome => "Picuí")
Cidade.create!(:estado => e, :nome => "Pilar")
Cidade.create!(:estado => e, :nome => "Pilões")
Cidade.create!(:estado => e, :nome => "Pilõezinhos")
Cidade.create!(:estado => e, :nome => "Pirpirituba")
Cidade.create!(:estado => e, :nome => "Pitimbu")
Cidade.create!(:estado => e, :nome => "Pocinhos")
Cidade.create!(:estado => e, :nome => "Pombal")
Cidade.create!(:estado => e, :nome => "Poço Dantas")
Cidade.create!(:estado => e, :nome => "Poço de José de Moura")
Cidade.create!(:estado => e, :nome => "Prata")
Cidade.create!(:estado => e, :nome => "Princesa Isabel")
Cidade.create!(:estado => e, :nome => "Puxinanã")
Cidade.create!(:estado => e, :nome => "Queimadas")
Cidade.create!(:estado => e, :nome => "Quixabá")
Cidade.create!(:estado => e, :nome => "Remígio")
Cidade.create!(:estado => e, :nome => "Riacho de Santo Antônio")
Cidade.create!(:estado => e, :nome => "Riacho dos Cavalos")
Cidade.create!(:estado => e, :nome => "Riachão")
Cidade.create!(:estado => e, :nome => "Riachão do Bacamarte")
Cidade.create!(:estado => e, :nome => "Riachão do Poço")
Cidade.create!(:estado => e, :nome => "Rio Tinto")
Cidade.create!(:estado => e, :nome => "Salgadinho")
Cidade.create!(:estado => e, :nome => "Salgado de São Félix")
Cidade.create!(:estado => e, :nome => "Santa Cecília")
Cidade.create!(:estado => e, :nome => "Santa Cruz")
Cidade.create!(:estado => e, :nome => "Santa Helena")
Cidade.create!(:estado => e, :nome => "Santa Inês")
Cidade.create!(:estado => e, :nome => "Santa Luzia")
Cidade.create!(:estado => e, :nome => "Santa Rita")
Cidade.create!(:estado => e, :nome => "Santa Teresinha")
Cidade.create!(:estado => e, :nome => "Santana de Mangueira")
Cidade.create!(:estado => e, :nome => "Santana dos Garrotes")
Cidade.create!(:estado => e, :nome => "Santarém")
Cidade.create!(:estado => e, :nome => "Santo André")
Cidade.create!(:estado => e, :nome => "Sapé")
Cidade.create!(:estado => e, :nome => "Seridó")
Cidade.create!(:estado => e, :nome => "Serra Branca")
Cidade.create!(:estado => e, :nome => "Serra Grande")
Cidade.create!(:estado => e, :nome => "Serra Redonda")
Cidade.create!(:estado => e, :nome => "Serra da Raiz")
Cidade.create!(:estado => e, :nome => "Serraria")
Cidade.create!(:estado => e, :nome => "Sertãozinho")
Cidade.create!(:estado => e, :nome => "Sobrado")
Cidade.create!(:estado => e, :nome => "Soledade")
Cidade.create!(:estado => e, :nome => "Solânea")
Cidade.create!(:estado => e, :nome => "Sossêgo")
Cidade.create!(:estado => e, :nome => "Sousa")
Cidade.create!(:estado => e, :nome => "Sumé")
Cidade.create!(:estado => e, :nome => "São Bentinho")
Cidade.create!(:estado => e, :nome => "São Bento")
Cidade.create!(:estado => e, :nome => "São Domingos de Pombal")
Cidade.create!(:estado => e, :nome => "São Domingos do Cariri")
Cidade.create!(:estado => e, :nome => "São Francisco")
Cidade.create!(:estado => e, :nome => "São José da Lagoa Tapada")
Cidade.create!(:estado => e, :nome => "São José de Caiana")
Cidade.create!(:estado => e, :nome => "São José de Espinharas")
Cidade.create!(:estado => e, :nome => "São José de Piranhas")
Cidade.create!(:estado => e, :nome => "São José de Princesa")
Cidade.create!(:estado => e, :nome => "São José do Bonfim")
Cidade.create!(:estado => e, :nome => "São José do Brejo do Cruz")
Cidade.create!(:estado => e, :nome => "São José do Sabugi")
Cidade.create!(:estado => e, :nome => "São José dos Cordeiros")
Cidade.create!(:estado => e, :nome => "São José dos Ramos")
Cidade.create!(:estado => e, :nome => "São João do Cariri")
Cidade.create!(:estado => e, :nome => "São João do Rio do Peixe")
Cidade.create!(:estado => e, :nome => "São João do Tigre")
Cidade.create!(:estado => e, :nome => "São Mamede")
Cidade.create!(:estado => e, :nome => "São Miguel de Taipu")
Cidade.create!(:estado => e, :nome => "São Sebastião de Lagoa de Roça")
Cidade.create!(:estado => e, :nome => "São Sebastião do Umbuzeiro")
Cidade.create!(:estado => e, :nome => "Taperoá")
Cidade.create!(:estado => e, :nome => "Tavares")
Cidade.create!(:estado => e, :nome => "Teixeira")
Cidade.create!(:estado => e, :nome => "Tenório")
Cidade.create!(:estado => e, :nome => "Triunfo")
Cidade.create!(:estado => e, :nome => "Uiraúna")
Cidade.create!(:estado => e, :nome => "Umbuzeiro")
Cidade.create!(:estado => e, :nome => "Vieirópolis")
Cidade.create!(:estado => e, :nome => "Vista Serrana")
Cidade.create!(:estado => e, :nome => "Várzea")
Cidade.create!(:estado => e, :nome => "Zabelê")


Estado.create!(:unidade => u, :sigla => 'PE', :nome => "Pernambuco")
e = Estado.find_by(nome: "Pernambuco")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Abreu e Lima")
Cidade.create!(:estado => e, :nome => "Afogados da Ingazeira")
Cidade.create!(:estado => e, :nome => "Afrânio")
Cidade.create!(:estado => e, :nome => "Agrestina")
Cidade.create!(:estado => e, :nome => "Água Preta")
Cidade.create!(:estado => e, :nome => "Águas Belas")
Cidade.create!(:estado => e, :nome => "Alagoinha")
Cidade.create!(:estado => e, :nome => "Aliança")
Cidade.create!(:estado => e, :nome => "Altinho")
Cidade.create!(:estado => e, :nome => "Amaraji")
Cidade.create!(:estado => e, :nome => "Angelim")
Cidade.create!(:estado => e, :nome => "Araripina")
Cidade.create!(:estado => e, :nome => "Araçoiaba")
Cidade.create!(:estado => e, :nome => "Arcoverde")
Cidade.create!(:estado => e, :nome => "Barra de Guabiraba")
Cidade.create!(:estado => e, :nome => "Barreiros")
Cidade.create!(:estado => e, :nome => "Belo Jardim")
Cidade.create!(:estado => e, :nome => "Belém de Maria")
Cidade.create!(:estado => e, :nome => "Belém de São Francisco")
Cidade.create!(:estado => e, :nome => "Betânia")
Cidade.create!(:estado => e, :nome => "Bezerros")
Cidade.create!(:estado => e, :nome => "Bodocó")
Cidade.create!(:estado => e, :nome => "Bom Conselho")
Cidade.create!(:estado => e, :nome => "Bom Jardim")
Cidade.create!(:estado => e, :nome => "Bonito")
Cidade.create!(:estado => e, :nome => "Brejinho")
Cidade.create!(:estado => e, :nome => "Brejo da Madre de Deus")
Cidade.create!(:estado => e, :nome => "Brejão")
Cidade.create!(:estado => e, :nome => "Buenos Aires")
Cidade.create!(:estado => e, :nome => "Buíque")
Cidade.create!(:estado => e, :nome => "Cabo de Santo Agostinho")
Cidade.create!(:estado => e, :nome => "Cabrobó")
Cidade.create!(:estado => e, :nome => "Cachoeirinha")
Cidade.create!(:estado => e, :nome => "Caetés")
Cidade.create!(:estado => e, :nome => "Calumbi")
Cidade.create!(:estado => e, :nome => "Calçado")
Cidade.create!(:estado => e, :nome => "Camaragibe")
Cidade.create!(:estado => e, :nome => "Camocim de São Félix")
Cidade.create!(:estado => e, :nome => "Camutanga")
Cidade.create!(:estado => e, :nome => "Canhotinho")
Cidade.create!(:estado => e, :nome => "Capoeiras")
Cidade.create!(:estado => e, :nome => "Carnaubeira da Penha")
Cidade.create!(:estado => e, :nome => "Carnaíba")
Cidade.create!(:estado => e, :nome => "Carpina")
Cidade.create!(:estado => e, :nome => "Caruaru")
Cidade.create!(:estado => e, :nome => "Casinhas")
Cidade.create!(:estado => e, :nome => "Cate")
Cidade.create!(:estado => e, :nome => "Cedro")
Cidade.create!(:estado => e, :nome => "Chã Grande")
Cidade.create!(:estado => e, :nome => "Chã de Alegria")
Cidade.create!(:estado => e, :nome => "Condado")
Cidade.create!(:estado => e, :nome => "Correntes")
Cidade.create!(:estado => e, :nome => "Cortês")
Cidade.create!(:estado => e, :nome => "Cumaru")
Cidade.create!(:estado => e, :nome => "Cupira")
Cidade.create!(:estado => e, :nome => "Custódia")
Cidade.create!(:estado => e, :nome => "Dormentes")
Cidade.create!(:estado => e, :nome => "Escada")
Cidade.create!(:estado => e, :nome => "Exu")
Cidade.create!(:estado => e, :nome => "Feira Nova")
Cidade.create!(:estado => e, :nome => "Fernando de Noronha")
Cidade.create!(:estado => e, :nome => "Ferreiros")
Cidade.create!(:estado => e, :nome => "Flores")
Cidade.create!(:estado => e, :nome => "Floresta")
Cidade.create!(:estado => e, :nome => "Frei Miguelinho")
Cidade.create!(:estado => e, :nome => "Gameleira")
Cidade.create!(:estado => e, :nome => "Garanhuns")
Cidade.create!(:estado => e, :nome => "Glória do Goitá")
Cidade.create!(:estado => e, :nome => "Goiana")
Cidade.create!(:estado => e, :nome => "Granito")
Cidade.create!(:estado => e, :nome => "Gravatá")
Cidade.create!(:estado => e, :nome => "Iati")
Cidade.create!(:estado => e, :nome => "Ibimirim")
Cidade.create!(:estado => e, :nome => "Ibirajuba")
Cidade.create!(:estado => e, :nome => "Igarassu")
Cidade.create!(:estado => e, :nome => "Iguaraci")
Cidade.create!(:estado => e, :nome => "Ilha de Itamaracá")
Cidade.create!(:estado => e, :nome => "Inajá")
Cidade.create!(:estado => e, :nome => "Ingazeira")
Cidade.create!(:estado => e, :nome => "Ipojuca")
Cidade.create!(:estado => e, :nome => "Ipubi")
Cidade.create!(:estado => e, :nome => "Itacuruba")
Cidade.create!(:estado => e, :nome => "Itambé")
Cidade.create!(:estado => e, :nome => "Itapetim")
Cidade.create!(:estado => e, :nome => "Itapissuma")
Cidade.create!(:estado => e, :nome => "Itaquitinga")
Cidade.create!(:estado => e, :nome => "Itaíba")
Cidade.create!(:estado => e, :nome => "Jaboatão dos Guararapes")
Cidade.create!(:estado => e, :nome => "Jaqueira")
Cidade.create!(:estado => e, :nome => "Jataúba")
Cidade.create!(:estado => e, :nome => "Jatobá")
Cidade.create!(:estado => e, :nome => "Joaquim Nabuco")
Cidade.create!(:estado => e, :nome => "João Alfredo")
Cidade.create!(:estado => e, :nome => "Jucati")
Cidade.create!(:estado => e, :nome => "Jupi")
Cidade.create!(:estado => e, :nome => "Jurema")
Cidade.create!(:estado => e, :nome => "Lagoa Grande")
Cidade.create!(:estado => e, :nome => "Lagoa do Carro")
Cidade.create!(:estado => e, :nome => "Lagoa do Itaenga")
Cidade.create!(:estado => e, :nome => "Lagoa do Ouro")
Cidade.create!(:estado => e, :nome => "Lagoa dos Gatos")
Cidade.create!(:estado => e, :nome => "Lajedo")
Cidade.create!(:estado => e, :nome => "Limoeiro")
Cidade.create!(:estado => e, :nome => "Macaparana")
Cidade.create!(:estado => e, :nome => "Machados")
Cidade.create!(:estado => e, :nome => "Manari")
Cidade.create!(:estado => e, :nome => "Maraial")
Cidade.create!(:estado => e, :nome => "Mirandiba")
Cidade.create!(:estado => e, :nome => "Moreilândia")
Cidade.create!(:estado => e, :nome => "Moreno")
Cidade.create!(:estado => e, :nome => "Nazaré da Mata")
Cidade.create!(:estado => e, :nome => "Olinda")
Cidade.create!(:estado => e, :nome => "Orobó")
Cidade.create!(:estado => e, :nome => "Orocó")
Cidade.create!(:estado => e, :nome => "Ouricuri")
Cidade.create!(:estado => e, :nome => "Palmares")
Cidade.create!(:estado => e, :nome => "Palmeirina")
Cidade.create!(:estado => e, :nome => "Panelas")
Cidade.create!(:estado => e, :nome => "Paranatama")
Cidade.create!(:estado => e, :nome => "Parnamirim")
Cidade.create!(:estado => e, :nome => "Passira")
Cidade.create!(:estado => e, :nome => "Paudalho")
Cidade.create!(:estado => e, :nome => "Paulista")
Cidade.create!(:estado => e, :nome => "Pedra")
Cidade.create!(:estado => e, :nome => "Pesqueira")
Cidade.create!(:estado => e, :nome => "Petrolina")
Cidade.create!(:estado => e, :nome => "Petrolândia")
Cidade.create!(:estado => e, :nome => "Pombos")
Cidade.create!(:estado => e, :nome => "Poção")
Cidade.create!(:estado => e, :nome => "Primavera")
Cidade.create!(:estado => e, :nome => "Quipapá")
Cidade.create!(:estado => e, :nome => "Quixaba")
Cidade.create!(:estado => e, :nome => "Recife")
Cidade.create!(:estado => e, :nome => "Riacho das Almas")
Cidade.create!(:estado => e, :nome => "Ribeirão")
Cidade.create!(:estado => e, :nome => "Rio Formoso")
Cidade.create!(:estado => e, :nome => "Sairé")
Cidade.create!(:estado => e, :nome => "Salgadinho")
Cidade.create!(:estado => e, :nome => "Salgueiro")
Cidade.create!(:estado => e, :nome => "Saloá")
Cidade.create!(:estado => e, :nome => "Sanharó")
Cidade.create!(:estado => e, :nome => "Santa Cruz")
Cidade.create!(:estado => e, :nome => "Santa Cruz da Baixa Verde")
Cidade.create!(:estado => e, :nome => "Santa Cruz do Capibaribe")
Cidade.create!(:estado => e, :nome => "Santa Filomena")
Cidade.create!(:estado => e, :nome => "Santa Maria da Boa Vista")
Cidade.create!(:estado => e, :nome => "Santa Maria do Cambucá")
Cidade.create!(:estado => e, :nome => "Santa Terezinha")
Cidade.create!(:estado => e, :nome => "Serra Talhada")
Cidade.create!(:estado => e, :nome => "Serrita")
Cidade.create!(:estado => e, :nome => "Sertânia")
Cidade.create!(:estado => e, :nome => "Sirinhaém")
Cidade.create!(:estado => e, :nome => "Solidão")
Cidade.create!(:estado => e, :nome => "Surubim")
Cidade.create!(:estado => e, :nome => "São Benedito do Sul")
Cidade.create!(:estado => e, :nome => "São Bento do Una")
Cidade.create!(:estado => e, :nome => "São Caitano")
Cidade.create!(:estado => e, :nome => "São Joaquim do Monte")
Cidade.create!(:estado => e, :nome => "São José da Coroa Grande")
Cidade.create!(:estado => e, :nome => "São José do Belmonte")
Cidade.create!(:estado => e, :nome => "São José do Egito")
Cidade.create!(:estado => e, :nome => "São João")
Cidade.create!(:estado => e, :nome => "São Lourenço da Mata")
Cidade.create!(:estado => e, :nome => "São Vicente Ferrer")
Cidade.create!(:estado => e, :nome => "Tabira")
Cidade.create!(:estado => e, :nome => "Tacaimbó")
Cidade.create!(:estado => e, :nome => "Tacaratu")
Cidade.create!(:estado => e, :nome => "Tamandaré")
Cidade.create!(:estado => e, :nome => "Taquaritinga do Norte")
Cidade.create!(:estado => e, :nome => "Terezinha")
Cidade.create!(:estado => e, :nome => "Terra Nova")
Cidade.create!(:estado => e, :nome => "Timbaúba")
Cidade.create!(:estado => e, :nome => "Toritama")
Cidade.create!(:estado => e, :nome => "Tracunhaém")
Cidade.create!(:estado => e, :nome => "Trindade")
Cidade.create!(:estado => e, :nome => "Triunfo")
Cidade.create!(:estado => e, :nome => "Tupanatinga")
Cidade.create!(:estado => e, :nome => "Tuparetama")
Cidade.create!(:estado => e, :nome => "Venturosa")
Cidade.create!(:estado => e, :nome => "Verdejante")
Cidade.create!(:estado => e, :nome => "Vertente do Lério")
Cidade.create!(:estado => e, :nome => "Vertentes")
Cidade.create!(:estado => e, :nome => "Vicência")
Cidade.create!(:estado => e, :nome => "Vitória de Santo Antão")
Cidade.create!(:estado => e, :nome => "Xexéu")


Estado.create!(:unidade => u, :sigla => 'PI', :nome => "Piauí")
e = Estado.find_by(nome: "Piauí")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Acauã")
Cidade.create!(:estado => e, :nome => "Agricolândia")
Cidade.create!(:estado => e, :nome => "Água Branca")
Cidade.create!(:estado => e, :nome => "Alagoinha do Piauí")
Cidade.create!(:estado => e, :nome => "Alegrete do Piauí")
Cidade.create!(:estado => e, :nome => "Alto Longá")
Cidade.create!(:estado => e, :nome => "Altos")
Cidade.create!(:estado => e, :nome => "Alvorada do Gurguéia")
Cidade.create!(:estado => e, :nome => "Amarante")
Cidade.create!(:estado => e, :nome => "Angical do Piauí")
Cidade.create!(:estado => e, :nome => "Antônio Almeida")
Cidade.create!(:estado => e, :nome => "Anísio de Abreu")
Cidade.create!(:estado => e, :nome => "Aroazes")
Cidade.create!(:estado => e, :nome => "Aroeiras do Itaim")
Cidade.create!(:estado => e, :nome => "Arraial")
Cidade.create!(:estado => e, :nome => "Assunção do Piauí")
Cidade.create!(:estado => e, :nome => "Avelino Lopes")
Cidade.create!(:estado => e, :nome => "Baixa Grande do Ribeiro")
Cidade.create!(:estado => e, :nome => "Barra dAlcântara")
Cidade.create!(:estado => e, :nome => "Barras")
Cidade.create!(:estado => e, :nome => "Barreiras do Piauí")
Cidade.create!(:estado => e, :nome => "Barro Duro")
Cidade.create!(:estado => e, :nome => "Batalha")
Cidade.create!(:estado => e, :nome => "Bela Vista do Piauí")
Cidade.create!(:estado => e, :nome => "Belém do Piauí")
Cidade.create!(:estado => e, :nome => "Beneditinos")
Cidade.create!(:estado => e, :nome => "Bertolínia")
Cidade.create!(:estado => e, :nome => "Betânia do Piauí")
Cidade.create!(:estado => e, :nome => "Boa Hora")
Cidade.create!(:estado => e, :nome => "Bocaina")
Cidade.create!(:estado => e, :nome => "Bom Jesus")
Cidade.create!(:estado => e, :nome => "Bom Princípio do Piauí")
Cidade.create!(:estado => e, :nome => "Bonfim do Piauí")
Cidade.create!(:estado => e, :nome => "Boqueirão do Piauí")
Cidade.create!(:estado => e, :nome => "Brasileira")
Cidade.create!(:estado => e, :nome => "Brejo do Piauí")
Cidade.create!(:estado => e, :nome => "Buriti dos Lopes")
Cidade.create!(:estado => e, :nome => "Buriti dos Montes")
Cidade.create!(:estado => e, :nome => "Cabeceiras do Piauí")
Cidade.create!(:estado => e, :nome => "Cajazeiras do Piauí")
Cidade.create!(:estado => e, :nome => "Cajueiro da Praia")
Cidade.create!(:estado => e, :nome => "Caldeirão Grande do Piauí")
Cidade.create!(:estado => e, :nome => "Campinas do Piauí")
Cidade.create!(:estado => e, :nome => "Campo Alegre do Fidalgo")
Cidade.create!(:estado => e, :nome => "Campo Grande do Piauí")
Cidade.create!(:estado => e, :nome => "Campo Largo do Piauí")
Cidade.create!(:estado => e, :nome => "Campo Maior")
Cidade.create!(:estado => e, :nome => "Canavieira")
Cidade.create!(:estado => e, :nome => "Canto do Buriti")
Cidade.create!(:estado => e, :nome => "Capitão Gervásio Oliveira")
Cidade.create!(:estado => e, :nome => "Capitão de Campos")
Cidade.create!(:estado => e, :nome => "Caracol")
Cidade.create!(:estado => e, :nome => "Caraúbas do Piauí")
Cidade.create!(:estado => e, :nome => "Caridade do Piauí")
Cidade.create!(:estado => e, :nome => "Castelo do Piauí")
Cidade.create!(:estado => e, :nome => "Caxingó")
Cidade.create!(:estado => e, :nome => "Cocal")
Cidade.create!(:estado => e, :nome => "Cocal de Telha")
Cidade.create!(:estado => e, :nome => "Cocal dos Alves")
Cidade.create!(:estado => e, :nome => "Coivaras")
Cidade.create!(:estado => e, :nome => "Colônia do Gurguéia")
Cidade.create!(:estado => e, :nome => "Colônia do Piauí")
Cidade.create!(:estado => e, :nome => "Conceição do Canindé")
Cidade.create!(:estado => e, :nome => "Coronel José Dias")
Cidade.create!(:estado => e, :nome => "Corrente")
Cidade.create!(:estado => e, :nome => "Cristalândia do Piauí")
Cidade.create!(:estado => e, :nome => "Cristino Castro")
Cidade.create!(:estado => e, :nome => "Curimatá")
Cidade.create!(:estado => e, :nome => "Currais")
Cidade.create!(:estado => e, :nome => "Curral Novo do Piauí")
Cidade.create!(:estado => e, :nome => "Curralinhos")
Cidade.create!(:estado => e, :nome => "Demerval Lobão")
Cidade.create!(:estado => e, :nome => "Dirceu Arcoverde")
Cidade.create!(:estado => e, :nome => "Dom Expedito Lopes")
Cidade.create!(:estado => e, :nome => "Dom Inocêncio")
Cidade.create!(:estado => e, :nome => "Domingos Mourão")
Cidade.create!(:estado => e, :nome => "Elesbão Veloso")
Cidade.create!(:estado => e, :nome => "Eliseu Martins")
Cidade.create!(:estado => e, :nome => "Esperantina")
Cidade.create!(:estado => e, :nome => "Fartura do Piauí")
Cidade.create!(:estado => e, :nome => "Flores do Piauí")
Cidade.create!(:estado => e, :nome => "Floresta do Piauí")
Cidade.create!(:estado => e, :nome => "Floriano")
Cidade.create!(:estado => e, :nome => "Francinópolis")
Cidade.create!(:estado => e, :nome => "Francisco Ayres")
Cidade.create!(:estado => e, :nome => "Francisco Macedo")
Cidade.create!(:estado => e, :nome => "Francisco Santos")
Cidade.create!(:estado => e, :nome => "Fronteiras")
Cidade.create!(:estado => e, :nome => "Geminiano")
Cidade.create!(:estado => e, :nome => "Gilbués")
Cidade.create!(:estado => e, :nome => "Guadalupe")
Cidade.create!(:estado => e, :nome => "Guaribas")
Cidade.create!(:estado => e, :nome => "Hugo Napoleão")
Cidade.create!(:estado => e, :nome => "Ilha Grande")
Cidade.create!(:estado => e, :nome => "Inhuma")
Cidade.create!(:estado => e, :nome => "Ipiranga do Piauí")
Cidade.create!(:estado => e, :nome => "Isaías Coelho")
Cidade.create!(:estado => e, :nome => "Itainópolis")
Cidade.create!(:estado => e, :nome => "Itaueira")
Cidade.create!(:estado => e, :nome => "Jacobina do Piauí")
Cidade.create!(:estado => e, :nome => "Jaicós")
Cidade.create!(:estado => e, :nome => "Jardim do Mulato")
Cidade.create!(:estado => e, :nome => "Jatobá do Piauí")
Cidade.create!(:estado => e, :nome => "Jerumenha")
Cidade.create!(:estado => e, :nome => "Joaquim Pires")
Cidade.create!(:estado => e, :nome => "Joca Marques")
Cidade.create!(:estado => e, :nome => "José de Freitas")
Cidade.create!(:estado => e, :nome => "João Costa")
Cidade.create!(:estado => e, :nome => "Juazeiro do Piauí")
Cidade.create!(:estado => e, :nome => "Jurema")
Cidade.create!(:estado => e, :nome => "Júlio Borges")
Cidade.create!(:estado => e, :nome => "Lagoa Alegre")
Cidade.create!(:estado => e, :nome => "Lagoa de São Francisco")
Cidade.create!(:estado => e, :nome => "Lagoa do Barro do Piauí")
Cidade.create!(:estado => e, :nome => "Lagoa do Piauí")
Cidade.create!(:estado => e, :nome => "Lagoa do Sítio")
Cidade.create!(:estado => e, :nome => "Lagoinha do Piauí")
Cidade.create!(:estado => e, :nome => "Landri Sales")
Cidade.create!(:estado => e, :nome => "Luzilândia")
Cidade.create!(:estado => e, :nome => "Luís Correia")
Cidade.create!(:estado => e, :nome => "Madeiro")
Cidade.create!(:estado => e, :nome => "Manoel Emídio")
Cidade.create!(:estado => e, :nome => "Marcolândia")
Cidade.create!(:estado => e, :nome => "Marcos Parente")
Cidade.create!(:estado => e, :nome => "Massapê do Piauí")
Cidade.create!(:estado => e, :nome => "Matias Olímpio")
Cidade.create!(:estado => e, :nome => "Miguel Alves")
Cidade.create!(:estado => e, :nome => "Miguel Leão")
Cidade.create!(:estado => e, :nome => "Milton Brandão")
Cidade.create!(:estado => e, :nome => "Monsenhor Gil")
Cidade.create!(:estado => e, :nome => "Monsenhor Hipólito")
Cidade.create!(:estado => e, :nome => "Monte Alegre do Piauí")
Cidade.create!(:estado => e, :nome => "Morro Cabeça no Tempo")
Cidade.create!(:estado => e, :nome => "Morro do Chapéu do Piauí")
Cidade.create!(:estado => e, :nome => "Murici dos Portelas")
Cidade.create!(:estado => e, :nome => "Nazaré do Piauí")
Cidade.create!(:estado => e, :nome => "Nossa Senhora de Nazaré")
Cidade.create!(:estado => e, :nome => "Nossa Senhora dos Remédios")
Cidade.create!(:estado => e, :nome => "Nova Santa Rita")
Cidade.create!(:estado => e, :nome => "Novo Oriente do Piauí")
Cidade.create!(:estado => e, :nome => "Novo Santo Antônio")
Cidade.create!(:estado => e, :nome => "Oeiras")
Cidade.create!(:estado => e, :nome => "Olho dÁgua do Piauí")
Cidade.create!(:estado => e, :nome => "Padre Marcos")
Cidade.create!(:estado => e, :nome => "Paes Landim")
Cidade.create!(:estado => e, :nome => "Pajeú do Piauí")
Cidade.create!(:estado => e, :nome => "Palmeira do Piauí")
Cidade.create!(:estado => e, :nome => "Palmeirais")
Cidade.create!(:estado => e, :nome => "Paquetá")
Cidade.create!(:estado => e, :nome => "Parnaguá")
Cidade.create!(:estado => e, :nome => "Parnaíba")
Cidade.create!(:estado => e, :nome => "Passagem Franca do Piauí")
Cidade.create!(:estado => e, :nome => "Patos do Piauí")
Cidade.create!(:estado => e, :nome => "Pau dArco do Piauí")
Cidade.create!(:estado => e, :nome => "Paulistana")
Cidade.create!(:estado => e, :nome => "Pavussu")
Cidade.create!(:estado => e, :nome => "Pedro II")
Cidade.create!(:estado => e, :nome => "Pedro Laurentino")
Cidade.create!(:estado => e, :nome => "Picos")
Cidade.create!(:estado => e, :nome => "Pimenteiras")
Cidade.create!(:estado => e, :nome => "Pio IX")
Cidade.create!(:estado => e, :nome => "Piracuruca")
Cidade.create!(:estado => e, :nome => "Piripiri")
Cidade.create!(:estado => e, :nome => "Porto")
Cidade.create!(:estado => e, :nome => "Porto Alegre do Piauí")
Cidade.create!(:estado => e, :nome => "Prata do Piauí")
Cidade.create!(:estado => e, :nome => "Queimada Nova")
Cidade.create!(:estado => e, :nome => "Redenção do Gurguéia")
Cidade.create!(:estado => e, :nome => "Regeneração")
Cidade.create!(:estado => e, :nome => "Riacho Frio")
Cidade.create!(:estado => e, :nome => "Ribeira do Piauí")
Cidade.create!(:estado => e, :nome => "Ribeiro Gonçalves")
Cidade.create!(:estado => e, :nome => "Rio Grande do Piauí")
Cidade.create!(:estado => e, :nome => "Santa Cruz do Piauí")
Cidade.create!(:estado => e, :nome => "Santa Cruz dos Milagres")
Cidade.create!(:estado => e, :nome => "Santa Filomena")
Cidade.create!(:estado => e, :nome => "Santa Luz")
Cidade.create!(:estado => e, :nome => "Santa Rosa do Piauí")
Cidade.create!(:estado => e, :nome => "Santana do Piauí")
Cidade.create!(:estado => e, :nome => "Santo Antônio de Lisboa")
Cidade.create!(:estado => e, :nome => "Santo Antônio dos Milagres")
Cidade.create!(:estado => e, :nome => "Santo Inácio do Piauí")
Cidade.create!(:estado => e, :nome => "Sebastião Barros")
Cidade.create!(:estado => e, :nome => "Sebastião Leal")
Cidade.create!(:estado => e, :nome => "Sigefredo Pacheco")
Cidade.create!(:estado => e, :nome => "Simplício Mes")
Cidade.create!(:estado => e, :nome => "Simões")
Cidade.create!(:estado => e, :nome => "Socorro do Piauí")
Cidade.create!(:estado => e, :nome => "Sussuapara")
Cidade.create!(:estado => e, :nome => "São Braz do Piauí")
Cidade.create!(:estado => e, :nome => "São Francisco de Assis do Piauí")
Cidade.create!(:estado => e, :nome => "São Francisco do Piauí")
Cidade.create!(:estado => e, :nome => "São Félix do Piauí")
Cidade.create!(:estado => e, :nome => "São Gonçalo do Gurguéia")
Cidade.create!(:estado => e, :nome => "São Gonçalo do Piauí")
Cidade.create!(:estado => e, :nome => "São José do Divino")
Cidade.create!(:estado => e, :nome => "São José do Peixe")
Cidade.create!(:estado => e, :nome => "São José do Piauí")
Cidade.create!(:estado => e, :nome => "São João da Canabrava")
Cidade.create!(:estado => e, :nome => "São João da Fronteira")
Cidade.create!(:estado => e, :nome => "São João da Serra")
Cidade.create!(:estado => e, :nome => "São João da Varjota")
Cidade.create!(:estado => e, :nome => "São João do Arraial")
Cidade.create!(:estado => e, :nome => "São João do Piauí")
Cidade.create!(:estado => e, :nome => "São Julião")
Cidade.create!(:estado => e, :nome => "São Lourenço do Piauí")
Cidade.create!(:estado => e, :nome => "São Luis do Piauí")
Cidade.create!(:estado => e, :nome => "São Miguel da Baixa Grande")
Cidade.create!(:estado => e, :nome => "São Miguel do Fidalgo")
Cidade.create!(:estado => e, :nome => "São Miguel do Tapuio")
Cidade.create!(:estado => e, :nome => "São Pedro do Piauí")
Cidade.create!(:estado => e, :nome => "São Raimundo Nonato")
Cidade.create!(:estado => e, :nome => "Tamboril do Piauí")
Cidade.create!(:estado => e, :nome => "Tanque do Piauí")
Cidade.create!(:estado => e, :nome => "Teresina")
Cidade.create!(:estado => e, :nome => "União")
Cidade.create!(:estado => e, :nome => "Uruçuí")
Cidade.create!(:estado => e, :nome => "Valença do Piauí")
Cidade.create!(:estado => e, :nome => "Vera Mes")
Cidade.create!(:estado => e, :nome => "Vila Nova do Piauí")
Cidade.create!(:estado => e, :nome => "Várzea Branca")
Cidade.create!(:estado => e, :nome => "Várzea Grande")
Cidade.create!(:estado => e, :nome => "Wall Ferraz")


Estado.create!(:unidade => u, :sigla => 'PR', :nome => "Paraná")
e = Estado.find_by(nome: "Paraná")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Abatiá")
Cidade.create!(:estado => e, :nome => "Adrianópolis")
Cidade.create!(:estado => e, :nome => "Agudos do Sul")
Cidade.create!(:estado => e, :nome => "Almirante Tamandaré")
Cidade.create!(:estado => e, :nome => "Altamira do Paraná")
Cidade.create!(:estado => e, :nome => "Alto Paraná")
Cidade.create!(:estado => e, :nome => "Alto Paraíso")
Cidade.create!(:estado => e, :nome => "Alto Piquiri")
Cidade.create!(:estado => e, :nome => "Altônia")
Cidade.create!(:estado => e, :nome => "Alvorada do Sul")
Cidade.create!(:estado => e, :nome => "Amaporã")
Cidade.create!(:estado => e, :nome => "Ampére")
Cidade.create!(:estado => e, :nome => "Anahy")
Cidade.create!(:estado => e, :nome => "Andirá")
Cidade.create!(:estado => e, :nome => "Ângulo")
Cidade.create!(:estado => e, :nome => "Antonina")
Cidade.create!(:estado => e, :nome => "Antônio Olinto")
Cidade.create!(:estado => e, :nome => "Apucarana")
Cidade.create!(:estado => e, :nome => "Arapongas")
Cidade.create!(:estado => e, :nome => "Arapoti")
Cidade.create!(:estado => e, :nome => "Arapuã")
Cidade.create!(:estado => e, :nome => "Araruna")
Cidade.create!(:estado => e, :nome => "Araucária")
Cidade.create!(:estado => e, :nome => "Ariranha do Ivaí")
Cidade.create!(:estado => e, :nome => "Assaí")
Cidade.create!(:estado => e, :nome => "Assis Chateaubriand")
Cidade.create!(:estado => e, :nome => "Astorga")
Cidade.create!(:estado => e, :nome => "Atalaia")
Cidade.create!(:estado => e, :nome => "Balsa Nova")
Cidade.create!(:estado => e, :nome => "Bandeirantes")
Cidade.create!(:estado => e, :nome => "Barbosa Ferraz")
Cidade.create!(:estado => e, :nome => "Barra do Jacaré")
Cidade.create!(:estado => e, :nome => "Barracão")
Cidade.create!(:estado => e, :nome => "Bela Vista da Caroba")
Cidade.create!(:estado => e, :nome => "Bela Vista do Paraíso")
Cidade.create!(:estado => e, :nome => "Bituruna")
Cidade.create!(:estado => e, :nome => "Boa Esperança")
Cidade.create!(:estado => e, :nome => "Boa Esperança do Iguaçu")
Cidade.create!(:estado => e, :nome => "Boa Ventura de São Roque")
Cidade.create!(:estado => e, :nome => "Boa Vista da Aparecida")
Cidade.create!(:estado => e, :nome => "Bocaiúva do Sul")
Cidade.create!(:estado => e, :nome => "Bom Jesus do Sul")
Cidade.create!(:estado => e, :nome => "Bom Sucesso")
Cidade.create!(:estado => e, :nome => "Bom Sucesso do Sul")
Cidade.create!(:estado => e, :nome => "Borrazópolis")
Cidade.create!(:estado => e, :nome => "Braganey")
Cidade.create!(:estado => e, :nome => "Brasilândia do Sul")
Cidade.create!(:estado => e, :nome => "Cafeara")
Cidade.create!(:estado => e, :nome => "Cafelândia")
Cidade.create!(:estado => e, :nome => "Cafezal do Sul")
Cidade.create!(:estado => e, :nome => "Califórnia")
Cidade.create!(:estado => e, :nome => "Cambará")
Cidade.create!(:estado => e, :nome => "Cambira")
Cidade.create!(:estado => e, :nome => "Cambé")
Cidade.create!(:estado => e, :nome => "Campina Grande do Sul")
Cidade.create!(:estado => e, :nome => "Campina da Lagoa")
Cidade.create!(:estado => e, :nome => "Campina do Simão")
Cidade.create!(:estado => e, :nome => "Campo Bonito")
Cidade.create!(:estado => e, :nome => "Campo Largo")
Cidade.create!(:estado => e, :nome => "Campo Magro")
Cidade.create!(:estado => e, :nome => "Campo Mourão")
Cidade.create!(:estado => e, :nome => "Campo do Tenente")
Cidade.create!(:estado => e, :nome => "Candói")
Cidade.create!(:estado => e, :nome => "Cantagalo")
Cidade.create!(:estado => e, :nome => "Capanema")
Cidade.create!(:estado => e, :nome => "Capitão Leônidas Marques")
Cidade.create!(:estado => e, :nome => "Carambeí")
Cidade.create!(:estado => e, :nome => "Carlópolis")
Cidade.create!(:estado => e, :nome => "Cascavel")
Cidade.create!(:estado => e, :nome => "Castro")
Cidade.create!(:estado => e, :nome => "Catanduvas")
Cidade.create!(:estado => e, :nome => "Centenário do Sul")
Cidade.create!(:estado => e, :nome => "Cerro Azul")
Cidade.create!(:estado => e, :nome => "Chopinzinho")
Cidade.create!(:estado => e, :nome => "Cianorte")
Cidade.create!(:estado => e, :nome => "Cidade Gaúcha")
Cidade.create!(:estado => e, :nome => "Clevelândia")
Cidade.create!(:estado => e, :nome => "Colombo")
Cidade.create!(:estado => e, :nome => "Colorado")
Cidade.create!(:estado => e, :nome => "Congonhinhas")
Cidade.create!(:estado => e, :nome => "Conselheiro Mairinck")
Cidade.create!(:estado => e, :nome => "Conta")
Cidade.create!(:estado => e, :nome => "Corbélia")
Cidade.create!(:estado => e, :nome => "Cornélio Procópio")
Cidade.create!(:estado => e, :nome => "Coronel Domingos Soares")
Cidade.create!(:estado => e, :nome => "Coronel Vivida")
Cidade.create!(:estado => e, :nome => "Corumbataí do Sul")
Cidade.create!(:estado => e, :nome => "Cruz Machado")
Cidade.create!(:estado => e, :nome => "Cruzeiro do Iguaçu")
Cidade.create!(:estado => e, :nome => "Cruzeiro do Oeste")
Cidade.create!(:estado => e, :nome => "Cruzeiro do Sul")
Cidade.create!(:estado => e, :nome => "Cruzmaltina")
Cidade.create!(:estado => e, :nome => "Curitiba")
Cidade.create!(:estado => e, :nome => "Curiúva")
Cidade.create!(:estado => e, :nome => "Cândido de Abreu")
Cidade.create!(:estado => e, :nome => "Céu Azul")
Cidade.create!(:estado => e, :nome => "Diamante dOeste")
Cidade.create!(:estado => e, :nome => "Diamante do Norte")
Cidade.create!(:estado => e, :nome => "Diamante do Sul")
Cidade.create!(:estado => e, :nome => "Dois Vizinhos")
Cidade.create!(:estado => e, :nome => "Douradina")
Cidade.create!(:estado => e, :nome => "Doutor Camargo")
Cidade.create!(:estado => e, :nome => "Doutor Ulysses")
Cidade.create!(:estado => e, :nome => "Engenheiro Beltrão")
Cidade.create!(:estado => e, :nome => "Entre Rios do Oeste")
Cidade.create!(:estado => e, :nome => "Enéas Marques")
Cidade.create!(:estado => e, :nome => "Esperança Nova")
Cidade.create!(:estado => e, :nome => "Espigão Alto do Iguaçu")
Cidade.create!(:estado => e, :nome => "Farol")
Cidade.create!(:estado => e, :nome => "Faxinal")
Cidade.create!(:estado => e, :nome => "Faza Rio Grande")
Cidade.create!(:estado => e, :nome => "Fernandes Pinheiro")
Cidade.create!(:estado => e, :nome => "Figueira")
Cidade.create!(:estado => e, :nome => "Flor da Serra do Sul")
Cidade.create!(:estado => e, :nome => "Floraí")
Cidade.create!(:estado => e, :nome => "Floresta")
Cidade.create!(:estado => e, :nome => "Florestópolis")
Cidade.create!(:estado => e, :nome => "Flórida")
Cidade.create!(:estado => e, :nome => "Formosa do Oeste")
Cidade.create!(:estado => e, :nome => "Foz do Iguaçu")
Cidade.create!(:estado => e, :nome => "Foz do Jordão")
Cidade.create!(:estado => e, :nome => "Francisco Alves")
Cidade.create!(:estado => e, :nome => "Francisco Beltrão")
Cidade.create!(:estado => e, :nome => "Fênix")
Cidade.create!(:estado => e, :nome => "General Carneiro")
Cidade.create!(:estado => e, :nome => "Godoy Moreira")
Cidade.create!(:estado => e, :nome => "Goioerê")
Cidade.create!(:estado => e, :nome => "Goioxim")
Cidade.create!(:estado => e, :nome => "Grandes Rios")
Cidade.create!(:estado => e, :nome => "Guairaçá")
Cidade.create!(:estado => e, :nome => "Guamiranga")
Cidade.create!(:estado => e, :nome => "Guapirama")
Cidade.create!(:estado => e, :nome => "Guaporema")
Cidade.create!(:estado => e, :nome => "Guaraci")
Cidade.create!(:estado => e, :nome => "Guaraniaçu")
Cidade.create!(:estado => e, :nome => "Guarapuava")
Cidade.create!(:estado => e, :nome => "Guaraqueçaba")
Cidade.create!(:estado => e, :nome => "Guaratuba")
Cidade.create!(:estado => e, :nome => "Guaíra")
Cidade.create!(:estado => e, :nome => "Honório Serpa")
Cidade.create!(:estado => e, :nome => "Ibaiti")
Cidade.create!(:estado => e, :nome => "Ibema")
Cidade.create!(:estado => e, :nome => "Ibiporã")
Cidade.create!(:estado => e, :nome => "Icaraíma")
Cidade.create!(:estado => e, :nome => "Iguaraçu")
Cidade.create!(:estado => e, :nome => "Iguatu")
Cidade.create!(:estado => e, :nome => "Imbaú")
Cidade.create!(:estado => e, :nome => "Imbituva")
Cidade.create!(:estado => e, :nome => "Inajá")
Cidade.create!(:estado => e, :nome => "Indianópolis")
Cidade.create!(:estado => e, :nome => "Inácio Martins")
Cidade.create!(:estado => e, :nome => "Ipiranga")
Cidade.create!(:estado => e, :nome => "Iporã")
Cidade.create!(:estado => e, :nome => "Iracema do Oeste")
Cidade.create!(:estado => e, :nome => "Irati")
Cidade.create!(:estado => e, :nome => "Iretama")
Cidade.create!(:estado => e, :nome => "Itaguajé")
Cidade.create!(:estado => e, :nome => "Itaipulândia")
Cidade.create!(:estado => e, :nome => "Itambaracá")
Cidade.create!(:estado => e, :nome => "Itambé")
Cidade.create!(:estado => e, :nome => "Itapejara dOeste")
Cidade.create!(:estado => e, :nome => "Itaperuçu")
Cidade.create!(:estado => e, :nome => "Itaúna do Sul")
Cidade.create!(:estado => e, :nome => "Ivaiporã")
Cidade.create!(:estado => e, :nome => "Ivatuba")
Cidade.create!(:estado => e, :nome => "Ivaté")
Cidade.create!(:estado => e, :nome => "Ivaí")
Cidade.create!(:estado => e, :nome => "Jaboti")
Cidade.create!(:estado => e, :nome => "Jacarezinho")
Cidade.create!(:estado => e, :nome => "Jaguapitã")
Cidade.create!(:estado => e, :nome => "Jaguariaíva")
Cidade.create!(:estado => e, :nome => "Jandaia do Sul")
Cidade.create!(:estado => e, :nome => "Janiópolis")
Cidade.create!(:estado => e, :nome => "Japira")
Cidade.create!(:estado => e, :nome => "Japurá")
Cidade.create!(:estado => e, :nome => "Jardim Alegre")
Cidade.create!(:estado => e, :nome => "Jardim Olinda")
Cidade.create!(:estado => e, :nome => "Jataizinho")
Cidade.create!(:estado => e, :nome => "Jesuítas")
Cidade.create!(:estado => e, :nome => "Joaquim Távora")
Cidade.create!(:estado => e, :nome => "Jundiaí do Sul")
Cidade.create!(:estado => e, :nome => "Juranda")
Cidade.create!(:estado => e, :nome => "Jussara")
Cidade.create!(:estado => e, :nome => "Kaloré")
Cidade.create!(:estado => e, :nome => "Lapa")
Cidade.create!(:estado => e, :nome => "Laranjal")
Cidade.create!(:estado => e, :nome => "Laranjeiras do Sul")
Cidade.create!(:estado => e, :nome => "Leópolis")
Cidade.create!(:estado => e, :nome => "Lidianópolis")
Cidade.create!(:estado => e, :nome => "Lindoeste")
Cidade.create!(:estado => e, :nome => "Loanda")
Cidade.create!(:estado => e, :nome => "Lobato")
Cidade.create!(:estado => e, :nome => "Londrina")
Cidade.create!(:estado => e, :nome => "Luiziana")
Cidade.create!(:estado => e, :nome => "Lunardelli")
Cidade.create!(:estado => e, :nome => "Lupionópolis")
Cidade.create!(:estado => e, :nome => "Mallet")
Cidade.create!(:estado => e, :nome => "Mamborê")
Cidade.create!(:estado => e, :nome => "Mandaguari")
Cidade.create!(:estado => e, :nome => "Mandaguaçu")
Cidade.create!(:estado => e, :nome => "Mandirituba")
Cidade.create!(:estado => e, :nome => "Manfrinópolis")
Cidade.create!(:estado => e, :nome => "Mangueirinha")
Cidade.create!(:estado => e, :nome => "Manoel Ribas")
Cidade.create!(:estado => e, :nome => "Marechal Cândido Rondon")
Cidade.create!(:estado => e, :nome => "Maria Helena")
Cidade.create!(:estado => e, :nome => "Marialva")
Cidade.create!(:estado => e, :nome => "Marilena")
Cidade.create!(:estado => e, :nome => "Mariluz")
Cidade.create!(:estado => e, :nome => "Marilândia do Sul")
Cidade.create!(:estado => e, :nome => "Maringá")
Cidade.create!(:estado => e, :nome => "Maripá")
Cidade.create!(:estado => e, :nome => "Mariópolis")
Cidade.create!(:estado => e, :nome => "Marmeleiro")
Cidade.create!(:estado => e, :nome => "Marquinho")
Cidade.create!(:estado => e, :nome => "Marumbi")
Cidade.create!(:estado => e, :nome => "Matelândia")
Cidade.create!(:estado => e, :nome => "Matinhos")
Cidade.create!(:estado => e, :nome => "Mato Rico")
Cidade.create!(:estado => e, :nome => "Mauá da Serra")
Cidade.create!(:estado => e, :nome => "Medianeira")
Cidade.create!(:estado => e, :nome => "Mercedes")
Cidade.create!(:estado => e, :nome => "Mirador")
Cidade.create!(:estado => e, :nome => "Miraselva")
Cidade.create!(:estado => e, :nome => "Missal")
Cidade.create!(:estado => e, :nome => "Moreira Sales")
Cidade.create!(:estado => e, :nome => "Morretes")
Cidade.create!(:estado => e, :nome => "Munhoz de Melo")
Cidade.create!(:estado => e, :nome => "Nossa Senhora das Graças")
Cidade.create!(:estado => e, :nome => "Nova Aliança do Ivaí")
Cidade.create!(:estado => e, :nome => "Nova América da Colina")
Cidade.create!(:estado => e, :nome => "Nova Aurora")
Cidade.create!(:estado => e, :nome => "Nova Cantu")
Cidade.create!(:estado => e, :nome => "Nova Esperança")
Cidade.create!(:estado => e, :nome => "Nova Esperança do Sudoeste")
Cidade.create!(:estado => e, :nome => "Nova Fátima")
Cidade.create!(:estado => e, :nome => "Nova Laranjeiras")
Cidade.create!(:estado => e, :nome => "Nova Londrina")
Cidade.create!(:estado => e, :nome => "Nova Olímpia")
Cidade.create!(:estado => e, :nome => "Nova Prata do Iguaçu")
Cidade.create!(:estado => e, :nome => "Nova Santa Bárbara")
Cidade.create!(:estado => e, :nome => "Nova Santa Rosa")
Cidade.create!(:estado => e, :nome => "Nova Tebas")
Cidade.create!(:estado => e, :nome => "Novo Itacolomi")
Cidade.create!(:estado => e, :nome => "Ortigueira")
Cidade.create!(:estado => e, :nome => "Ourizona")
Cidade.create!(:estado => e, :nome => "Ouro Verde do Oeste")
Cidade.create!(:estado => e, :nome => "Paiçandu")
Cidade.create!(:estado => e, :nome => "Palmas")
Cidade.create!(:estado => e, :nome => "Palmeira")
Cidade.create!(:estado => e, :nome => "Palmital")
Cidade.create!(:estado => e, :nome => "Palotina")
Cidade.create!(:estado => e, :nome => "Paranacity")
Cidade.create!(:estado => e, :nome => "Paranaguá")
Cidade.create!(:estado => e, :nome => "Paranapoema")
Cidade.create!(:estado => e, :nome => "Paranavaí")
Cidade.create!(:estado => e, :nome => "Paraíso do Norte")
Cidade.create!(:estado => e, :nome => "Pato Bragado")
Cidade.create!(:estado => e, :nome => "Pato Branco")
Cidade.create!(:estado => e, :nome => "Paula Freitas")
Cidade.create!(:estado => e, :nome => "Paulo Frontin")
Cidade.create!(:estado => e, :nome => "Peabiru")
Cidade.create!(:estado => e, :nome => "Perobal")
Cidade.create!(:estado => e, :nome => "Pinhais")
Cidade.create!(:estado => e, :nome => "Pinhal de São Bento")
Cidade.create!(:estado => e, :nome => "Pinhalão")
Cidade.create!(:estado => e, :nome => "Pinhão")
Cidade.create!(:estado => e, :nome => "Piraquara")
Cidade.create!(:estado => e, :nome => "Piraí do Sul")
Cidade.create!(:estado => e, :nome => "Pitanga")
Cidade.create!(:estado => e, :nome => "Pitangueiras")
Cidade.create!(:estado => e, :nome => "Piên")
Cidade.create!(:estado => e, :nome => "Planaltina do Paraná")
Cidade.create!(:estado => e, :nome => "Planalto")
Cidade.create!(:estado => e, :nome => "Ponta Grossa")
Cidade.create!(:estado => e, :nome => "Pontal do Paraná")
Cidade.create!(:estado => e, :nome => "Porecatu")
Cidade.create!(:estado => e, :nome => "Porto Amazonas")
Cidade.create!(:estado => e, :nome => "Porto Barreiro")
Cidade.create!(:estado => e, :nome => "Porto Rico")
Cidade.create!(:estado => e, :nome => "Porto Vitória")
Cidade.create!(:estado => e, :nome => "Prado Ferreira")
Cidade.create!(:estado => e, :nome => "Pranchita")
Cidade.create!(:estado => e, :nome => "Presidente Castelo Branco")
Cidade.create!(:estado => e, :nome => "Primeiro de Maio")
Cidade.create!(:estado => e, :nome => "Prudentópolis")
Cidade.create!(:estado => e, :nome => "Pérola")
Cidade.create!(:estado => e, :nome => "Pérola dOeste")
Cidade.create!(:estado => e, :nome => "Quarto Centenário")
Cidade.create!(:estado => e, :nome => "Quatiguá")
Cidade.create!(:estado => e, :nome => "Quatro Barras")
Cidade.create!(:estado => e, :nome => "Quatro Pontes")
Cidade.create!(:estado => e, :nome => "Quedas do Iguaçu")
Cidade.create!(:estado => e, :nome => "Querência do Norte")
Cidade.create!(:estado => e, :nome => "Quinta do Sol")
Cidade.create!(:estado => e, :nome => "Quitandinha")
Cidade.create!(:estado => e, :nome => "Ramilândia")
Cidade.create!(:estado => e, :nome => "Rancho Alegre")
Cidade.create!(:estado => e, :nome => "Rancho Alegre dOeste")
Cidade.create!(:estado => e, :nome => "Realeza")
Cidade.create!(:estado => e, :nome => "Rebouças")
Cidade.create!(:estado => e, :nome => "Renascença")
Cidade.create!(:estado => e, :nome => "Reserva")
Cidade.create!(:estado => e, :nome => "Reserva do Iguaçu")
Cidade.create!(:estado => e, :nome => "Ribeirão Claro")
Cidade.create!(:estado => e, :nome => "Ribeirão do Pinhal")
Cidade.create!(:estado => e, :nome => "Rio Azul")
Cidade.create!(:estado => e, :nome => "Rio Bom")
Cidade.create!(:estado => e, :nome => "Rio Bonito do Iguaçu")
Cidade.create!(:estado => e, :nome => "Rio Branco do Ivaí")
Cidade.create!(:estado => e, :nome => "Rio Branco do Sul")
Cidade.create!(:estado => e, :nome => "Rio Negro")
Cidade.create!(:estado => e, :nome => "Rolândia")
Cidade.create!(:estado => e, :nome => "Roncador")
Cidade.create!(:estado => e, :nome => "Rondon")
Cidade.create!(:estado => e, :nome => "Rosário do Ivaí")
Cidade.create!(:estado => e, :nome => "Sabáudia")
Cidade.create!(:estado => e, :nome => "Salgado Filho")
Cidade.create!(:estado => e, :nome => "Salto do Itararé")
Cidade.create!(:estado => e, :nome => "Salto do Lontra")
Cidade.create!(:estado => e, :nome => "Santa Amélia")
Cidade.create!(:estado => e, :nome => "Santa Cecília do Pavão")
Cidade.create!(:estado => e, :nome => "Santa Cruz de Monte Castelo")
Cidade.create!(:estado => e, :nome => "Santa Fé")
Cidade.create!(:estado => e, :nome => "Santa Helena")
Cidade.create!(:estado => e, :nome => "Santa Inês")
Cidade.create!(:estado => e, :nome => "Santa Isabel do Ivaí")
Cidade.create!(:estado => e, :nome => "Santa Izabel do Oeste")
Cidade.create!(:estado => e, :nome => "Santa Lúcia")
Cidade.create!(:estado => e, :nome => "Santa Maria do Oeste")
Cidade.create!(:estado => e, :nome => "Santa Mariana")
Cidade.create!(:estado => e, :nome => "Santa Mônica")
Cidade.create!(:estado => e, :nome => "Santa Tereza do Oeste")
Cidade.create!(:estado => e, :nome => "Santa Terezinha de Itaipu")
Cidade.create!(:estado => e, :nome => "Santana do Itararé")
Cidade.create!(:estado => e, :nome => "Santo Antônio da Platina")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Caiuá")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Paraíso")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Sudoeste")
Cidade.create!(:estado => e, :nome => "Santo Inácio")
Cidade.create!(:estado => e, :nome => "Sapopema")
Cidade.create!(:estado => e, :nome => "Sarandi")
Cidade.create!(:estado => e, :nome => "Saudade do Iguaçu")
Cidade.create!(:estado => e, :nome => "Sengés")
Cidade.create!(:estado => e, :nome => "Serranópolis do Iguaçu")
Cidade.create!(:estado => e, :nome => "Sertaneja")
Cidade.create!(:estado => e, :nome => "Sertanópolis")
Cidade.create!(:estado => e, :nome => "Siqueira Campos")
Cidade.create!(:estado => e, :nome => "Sulina")
Cidade.create!(:estado => e, :nome => "São Carlos do Ivaí")
Cidade.create!(:estado => e, :nome => "São Jerônimo da Serra")
Cidade.create!(:estado => e, :nome => "São Jorge dOeste")
Cidade.create!(:estado => e, :nome => "São Jorge do Ivaí")
Cidade.create!(:estado => e, :nome => "São Jorge do Patrocínio")
Cidade.create!(:estado => e, :nome => "São José da Boa Vista")
Cidade.create!(:estado => e, :nome => "São José das Palmeiras")
Cidade.create!(:estado => e, :nome => "São José dos Pinhais")
Cidade.create!(:estado => e, :nome => "São João")
Cidade.create!(:estado => e, :nome => "São João do Caiuá")
Cidade.create!(:estado => e, :nome => "São João do Ivaí")
Cidade.create!(:estado => e, :nome => "São João do Triunfo")
Cidade.create!(:estado => e, :nome => "São Manoel do Paraná")
Cidade.create!(:estado => e, :nome => "São Mateus do Sul")
Cidade.create!(:estado => e, :nome => "São Miguel do Iguaçu")
Cidade.create!(:estado => e, :nome => "São Pedro do Iguaçu")
Cidade.create!(:estado => e, :nome => "São Pedro do Ivaí")
Cidade.create!(:estado => e, :nome => "São Pedro do Paraná")
Cidade.create!(:estado => e, :nome => "São Sebastião da Amoreira")
Cidade.create!(:estado => e, :nome => "São Tomé")
Cidade.create!(:estado => e, :nome => "Tamarana")
Cidade.create!(:estado => e, :nome => "Tamboara")
Cidade.create!(:estado => e, :nome => "Tapejara")
Cidade.create!(:estado => e, :nome => "Tapira")
Cidade.create!(:estado => e, :nome => "Teixeira Soares")
Cidade.create!(:estado => e, :nome => "Telêmaco Borba")
Cidade.create!(:estado => e, :nome => "Terra Boa")
Cidade.create!(:estado => e, :nome => "Terra Rica")
Cidade.create!(:estado => e, :nome => "Terra Roxa")
Cidade.create!(:estado => e, :nome => "Tibagi")
Cidade.create!(:estado => e, :nome => "Tijucas do Sul")
Cidade.create!(:estado => e, :nome => "Toledo")
Cidade.create!(:estado => e, :nome => "Tomazina")
Cidade.create!(:estado => e, :nome => "Três Barras do Paraná")
Cidade.create!(:estado => e, :nome => "Tunas do Paraná")
Cidade.create!(:estado => e, :nome => "Tuneiras do Oeste")
Cidade.create!(:estado => e, :nome => "Tupãssi")
Cidade.create!(:estado => e, :nome => "Turvo")
Cidade.create!(:estado => e, :nome => "Ubiratã")
Cidade.create!(:estado => e, :nome => "Umuarama")
Cidade.create!(:estado => e, :nome => "Uniflor")
Cidade.create!(:estado => e, :nome => "União da Vitória")
Cidade.create!(:estado => e, :nome => "Uraí")
Cidade.create!(:estado => e, :nome => "Ventania")
Cidade.create!(:estado => e, :nome => "Vera Cruz do Oeste")
Cidade.create!(:estado => e, :nome => "Verê")
Cidade.create!(:estado => e, :nome => "Virmond")
Cidade.create!(:estado => e, :nome => "Vitorino")
Cidade.create!(:estado => e, :nome => "Wenceslau Braz")
Cidade.create!(:estado => e, :nome => "Xambrê")


Estado.create!(:unidade => u, :sigla => 'RJ', :nome => "Rio de Janeiro")
e = Estado.find_by(nome: "Rio de Janeiro")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Angra dos Reis")
Cidade.create!(:estado => e, :nome => "Aperibé")
Cidade.create!(:estado => e, :nome => "Araruama")
Cidade.create!(:estado => e, :nome => "Areal")
Cidade.create!(:estado => e, :nome => "Armação dos Búzios")
Cidade.create!(:estado => e, :nome => "Arraial do Cabo")
Cidade.create!(:estado => e, :nome => "Barra Mansa")
Cidade.create!(:estado => e, :nome => "Barra do Piraí")
Cidade.create!(:estado => e, :nome => "Belford Roxo")
Cidade.create!(:estado => e, :nome => "Bom Jardim")
Cidade.create!(:estado => e, :nome => "Bom Jesus do Itabapoana")
Cidade.create!(:estado => e, :nome => "Cabo Frio")
Cidade.create!(:estado => e, :nome => "Cachoeiras de Macacu")
Cidade.create!(:estado => e, :nome => "Cambuci")
Cidade.create!(:estado => e, :nome => "Campos dos Goytacazes")
Cidade.create!(:estado => e, :nome => "Cantagalo")
Cidade.create!(:estado => e, :nome => "Carapebus")
Cidade.create!(:estado => e, :nome => "Cardoso Moreira")
Cidade.create!(:estado => e, :nome => "Carmo")
Cidade.create!(:estado => e, :nome => "Casimiro de Abreu")
Cidade.create!(:estado => e, :nome => "Comador Levy Gasparian")
Cidade.create!(:estado => e, :nome => "Conceição de Macabu")
Cidade.create!(:estado => e, :nome => "Cordeiro")
Cidade.create!(:estado => e, :nome => "Duas Barras")
Cidade.create!(:estado => e, :nome => "Duque de Caxias")
Cidade.create!(:estado => e, :nome => "Engenheiro Paulo de Frontin")
Cidade.create!(:estado => e, :nome => "Guapimirim")
Cidade.create!(:estado => e, :nome => "Iguaba Grande")
Cidade.create!(:estado => e, :nome => "Itaboraí")
Cidade.create!(:estado => e, :nome => "Itaguaí")
Cidade.create!(:estado => e, :nome => "Italva")
Cidade.create!(:estado => e, :nome => "Itaocara")
Cidade.create!(:estado => e, :nome => "Itaperuna")
Cidade.create!(:estado => e, :nome => "Itatiaia")
Cidade.create!(:estado => e, :nome => "Japeri")
Cidade.create!(:estado => e, :nome => "Laje do Muriaé")
Cidade.create!(:estado => e, :nome => "Macaé")
Cidade.create!(:estado => e, :nome => "Macuco")
Cidade.create!(:estado => e, :nome => "Magé")
Cidade.create!(:estado => e, :nome => "Mangaratiba")
Cidade.create!(:estado => e, :nome => "Maricá")
Cidade.create!(:estado => e, :nome => "Mes")
Cidade.create!(:estado => e, :nome => "Mesquita")
Cidade.create!(:estado => e, :nome => "Miguel Pereira")
Cidade.create!(:estado => e, :nome => "Miracema")
Cidade.create!(:estado => e, :nome => "Natividade")
Cidade.create!(:estado => e, :nome => "Nilópolis")
Cidade.create!(:estado => e, :nome => "Niterói")
Cidade.create!(:estado => e, :nome => "Nova Friburgo")
Cidade.create!(:estado => e, :nome => "Nova Iguaçu")
Cidade.create!(:estado => e, :nome => "Paracambi")
Cidade.create!(:estado => e, :nome => "Parati")
Cidade.create!(:estado => e, :nome => "Paraíba do Sul")
Cidade.create!(:estado => e, :nome => "Paty do Alferes")
Cidade.create!(:estado => e, :nome => "Petrópolis")
Cidade.create!(:estado => e, :nome => "Pinheiral")
Cidade.create!(:estado => e, :nome => "Piraí")
Cidade.create!(:estado => e, :nome => "Porciúncula")
Cidade.create!(:estado => e, :nome => "Porto Real")
Cidade.create!(:estado => e, :nome => "Quatis")
Cidade.create!(:estado => e, :nome => "Queimados")
Cidade.create!(:estado => e, :nome => "Quissamã")
Cidade.create!(:estado => e, :nome => "Rese")
Cidade.create!(:estado => e, :nome => "Rio Bonito")
Cidade.create!(:estado => e, :nome => "Rio Claro")
Cidade.create!(:estado => e, :nome => "Rio das Flores")
Cidade.create!(:estado => e, :nome => "Rio das Ostras")
Cidade.create!(:estado => e, :nome => "Rio de Janeiro")
Cidade.create!(:estado => e, :nome => "Santa Maria Madalena")
Cidade.create!(:estado => e, :nome => "Santo Antônio de Pádua")
Cidade.create!(:estado => e, :nome => "Sapucaia")
Cidade.create!(:estado => e, :nome => "Saquarema")
Cidade.create!(:estado => e, :nome => "Seropédica")
Cidade.create!(:estado => e, :nome => "Silva Jardim")
Cidade.create!(:estado => e, :nome => "Sumidouro")
Cidade.create!(:estado => e, :nome => "São Fidélis")
Cidade.create!(:estado => e, :nome => "São Francisco de Itabapoana")
Cidade.create!(:estado => e, :nome => "São Gonçalo")
Cidade.create!(:estado => e, :nome => "São José de Ubá")
Cidade.create!(:estado => e, :nome => "São José do Vale do Rio Preto")
Cidade.create!(:estado => e, :nome => "São João da Barra")
Cidade.create!(:estado => e, :nome => "São João de Meriti")
Cidade.create!(:estado => e, :nome => "São Pedro da Aldeia")
Cidade.create!(:estado => e, :nome => "São Sebastião do Alto")
Cidade.create!(:estado => e, :nome => "Tanguá")
Cidade.create!(:estado => e, :nome => "Teresópolis")
Cidade.create!(:estado => e, :nome => "Trajano de Morais")
Cidade.create!(:estado => e, :nome => "Três Rios")
Cidade.create!(:estado => e, :nome => "Valença")
Cidade.create!(:estado => e, :nome => "Varre-Sai")
Cidade.create!(:estado => e, :nome => "Vassouras")
Cidade.create!(:estado => e, :nome => "Volta Redonda")


Estado.create!(:unidade => u, :sigla => 'RN', :nome => "Rio Grande do Norte")
e = Estado.find_by(nome: "Rio Grande do Norte")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Acari")
Cidade.create!(:estado => e, :nome => "Açu")
Cidade.create!(:estado => e, :nome => "Afonso Bezerra")
Cidade.create!(:estado => e, :nome => "Água Nova")
Cidade.create!(:estado => e, :nome => "Alexandria")
Cidade.create!(:estado => e, :nome => "Almino Afonso")
Cidade.create!(:estado => e, :nome => "Alto do Rodrigues")
Cidade.create!(:estado => e, :nome => "Angicos")
Cidade.create!(:estado => e, :nome => "Antônio Martins")
Cidade.create!(:estado => e, :nome => "Apodi")
Cidade.create!(:estado => e, :nome => "Areia Branca")
Cidade.create!(:estado => e, :nome => "Arês")
Cidade.create!(:estado => e, :nome => "Augusto Severo")
Cidade.create!(:estado => e, :nome => "Baraúna")
Cidade.create!(:estado => e, :nome => "Barcelona")
Cidade.create!(:estado => e, :nome => "Baía Formosa")
Cidade.create!(:estado => e, :nome => "Bento Fernandes")
Cidade.create!(:estado => e, :nome => "Bodó")
Cidade.create!(:estado => e, :nome => "Bom Jesus")
Cidade.create!(:estado => e, :nome => "Brejinho")
Cidade.create!(:estado => e, :nome => "Caicó")
Cidade.create!(:estado => e, :nome => "Caiçara do Norte")
Cidade.create!(:estado => e, :nome => "Caiçara do Rio do Vento")
Cidade.create!(:estado => e, :nome => "Campo Redondo")
Cidade.create!(:estado => e, :nome => "Canguaretama")
Cidade.create!(:estado => e, :nome => "Caraúbas")
Cidade.create!(:estado => e, :nome => "Carnaubais")
Cidade.create!(:estado => e, :nome => "Carnaúba dos Dantas")
Cidade.create!(:estado => e, :nome => "Ceará-Mirim")
Cidade.create!(:estado => e, :nome => "Cerro Corá")
Cidade.create!(:estado => e, :nome => "Coronel Ezequiel")
Cidade.create!(:estado => e, :nome => "Coronel João Pessoa")
Cidade.create!(:estado => e, :nome => "Cruzeta")
Cidade.create!(:estado => e, :nome => "Currais Novos")
Cidade.create!(:estado => e, :nome => "Doutor Severiano")
Cidade.create!(:estado => e, :nome => "Encanto")
Cidade.create!(:estado => e, :nome => "Equador")
Cidade.create!(:estado => e, :nome => "Espírito Santo")
Cidade.create!(:estado => e, :nome => "Extremoz")
Cidade.create!(:estado => e, :nome => "Felipe Guerra")
Cidade.create!(:estado => e, :nome => "Fernando Pedroza")
Cidade.create!(:estado => e, :nome => "Florânia")
Cidade.create!(:estado => e, :nome => "Francisco Dantas")
Cidade.create!(:estado => e, :nome => "Frutuoso Gomes")
Cidade.create!(:estado => e, :nome => "Galinhos")
Cidade.create!(:estado => e, :nome => "Goianinha")
Cidade.create!(:estado => e, :nome => "Governador Dix-Sept Rosado")
Cidade.create!(:estado => e, :nome => "Grossos")
Cidade.create!(:estado => e, :nome => "Guamaré")
Cidade.create!(:estado => e, :nome => "Ielmo Marinho")
Cidade.create!(:estado => e, :nome => "Ipanguaçu")
Cidade.create!(:estado => e, :nome => "Ipueira")
Cidade.create!(:estado => e, :nome => "Itajá")
Cidade.create!(:estado => e, :nome => "Itaú")
Cidade.create!(:estado => e, :nome => "Jandaíra")
Cidade.create!(:estado => e, :nome => "Janduís")
Cidade.create!(:estado => e, :nome => "Januário Cicco")
Cidade.create!(:estado => e, :nome => "Japi")
Cidade.create!(:estado => e, :nome => "Jardim de Angicos")
Cidade.create!(:estado => e, :nome => "Jardim de Piranhas")
Cidade.create!(:estado => e, :nome => "Jardim do Seridó")
Cidade.create!(:estado => e, :nome => "Jaçanã")
Cidade.create!(:estado => e, :nome => "José da Penha")
Cidade.create!(:estado => e, :nome => "João Câmara")
Cidade.create!(:estado => e, :nome => "João Dias")
Cidade.create!(:estado => e, :nome => "Jucurutu")
Cidade.create!(:estado => e, :nome => "Jundiá")
Cidade.create!(:estado => e, :nome => "Lagoa Nova")
Cidade.create!(:estado => e, :nome => "Lagoa Salgada")
Cidade.create!(:estado => e, :nome => "Lagoa dAnta")
Cidade.create!(:estado => e, :nome => "Lagoa de Pedras")
Cidade.create!(:estado => e, :nome => "Lagoa de Velhos")
Cidade.create!(:estado => e, :nome => "Lajes")
Cidade.create!(:estado => e, :nome => "Lajes Pintadas")
Cidade.create!(:estado => e, :nome => "Lucrécia")
Cidade.create!(:estado => e, :nome => "Luís Gomes")
Cidade.create!(:estado => e, :nome => "Macau")
Cidade.create!(:estado => e, :nome => "Macaíba")
Cidade.create!(:estado => e, :nome => "Major Sales")
Cidade.create!(:estado => e, :nome => "Marcelino Vieira")
Cidade.create!(:estado => e, :nome => "Martins")
Cidade.create!(:estado => e, :nome => "Maxaranguape")
Cidade.create!(:estado => e, :nome => "Messias Targino")
Cidade.create!(:estado => e, :nome => "Montanhas")
Cidade.create!(:estado => e, :nome => "Monte Alegre")
Cidade.create!(:estado => e, :nome => "Monte das Gameleiras")
Cidade.create!(:estado => e, :nome => "Mossoró")
Cidade.create!(:estado => e, :nome => "Natal")
Cidade.create!(:estado => e, :nome => "Nova Cruz")
Cidade.create!(:estado => e, :nome => "Nísia Floresta")
Cidade.create!(:estado => e, :nome => "Olho-dÁgua do Borges")
Cidade.create!(:estado => e, :nome => "Ouro Branco")
Cidade.create!(:estado => e, :nome => "Paraná")
Cidade.create!(:estado => e, :nome => "Parazinho")
Cidade.create!(:estado => e, :nome => "Paraú")
Cidade.create!(:estado => e, :nome => "Parelhas")
Cidade.create!(:estado => e, :nome => "Parnamirim")
Cidade.create!(:estado => e, :nome => "Passa e Fica")
Cidade.create!(:estado => e, :nome => "Passagem")
Cidade.create!(:estado => e, :nome => "Patu")
Cidade.create!(:estado => e, :nome => "Pau dos Ferros")
Cidade.create!(:estado => e, :nome => "Pedra Grande")
Cidade.create!(:estado => e, :nome => "Pedra Preta")
Cidade.create!(:estado => e, :nome => "Pedro Avelino")
Cidade.create!(:estado => e, :nome => "Pedro Velho")
Cidade.create!(:estado => e, :nome => "Pências")
Cidade.create!(:estado => e, :nome => "Pilões")
Cidade.create!(:estado => e, :nome => "Portalegre")
Cidade.create!(:estado => e, :nome => "Porto do Mangue")
Cidade.create!(:estado => e, :nome => "Poço Branco")
Cidade.create!(:estado => e, :nome => "Presidente Juscelino")
Cidade.create!(:estado => e, :nome => "Pureza")
Cidade.create!(:estado => e, :nome => "Rafael Fernandes")
Cidade.create!(:estado => e, :nome => "Rafael Godeiro")
Cidade.create!(:estado => e, :nome => "Riacho da Cruz")
Cidade.create!(:estado => e, :nome => "Riacho de Santana")
Cidade.create!(:estado => e, :nome => "Riachuelo")
Cidade.create!(:estado => e, :nome => "Rio do Fogo")
Cidade.create!(:estado => e, :nome => "Rodolfo Fernandes")
Cidade.create!(:estado => e, :nome => "Ruy Barbosa")
Cidade.create!(:estado => e, :nome => "Santa Cruz")
Cidade.create!(:estado => e, :nome => "Santa Maria")
Cidade.create!(:estado => e, :nome => "Santana do Matos")
Cidade.create!(:estado => e, :nome => "Santana do Seridó")
Cidade.create!(:estado => e, :nome => "Santo Antônio")
Cidade.create!(:estado => e, :nome => "Senador Elói de Souza")
Cidade.create!(:estado => e, :nome => "Senador Georgino Avelino")
Cidade.create!(:estado => e, :nome => "Serra Negra do Norte")
Cidade.create!(:estado => e, :nome => "Serra de São Bento")
Cidade.create!(:estado => e, :nome => "Serra do Mel")
Cidade.create!(:estado => e, :nome => "Serrinha")
Cidade.create!(:estado => e, :nome => "Serrinha dos Pintos")
Cidade.create!(:estado => e, :nome => "Severiano Melo")
Cidade.create!(:estado => e, :nome => "São Bento do Norte")
Cidade.create!(:estado => e, :nome => "São Bento do Trairí")
Cidade.create!(:estado => e, :nome => "São Fernando")
Cidade.create!(:estado => e, :nome => "São Francisco do Oeste")
Cidade.create!(:estado => e, :nome => "São Gonçalo do Amarante")
Cidade.create!(:estado => e, :nome => "São José de Mipibu")
Cidade.create!(:estado => e, :nome => "São José do Campestre")
Cidade.create!(:estado => e, :nome => "São José do Seridó")
Cidade.create!(:estado => e, :nome => "São João do Sabugi")
Cidade.create!(:estado => e, :nome => "São Miguel")
Cidade.create!(:estado => e, :nome => "São Miguel do Gostoso")
Cidade.create!(:estado => e, :nome => "São Paulo do Potengi")
Cidade.create!(:estado => e, :nome => "São Pedro")
Cidade.create!(:estado => e, :nome => "São Rafael")
Cidade.create!(:estado => e, :nome => "São Tomé")
Cidade.create!(:estado => e, :nome => "São Vicente")
Cidade.create!(:estado => e, :nome => "Sítio Novo")
Cidade.create!(:estado => e, :nome => "Taboleiro Grande")
Cidade.create!(:estado => e, :nome => "Taipu")
Cidade.create!(:estado => e, :nome => "Tangará")
Cidade.create!(:estado => e, :nome => "Tenente Ananias")
Cidade.create!(:estado => e, :nome => "Tenente Laurentino Cruz")
Cidade.create!(:estado => e, :nome => "Tibau")
Cidade.create!(:estado => e, :nome => "Tibau do Sul")
Cidade.create!(:estado => e, :nome => "Timbaúba dos Batistas")
Cidade.create!(:estado => e, :nome => "Touros")
Cidade.create!(:estado => e, :nome => "Triunfo Potiguar")
Cidade.create!(:estado => e, :nome => "Umarizal")
Cidade.create!(:estado => e, :nome => "Upanema")
Cidade.create!(:estado => e, :nome => "Venha-Ver")
Cidade.create!(:estado => e, :nome => "Vera Cruz")
Cidade.create!(:estado => e, :nome => "Vila Flor")
Cidade.create!(:estado => e, :nome => "Viçosa")
Cidade.create!(:estado => e, :nome => "Várzea")


Estado.create!(:unidade => u, :sigla => 'RO', :nome => "Rondônia")
e = Estado.find_by(nome: "Rondônia")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Alta Floresta dOeste")
Cidade.create!(:estado => e, :nome => "Alto Alegre dos Parecis")
Cidade.create!(:estado => e, :nome => "Alto Paraíso")
Cidade.create!(:estado => e, :nome => "Alvorada dOeste")
Cidade.create!(:estado => e, :nome => "Ariquemes")
Cidade.create!(:estado => e, :nome => "Buritis")
Cidade.create!(:estado => e, :nome => "Cabixi")
Cidade.create!(:estado => e, :nome => "Cacaulândia")
Cidade.create!(:estado => e, :nome => "Cacoal")
Cidade.create!(:estado => e, :nome => "Campo Novo de Rondônia")
Cidade.create!(:estado => e, :nome => "Candeias do Jamari")
Cidade.create!(:estado => e, :nome => "Castanheiras")
Cidade.create!(:estado => e, :nome => "Cerejeiras")
Cidade.create!(:estado => e, :nome => "Chupinguaia")
Cidade.create!(:estado => e, :nome => "Colorado do Oeste")
Cidade.create!(:estado => e, :nome => "Corumbiara")
Cidade.create!(:estado => e, :nome => "Costa Marques")
Cidade.create!(:estado => e, :nome => "Cujubim")
Cidade.create!(:estado => e, :nome => "Espigão dOeste")
Cidade.create!(:estado => e, :nome => "Governador Jorge Teixeira")
Cidade.create!(:estado => e, :nome => "Guajará-Mirim")
Cidade.create!(:estado => e, :nome => "Itapuã do Oeste")
Cidade.create!(:estado => e, :nome => "Jaru")
Cidade.create!(:estado => e, :nome => "Ji-Paraná")
Cidade.create!(:estado => e, :nome => "Machadinho dOeste")
Cidade.create!(:estado => e, :nome => "Ministro Andreazza")
Cidade.create!(:estado => e, :nome => "Mirante da Serra")
Cidade.create!(:estado => e, :nome => "Monte Negro")
Cidade.create!(:estado => e, :nome => "Nova Brasilândia dOeste")
Cidade.create!(:estado => e, :nome => "Nova Mamoré")
Cidade.create!(:estado => e, :nome => "Nova União")
Cidade.create!(:estado => e, :nome => "Novo Horizonte do Oeste")
Cidade.create!(:estado => e, :nome => "Ouro Preto do Oeste")
Cidade.create!(:estado => e, :nome => "Parecis")
Cidade.create!(:estado => e, :nome => "Pimenta Bueno")
Cidade.create!(:estado => e, :nome => "Pimenteiras do Oeste")
Cidade.create!(:estado => e, :nome => "Porto Velho")
Cidade.create!(:estado => e, :nome => "Presidente Médici")
Cidade.create!(:estado => e, :nome => "Primavera de Rondônia")
Cidade.create!(:estado => e, :nome => "Rio Crespo")
Cidade.create!(:estado => e, :nome => "Rolim de Moura")
Cidade.create!(:estado => e, :nome => "Santa Luzia dOeste")
Cidade.create!(:estado => e, :nome => "Seringueiras")
Cidade.create!(:estado => e, :nome => "São Felipe dOeste")
Cidade.create!(:estado => e, :nome => "São Francisco do Guaporé")
Cidade.create!(:estado => e, :nome => "São Miguel do Guaporé")
Cidade.create!(:estado => e, :nome => "Teixeirópolis")
Cidade.create!(:estado => e, :nome => "Theobroma")
Cidade.create!(:estado => e, :nome => "Urupá")
Cidade.create!(:estado => e, :nome => "Vale do Anari")
Cidade.create!(:estado => e, :nome => "Vale do Paraíso")
Cidade.create!(:estado => e, :nome => "Vilhena")


Estado.create!(:unidade => u, :sigla => 'RR', :nome => "Roraima")
e = Estado.find_by(nome: "Roraima")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Alto Alegre")
Cidade.create!(:estado => e, :nome => "Amajari")
Cidade.create!(:estado => e, :nome => "Boa Vista")
Cidade.create!(:estado => e, :nome => "Bonfim")
Cidade.create!(:estado => e, :nome => "Cantá")
Cidade.create!(:estado => e, :nome => "Caracaraí")
Cidade.create!(:estado => e, :nome => "Caroebe")
Cidade.create!(:estado => e, :nome => "Iracema")
Cidade.create!(:estado => e, :nome => "Mucajaí")
Cidade.create!(:estado => e, :nome => "Normandia")
Cidade.create!(:estado => e, :nome => "Pacaraima")
Cidade.create!(:estado => e, :nome => "Rorainópolis")
Cidade.create!(:estado => e, :nome => "São João da Baliza")
Cidade.create!(:estado => e, :nome => "São Luiz")
Cidade.create!(:estado => e, :nome => "Uiramutã")


Estado.create!(:unidade => u, :sigla => 'RS', :nome => "Rio Grande do Sul")
e = Estado.find_by(nome: "Rio Grande do Sul")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Aceguá")
Cidade.create!(:estado => e, :nome => "Água Santa")
Cidade.create!(:estado => e, :nome => "Agudo")
Cidade.create!(:estado => e, :nome => "Ajuricaba")
Cidade.create!(:estado => e, :nome => "Alecrim")
Cidade.create!(:estado => e, :nome => "Alegrete")
Cidade.create!(:estado => e, :nome => "Alegria")
Cidade.create!(:estado => e, :nome => "Almirante Tamandaré do Sul")
Cidade.create!(:estado => e, :nome => "Alpestre")
Cidade.create!(:estado => e, :nome => "Alto Alegre")
Cidade.create!(:estado => e, :nome => "Alto Feliz")
Cidade.create!(:estado => e, :nome => "Alvorada")
Cidade.create!(:estado => e, :nome => "Amaral Ferrador")
Cidade.create!(:estado => e, :nome => "Ametista do Sul")
Cidade.create!(:estado => e, :nome => "André da Rocha")
Cidade.create!(:estado => e, :nome => "Anta Gorda")
Cidade.create!(:estado => e, :nome => "Antônio Prado")
Cidade.create!(:estado => e, :nome => "Arambaré")
Cidade.create!(:estado => e, :nome => "Araricá")
Cidade.create!(:estado => e, :nome => "Aratiba")
Cidade.create!(:estado => e, :nome => "Arroio Grande")
Cidade.create!(:estado => e, :nome => "Arroio do Meio")
Cidade.create!(:estado => e, :nome => "Arroio do Padre")
Cidade.create!(:estado => e, :nome => "Arroio do Sal")
Cidade.create!(:estado => e, :nome => "Arroio do Tigre")
Cidade.create!(:estado => e, :nome => "Arroio dos Ratos")
Cidade.create!(:estado => e, :nome => "Arvorezinha")
Cidade.create!(:estado => e, :nome => "Augusto Pestana")
Cidade.create!(:estado => e, :nome => "Áurea")
Cidade.create!(:estado => e, :nome => "Bagé")
Cidade.create!(:estado => e, :nome => "Balneário Pinhal")
Cidade.create!(:estado => e, :nome => "Barra Funda")
Cidade.create!(:estado => e, :nome => "Barra do Guarita")
Cidade.create!(:estado => e, :nome => "Barra do Quaraí")
Cidade.create!(:estado => e, :nome => "Barra do Ribeiro")
Cidade.create!(:estado => e, :nome => "Barra do Rio Azul")
Cidade.create!(:estado => e, :nome => "Barracão")
Cidade.create!(:estado => e, :nome => "Barros Cassal")
Cidade.create!(:estado => e, :nome => "Barão")
Cidade.create!(:estado => e, :nome => "Barão de Cotegipe")
Cidade.create!(:estado => e, :nome => "Barão do Triunfo")
Cidade.create!(:estado => e, :nome => "Benjamin Constant do Sul")
Cidade.create!(:estado => e, :nome => "Bento Gonçalves")
Cidade.create!(:estado => e, :nome => "Boa Vista das Missões")
Cidade.create!(:estado => e, :nome => "Boa Vista do Buricá")
Cidade.create!(:estado => e, :nome => "Boa Vista do Cadeado")
Cidade.create!(:estado => e, :nome => "Boa Vista do Incra")
Cidade.create!(:estado => e, :nome => "Boa Vista do Sul")
Cidade.create!(:estado => e, :nome => "Bom Jesus")
Cidade.create!(:estado => e, :nome => "Bom Princípio")
Cidade.create!(:estado => e, :nome => "Bom Progresso")
Cidade.create!(:estado => e, :nome => "Bom Retiro do Sul")
Cidade.create!(:estado => e, :nome => "Boqueirão do Leão")
Cidade.create!(:estado => e, :nome => "Bossoroca")
Cidade.create!(:estado => e, :nome => "Bozano")
Cidade.create!(:estado => e, :nome => "Braga")
Cidade.create!(:estado => e, :nome => "Brochier")
Cidade.create!(:estado => e, :nome => "Butiá")
Cidade.create!(:estado => e, :nome => "Cacequi")
Cidade.create!(:estado => e, :nome => "Cachoeira do Sul")
Cidade.create!(:estado => e, :nome => "Cachoeirinha")
Cidade.create!(:estado => e, :nome => "Cacique Doble")
Cidade.create!(:estado => e, :nome => "Caibaté")
Cidade.create!(:estado => e, :nome => "Caiçara")
Cidade.create!(:estado => e, :nome => "Camaquã")
Cidade.create!(:estado => e, :nome => "Camargo")
Cidade.create!(:estado => e, :nome => "Cambará do Sul")
Cidade.create!(:estado => e, :nome => "Campestre da Serra")
Cidade.create!(:estado => e, :nome => "Campina das Missões")
Cidade.create!(:estado => e, :nome => "Campinas do Sul")
Cidade.create!(:estado => e, :nome => "Campo Bom")
Cidade.create!(:estado => e, :nome => "Campo Novo")
Cidade.create!(:estado => e, :nome => "Campos Borges")
Cidade.create!(:estado => e, :nome => "Candelária")
Cidade.create!(:estado => e, :nome => "Candiota")
Cidade.create!(:estado => e, :nome => "Canela")
Cidade.create!(:estado => e, :nome => "Canguçu")
Cidade.create!(:estado => e, :nome => "Canoas")
Cidade.create!(:estado => e, :nome => "Canudos do Vale")
Cidade.create!(:estado => e, :nome => "Capela de Santana")
Cidade.create!(:estado => e, :nome => "Capitão")
Cidade.create!(:estado => e, :nome => "Capivari do Sul")
Cidade.create!(:estado => e, :nome => "Capão Bonito do Sul")
Cidade.create!(:estado => e, :nome => "Capão da Canoa")
Cidade.create!(:estado => e, :nome => "Capão do Cipó")
Cidade.create!(:estado => e, :nome => "Capão do Leão")
Cidade.create!(:estado => e, :nome => "Carazinho")
Cidade.create!(:estado => e, :nome => "Caraá")
Cidade.create!(:estado => e, :nome => "Carlos Barbosa")
Cidade.create!(:estado => e, :nome => "Carlos Gomes")
Cidade.create!(:estado => e, :nome => "Casca")
Cidade.create!(:estado => e, :nome => "Caseiros")
Cidade.create!(:estado => e, :nome => "Catuípe")
Cidade.create!(:estado => e, :nome => "Caxias do Sul")
Cidade.create!(:estado => e, :nome => "Caçapava do Sul")
Cidade.create!(:estado => e, :nome => "Centenário")
Cidade.create!(:estado => e, :nome => "Cerrito")
Cidade.create!(:estado => e, :nome => "Cerro Branco")
Cidade.create!(:estado => e, :nome => "Cerro Grande")
Cidade.create!(:estado => e, :nome => "Cerro Grande do Sul")
Cidade.create!(:estado => e, :nome => "Cerro Largo")
Cidade.create!(:estado => e, :nome => "Chapada")
Cidade.create!(:estado => e, :nome => "Charqueadas")
Cidade.create!(:estado => e, :nome => "Charrua")
Cidade.create!(:estado => e, :nome => "Chiapetta")
Cidade.create!(:estado => e, :nome => "Chuvisca")
Cidade.create!(:estado => e, :nome => "Chuí")
Cidade.create!(:estado => e, :nome => "Cidreira")
Cidade.create!(:estado => e, :nome => "Ciríaco")
Cidade.create!(:estado => e, :nome => "Colinas")
Cidade.create!(:estado => e, :nome => "Colorado")
Cidade.create!(:estado => e, :nome => "Condor")
Cidade.create!(:estado => e, :nome => "Constantina")
Cidade.create!(:estado => e, :nome => "Coqueiro Baixo")
Cidade.create!(:estado => e, :nome => "Coqueiros do Sul")
Cidade.create!(:estado => e, :nome => "Coronel Barros")
Cidade.create!(:estado => e, :nome => "Coronel Bicaco")
Cidade.create!(:estado => e, :nome => "Coronel Pilar")
Cidade.create!(:estado => e, :nome => "Cotiporã")
Cidade.create!(:estado => e, :nome => "Coxilha")
Cidade.create!(:estado => e, :nome => "Crissiumal")
Cidade.create!(:estado => e, :nome => "Cristal")
Cidade.create!(:estado => e, :nome => "Cristal do Sul")
Cidade.create!(:estado => e, :nome => "Cruz Alta")
Cidade.create!(:estado => e, :nome => "Cruzaltense")
Cidade.create!(:estado => e, :nome => "Cruzeiro do Sul")
Cidade.create!(:estado => e, :nome => "Cândido Godói")
Cidade.create!(:estado => e, :nome => "David Canabarro")
Cidade.create!(:estado => e, :nome => "Derrubadas")
Cidade.create!(:estado => e, :nome => "Dezesseis de Novembro")
Cidade.create!(:estado => e, :nome => "Dilermando de Aguiar")
Cidade.create!(:estado => e, :nome => "Dois Irmãos")
Cidade.create!(:estado => e, :nome => "Dois Irmãos das Missões")
Cidade.create!(:estado => e, :nome => "Dois Lajeados")
Cidade.create!(:estado => e, :nome => "Dom Feliciano")
Cidade.create!(:estado => e, :nome => "Dom Pedrito")
Cidade.create!(:estado => e, :nome => "Dom Pedro de Alcântara")
Cidade.create!(:estado => e, :nome => "Dona Francisca")
Cidade.create!(:estado => e, :nome => "Doutor Maurício Cardoso")
Cidade.create!(:estado => e, :nome => "Doutor Ricardo")
Cidade.create!(:estado => e, :nome => "Eldorado do Sul")
Cidade.create!(:estado => e, :nome => "Encantado")
Cidade.create!(:estado => e, :nome => "Encruzilhada do Sul")
Cidade.create!(:estado => e, :nome => "Engenho Velho")
Cidade.create!(:estado => e, :nome => "Entre Rios do Sul")
Cidade.create!(:estado => e, :nome => "Entre-Ijuís")
Cidade.create!(:estado => e, :nome => "Erebango")
Cidade.create!(:estado => e, :nome => "Erechim")
Cidade.create!(:estado => e, :nome => "Ernestina")
Cidade.create!(:estado => e, :nome => "Erval Grande")
Cidade.create!(:estado => e, :nome => "Erval Seco")
Cidade.create!(:estado => e, :nome => "Esmeralda")
Cidade.create!(:estado => e, :nome => "Esperança do Sul")
Cidade.create!(:estado => e, :nome => "Espumoso")
Cidade.create!(:estado => e, :nome => "Estação")
Cidade.create!(:estado => e, :nome => "Esteio")
Cidade.create!(:estado => e, :nome => "Estrela")
Cidade.create!(:estado => e, :nome => "Estrela Velha")
Cidade.create!(:estado => e, :nome => "Estância Velha")
Cidade.create!(:estado => e, :nome => "Eugênio de Castro")
Cidade.create!(:estado => e, :nome => "Fagundes Varela")
Cidade.create!(:estado => e, :nome => "Farroupilha")
Cidade.create!(:estado => e, :nome => "Faxinal do Soturno")
Cidade.create!(:estado => e, :nome => "Faxinalzinho")
Cidade.create!(:estado => e, :nome => "Faza Vilanova")
Cidade.create!(:estado => e, :nome => "Feliz")
Cidade.create!(:estado => e, :nome => "Flores da Cunha")
Cidade.create!(:estado => e, :nome => "Floriano Peixoto")
Cidade.create!(:estado => e, :nome => "Fontoura Xavier")
Cidade.create!(:estado => e, :nome => "Formigueiro")
Cidade.create!(:estado => e, :nome => "Forquetinha")
Cidade.create!(:estado => e, :nome => "Fortaleza dos Valos")
Cidade.create!(:estado => e, :nome => "Frederico Westphalen")
Cidade.create!(:estado => e, :nome => "Garibaldi")
Cidade.create!(:estado => e, :nome => "Garruchos")
Cidade.create!(:estado => e, :nome => "Gaurama")
Cidade.create!(:estado => e, :nome => "General Câmara")
Cidade.create!(:estado => e, :nome => "Gentil")
Cidade.create!(:estado => e, :nome => "Getúlio Vargas")
Cidade.create!(:estado => e, :nome => "Giruá")
Cidade.create!(:estado => e, :nome => "Glorinha")
Cidade.create!(:estado => e, :nome => "Gramado")
Cidade.create!(:estado => e, :nome => "Gramado Xavier")
Cidade.create!(:estado => e, :nome => "Gramado dos Loureiros")
Cidade.create!(:estado => e, :nome => "Gravataí")
Cidade.create!(:estado => e, :nome => "Guabiju")
Cidade.create!(:estado => e, :nome => "Guaporé")
Cidade.create!(:estado => e, :nome => "Guarani das Missões")
Cidade.create!(:estado => e, :nome => "Guaíba")
Cidade.create!(:estado => e, :nome => "Harmonia")
Cidade.create!(:estado => e, :nome => "Herval")
Cidade.create!(:estado => e, :nome => "Herveiras")
Cidade.create!(:estado => e, :nome => "Horizontina")
Cidade.create!(:estado => e, :nome => "Hulha Negra")
Cidade.create!(:estado => e, :nome => "Humaitá")
Cidade.create!(:estado => e, :nome => "Ibarama")
Cidade.create!(:estado => e, :nome => "Ibiaçá")
Cidade.create!(:estado => e, :nome => "Ibiraiaras")
Cidade.create!(:estado => e, :nome => "Ibirapuitã")
Cidade.create!(:estado => e, :nome => "Ibirubá")
Cidade.create!(:estado => e, :nome => "Igrejinha")
Cidade.create!(:estado => e, :nome => "Ijuí")
Cidade.create!(:estado => e, :nome => "Ilópolis")
Cidade.create!(:estado => e, :nome => "Imbé")
Cidade.create!(:estado => e, :nome => "Imigrante")
Cidade.create!(:estado => e, :nome => "Indepência")
Cidade.create!(:estado => e, :nome => "Inhacorá")
Cidade.create!(:estado => e, :nome => "Ipiranga do Sul")
Cidade.create!(:estado => e, :nome => "Ipê")
Cidade.create!(:estado => e, :nome => "Iraí")
Cidade.create!(:estado => e, :nome => "Itaara")
Cidade.create!(:estado => e, :nome => "Itacurubi")
Cidade.create!(:estado => e, :nome => "Itapuca")
Cidade.create!(:estado => e, :nome => "Itaqui")
Cidade.create!(:estado => e, :nome => "Itati")
Cidade.create!(:estado => e, :nome => "Itatiba do Sul")
Cidade.create!(:estado => e, :nome => "Ivorá")
Cidade.create!(:estado => e, :nome => "Ivoti")
Cidade.create!(:estado => e, :nome => "Jaboticaba")
Cidade.create!(:estado => e, :nome => "Jacuizinho")
Cidade.create!(:estado => e, :nome => "Jacutinga")
Cidade.create!(:estado => e, :nome => "Jaguari")
Cidade.create!(:estado => e, :nome => "Jaguarão")
Cidade.create!(:estado => e, :nome => "Jaquirana")
Cidade.create!(:estado => e, :nome => "Jari")
Cidade.create!(:estado => e, :nome => "Jóia")
Cidade.create!(:estado => e, :nome => "Júlio de Castilhos")
Cidade.create!(:estado => e, :nome => "Lagoa Bonita do Sul")
Cidade.create!(:estado => e, :nome => "Lagoa Vermelha")
Cidade.create!(:estado => e, :nome => "Lagoa dos Três Cantos")
Cidade.create!(:estado => e, :nome => "Lagoão")
Cidade.create!(:estado => e, :nome => "Lajeado")
Cidade.create!(:estado => e, :nome => "Lajeado do Bugre")
Cidade.create!(:estado => e, :nome => "Lavras do Sul")
Cidade.create!(:estado => e, :nome => "Liberato Salzano")
Cidade.create!(:estado => e, :nome => "Lindolfo Collor")
Cidade.create!(:estado => e, :nome => "Linha Nova")
Cidade.create!(:estado => e, :nome => "Machadinho")
Cidade.create!(:estado => e, :nome => "Mampituba")
Cidade.create!(:estado => e, :nome => "Manoel Viana")
Cidade.create!(:estado => e, :nome => "Maquiné")
Cidade.create!(:estado => e, :nome => "Maratá")
Cidade.create!(:estado => e, :nome => "Marau")
Cidade.create!(:estado => e, :nome => "Marcelino Ramos")
Cidade.create!(:estado => e, :nome => "Mariana Pimentel")
Cidade.create!(:estado => e, :nome => "Mariano Moro")
Cidade.create!(:estado => e, :nome => "Marques de Souza")
Cidade.create!(:estado => e, :nome => "Mata")
Cidade.create!(:estado => e, :nome => "Mato Castelhano")
Cidade.create!(:estado => e, :nome => "Mato Leitão")
Cidade.create!(:estado => e, :nome => "Mato Queimado")
Cidade.create!(:estado => e, :nome => "Maximiliano de Almeida")
Cidade.create!(:estado => e, :nome => "Maçambara")
Cidade.create!(:estado => e, :nome => "Minas do Leão")
Cidade.create!(:estado => e, :nome => "Miraguaí")
Cidade.create!(:estado => e, :nome => "Montauri")
Cidade.create!(:estado => e, :nome => "Monte Alegre dos Campos")
Cidade.create!(:estado => e, :nome => "Monte Belo do Sul")
Cidade.create!(:estado => e, :nome => "Montenegro")
Cidade.create!(:estado => e, :nome => "Mormaço")
Cidade.create!(:estado => e, :nome => "Morrinhos do Sul")
Cidade.create!(:estado => e, :nome => "Morro Redondo")
Cidade.create!(:estado => e, :nome => "Morro Reuter")
Cidade.create!(:estado => e, :nome => "Mostardas")
Cidade.create!(:estado => e, :nome => "Muitos Capões")
Cidade.create!(:estado => e, :nome => "Muliterno")
Cidade.create!(:estado => e, :nome => "Muçum")
Cidade.create!(:estado => e, :nome => "Nicolau Vergueiro")
Cidade.create!(:estado => e, :nome => "Nonoai")
Cidade.create!(:estado => e, :nome => "Nova Alvorada")
Cidade.create!(:estado => e, :nome => "Nova Araçá")
Cidade.create!(:estado => e, :nome => "Nova Bassano")
Cidade.create!(:estado => e, :nome => "Nova Boa Vista")
Cidade.create!(:estado => e, :nome => "Nova Bréscia")
Cidade.create!(:estado => e, :nome => "Nova Candelária")
Cidade.create!(:estado => e, :nome => "Nova Esperança do Sul")
Cidade.create!(:estado => e, :nome => "Nova Hartz")
Cidade.create!(:estado => e, :nome => "Nova Palma")
Cidade.create!(:estado => e, :nome => "Nova Petrópolis")
Cidade.create!(:estado => e, :nome => "Nova Prata")
Cidade.create!(:estado => e, :nome => "Nova Pádua")
Cidade.create!(:estado => e, :nome => "Nova Ramada")
Cidade.create!(:estado => e, :nome => "Nova Roma do Sul")
Cidade.create!(:estado => e, :nome => "Nova Santa Rita")
Cidade.create!(:estado => e, :nome => "Novo Barreiro")
Cidade.create!(:estado => e, :nome => "Novo Cabrais")
Cidade.create!(:estado => e, :nome => "Novo Hamburgo")
Cidade.create!(:estado => e, :nome => "Novo Machado")
Cidade.create!(:estado => e, :nome => "Novo Tiradentes")
Cidade.create!(:estado => e, :nome => "Novo Xingu")
Cidade.create!(:estado => e, :nome => "Não-Me-Toque")
Cidade.create!(:estado => e, :nome => "Osório")
Cidade.create!(:estado => e, :nome => "Paim Filho")
Cidade.create!(:estado => e, :nome => "Palmares do Sul")
Cidade.create!(:estado => e, :nome => "Palmeira das Missões")
Cidade.create!(:estado => e, :nome => "Palmitinho")
Cidade.create!(:estado => e, :nome => "Panambi")
Cidade.create!(:estado => e, :nome => "Pantano Grande")
Cidade.create!(:estado => e, :nome => "Paraí")
Cidade.create!(:estado => e, :nome => "Paraíso do Sul")
Cidade.create!(:estado => e, :nome => "Pareci Novo")
Cidade.create!(:estado => e, :nome => "Parobé")
Cidade.create!(:estado => e, :nome => "Passa Sete")
Cidade.create!(:estado => e, :nome => "Passo Fundo")
Cidade.create!(:estado => e, :nome => "Passo do Sobrado")
Cidade.create!(:estado => e, :nome => "Paulo Bento")
Cidade.create!(:estado => e, :nome => "Paverama")
Cidade.create!(:estado => e, :nome => "Pedras Altas")
Cidade.create!(:estado => e, :nome => "Pedro Osório")
Cidade.create!(:estado => e, :nome => "Pejuçara")
Cidade.create!(:estado => e, :nome => "Pelotas")
Cidade.create!(:estado => e, :nome => "Picada Café")
Cidade.create!(:estado => e, :nome => "Pinhal")
Cidade.create!(:estado => e, :nome => "Pinhal Grande")
Cidade.create!(:estado => e, :nome => "Pinhal da Serra")
Cidade.create!(:estado => e, :nome => "Pinheirinho do Vale")
Cidade.create!(:estado => e, :nome => "Pinheiro Machado")
Cidade.create!(:estado => e, :nome => "Pirapó")
Cidade.create!(:estado => e, :nome => "Piratini")
Cidade.create!(:estado => e, :nome => "Planalto")
Cidade.create!(:estado => e, :nome => "Ponte Preta")
Cidade.create!(:estado => e, :nome => "Pontão")
Cidade.create!(:estado => e, :nome => "Porto Alegre")
Cidade.create!(:estado => e, :nome => "Porto Lucena")
Cidade.create!(:estado => e, :nome => "Porto Mauá")
Cidade.create!(:estado => e, :nome => "Porto Vera Cruz")
Cidade.create!(:estado => e, :nome => "Porto Xavier")
Cidade.create!(:estado => e, :nome => "Portão")
Cidade.create!(:estado => e, :nome => "Pouso Novo")
Cidade.create!(:estado => e, :nome => "Poço das Antas")
Cidade.create!(:estado => e, :nome => "Presidente Lucena")
Cidade.create!(:estado => e, :nome => "Progresso")
Cidade.create!(:estado => e, :nome => "Protásio Alves")
Cidade.create!(:estado => e, :nome => "Putinga")
Cidade.create!(:estado => e, :nome => "Quaraí")
Cidade.create!(:estado => e, :nome => "Quatro Irmãos")
Cidade.create!(:estado => e, :nome => "Quevedos")
Cidade.create!(:estado => e, :nome => "Quinze de Novembro")
Cidade.create!(:estado => e, :nome => "Redentora")
Cidade.create!(:estado => e, :nome => "Relvado")
Cidade.create!(:estado => e, :nome => "Restinga Seca")
Cidade.create!(:estado => e, :nome => "Rio Grande")
Cidade.create!(:estado => e, :nome => "Rio Pardo")
Cidade.create!(:estado => e, :nome => "Rio dos Índios")
Cidade.create!(:estado => e, :nome => "Riozinho")
Cidade.create!(:estado => e, :nome => "Roca Sales")
Cidade.create!(:estado => e, :nome => "Rodeio Bonito")
Cidade.create!(:estado => e, :nome => "Rolador")
Cidade.create!(:estado => e, :nome => "Rolante")
Cidade.create!(:estado => e, :nome => "Ronda Alta")
Cidade.create!(:estado => e, :nome => "Rondinha")
Cidade.create!(:estado => e, :nome => "Roque Gonzales")
Cidade.create!(:estado => e, :nome => "Rosário do Sul")
Cidade.create!(:estado => e, :nome => "Sagrada Família")
Cidade.create!(:estado => e, :nome => "Saldanha Marinho")
Cidade.create!(:estado => e, :nome => "Salto do Jacuí")
Cidade.create!(:estado => e, :nome => "Salvador das Missões")
Cidade.create!(:estado => e, :nome => "Salvador do Sul")
Cidade.create!(:estado => e, :nome => "Sananduva")
Cidade.create!(:estado => e, :nome => "Santa Bárbara do Sul")
Cidade.create!(:estado => e, :nome => "Santa Cecília do Sul")
Cidade.create!(:estado => e, :nome => "Santa Clara do Sul")
Cidade.create!(:estado => e, :nome => "Santa Cruz do Sul")
Cidade.create!(:estado => e, :nome => "Santa Margarida do Sul")
Cidade.create!(:estado => e, :nome => "Santa Maria")
Cidade.create!(:estado => e, :nome => "Santa Maria do Herval")
Cidade.create!(:estado => e, :nome => "Santa Rosa")
Cidade.create!(:estado => e, :nome => "Santa Tereza")
Cidade.create!(:estado => e, :nome => "Santa Vitória do Palmar")
Cidade.create!(:estado => e, :nome => "Santana da Boa Vista")
Cidade.create!(:estado => e, :nome => "Santana do Livramento")
Cidade.create!(:estado => e, :nome => "Santiago")
Cidade.create!(:estado => e, :nome => "Santo Antônio da Patrulha")
Cidade.create!(:estado => e, :nome => "Santo Antônio das Missões")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Palma")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Planalto")
Cidade.create!(:estado => e, :nome => "Santo Augusto")
Cidade.create!(:estado => e, :nome => "Santo Cristo")
Cidade.create!(:estado => e, :nome => "Santo Expedito do Sul")
Cidade.create!(:estado => e, :nome => "Santo Ângelo")
Cidade.create!(:estado => e, :nome => "Sapiranga")
Cidade.create!(:estado => e, :nome => "Sapucaia do Sul")
Cidade.create!(:estado => e, :nome => "Sarandi")
Cidade.create!(:estado => e, :nome => "Seberi")
Cidade.create!(:estado => e, :nome => "Sede Nova")
Cidade.create!(:estado => e, :nome => "Segredo")
Cidade.create!(:estado => e, :nome => "Selbach")
Cidade.create!(:estado => e, :nome => "Senador Salgado Filho")
Cidade.create!(:estado => e, :nome => "Sentinela do Sul")
Cidade.create!(:estado => e, :nome => "Serafina Corrêa")
Cidade.create!(:estado => e, :nome => "Sertão")
Cidade.create!(:estado => e, :nome => "Sertão Santana")
Cidade.create!(:estado => e, :nome => "Sete de Setembro")
Cidade.create!(:estado => e, :nome => "Severiano de Almeida")
Cidade.create!(:estado => e, :nome => "Silveira Martins")
Cidade.create!(:estado => e, :nome => "Sinimbu")
Cidade.create!(:estado => e, :nome => "Sobradinho")
Cidade.create!(:estado => e, :nome => "Soledade")
Cidade.create!(:estado => e, :nome => "São Borja")
Cidade.create!(:estado => e, :nome => "São Domingos do Sul")
Cidade.create!(:estado => e, :nome => "São Francisco de Assis")
Cidade.create!(:estado => e, :nome => "São Francisco de Paula")
Cidade.create!(:estado => e, :nome => "São Gabriel")
Cidade.create!(:estado => e, :nome => "São Jerônimo")
Cidade.create!(:estado => e, :nome => "São Jorge")
Cidade.create!(:estado => e, :nome => "São José das Missões")
Cidade.create!(:estado => e, :nome => "São José do Herval")
Cidade.create!(:estado => e, :nome => "São José do Hortêncio")
Cidade.create!(:estado => e, :nome => "São José do Inhacorá")
Cidade.create!(:estado => e, :nome => "São José do Norte")
Cidade.create!(:estado => e, :nome => "São José do Ouro")
Cidade.create!(:estado => e, :nome => "São José do Sul")
Cidade.create!(:estado => e, :nome => "São José dos Ausentes")
Cidade.create!(:estado => e, :nome => "São João da Urtiga")
Cidade.create!(:estado => e, :nome => "São João do Polêsine")
Cidade.create!(:estado => e, :nome => "São Leopoldo")
Cidade.create!(:estado => e, :nome => "São Lourenço do Sul")
Cidade.create!(:estado => e, :nome => "São Luiz Gonzaga")
Cidade.create!(:estado => e, :nome => "São Marcos")
Cidade.create!(:estado => e, :nome => "São Martinho")
Cidade.create!(:estado => e, :nome => "São Martinho da Serra")
Cidade.create!(:estado => e, :nome => "São Miguel das Missões")
Cidade.create!(:estado => e, :nome => "São Nicolau")
Cidade.create!(:estado => e, :nome => "São Paulo das Missões")
Cidade.create!(:estado => e, :nome => "São Pedro da Serra")
Cidade.create!(:estado => e, :nome => "São Pedro das Missões")
Cidade.create!(:estado => e, :nome => "São Pedro do Butiá")
Cidade.create!(:estado => e, :nome => "São Pedro do Sul")
Cidade.create!(:estado => e, :nome => "São Sebastião do Caí")
Cidade.create!(:estado => e, :nome => "São Sepé")
Cidade.create!(:estado => e, :nome => "São Valentim")
Cidade.create!(:estado => e, :nome => "São Valentim do Sul")
Cidade.create!(:estado => e, :nome => "São Valério do Sul")
Cidade.create!(:estado => e, :nome => "São Velino")
Cidade.create!(:estado => e, :nome => "São Vicente do Sul")
Cidade.create!(:estado => e, :nome => "Sério")
Cidade.create!(:estado => e, :nome => "Tabaí")
Cidade.create!(:estado => e, :nome => "Tapejara")
Cidade.create!(:estado => e, :nome => "Tapera")
Cidade.create!(:estado => e, :nome => "Tapes")
Cidade.create!(:estado => e, :nome => "Taquara")
Cidade.create!(:estado => e, :nome => "Taquari")
Cidade.create!(:estado => e, :nome => "Taquaruçu do Sul")
Cidade.create!(:estado => e, :nome => "Tavares")
Cidade.create!(:estado => e, :nome => "Tenente Portela")
Cidade.create!(:estado => e, :nome => "Terra de Areia")
Cidade.create!(:estado => e, :nome => "Teutônia")
Cidade.create!(:estado => e, :nome => "Tio Hugo")
Cidade.create!(:estado => e, :nome => "Tiradentes do Sul")
Cidade.create!(:estado => e, :nome => "Toropi")
Cidade.create!(:estado => e, :nome => "Torres")
Cidade.create!(:estado => e, :nome => "Tramandaí")
Cidade.create!(:estado => e, :nome => "Travesseiro")
Cidade.create!(:estado => e, :nome => "Trindade do Sul")
Cidade.create!(:estado => e, :nome => "Triunfo")
Cidade.create!(:estado => e, :nome => "Três Arroios")
Cidade.create!(:estado => e, :nome => "Três Cachoeiras")
Cidade.create!(:estado => e, :nome => "Três Coroas")
Cidade.create!(:estado => e, :nome => "Três Forquilhas")
Cidade.create!(:estado => e, :nome => "Três Palmeiras")
Cidade.create!(:estado => e, :nome => "Três Passos")
Cidade.create!(:estado => e, :nome => "Três de Maio")
Cidade.create!(:estado => e, :nome => "Tucunduva")
Cidade.create!(:estado => e, :nome => "Tunas")
Cidade.create!(:estado => e, :nome => "Tupanci do Sul")
Cidade.create!(:estado => e, :nome => "Tupanciretã")
Cidade.create!(:estado => e, :nome => "Tupandi")
Cidade.create!(:estado => e, :nome => "Tupari")
Cidade.create!(:estado => e, :nome => "Turuçu")
Cidade.create!(:estado => e, :nome => "Ubiretama")
Cidade.create!(:estado => e, :nome => "Unistalda")
Cidade.create!(:estado => e, :nome => "União da Serra")
Cidade.create!(:estado => e, :nome => "Uruguaiana")
Cidade.create!(:estado => e, :nome => "Vacaria")
Cidade.create!(:estado => e, :nome => "Vale Real")
Cidade.create!(:estado => e, :nome => "Vale Verde")
Cidade.create!(:estado => e, :nome => "Vale do Sol")
Cidade.create!(:estado => e, :nome => "Vanini")
Cidade.create!(:estado => e, :nome => "Venâncio Aires")
Cidade.create!(:estado => e, :nome => "Vera Cruz")
Cidade.create!(:estado => e, :nome => "Veranópolis")
Cidade.create!(:estado => e, :nome => "Vespasiano Correa")
Cidade.create!(:estado => e, :nome => "Viadutos")
Cidade.create!(:estado => e, :nome => "Viamão")
Cidade.create!(:estado => e, :nome => "Vicente Dutra")
Cidade.create!(:estado => e, :nome => "Victor Graeff")
Cidade.create!(:estado => e, :nome => "Vila Flores")
Cidade.create!(:estado => e, :nome => "Vila Lângaro")
Cidade.create!(:estado => e, :nome => "Vila Maria")
Cidade.create!(:estado => e, :nome => "Vila Nova do Sul")
Cidade.create!(:estado => e, :nome => "Vista Alegre")
Cidade.create!(:estado => e, :nome => "Vista Alegre do Prata")
Cidade.create!(:estado => e, :nome => "Vista Gaúcha")
Cidade.create!(:estado => e, :nome => "Vitória das Missões")
Cidade.create!(:estado => e, :nome => "Westfalia")
Cidade.create!(:estado => e, :nome => "Xangri-lá")


Estado.create!(:unidade => u, :sigla => 'SC', :nome => "Santa Catarina")
e = Estado.find_by(nome: "Santa Catarina")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Abdon Batista")
Cidade.create!(:estado => e, :nome => "Abelardo Luz")
Cidade.create!(:estado => e, :nome => "Agrolândia")
Cidade.create!(:estado => e, :nome => "Agronômica")
Cidade.create!(:estado => e, :nome => "Água Doce")
Cidade.create!(:estado => e, :nome => "Águas Frias")
Cidade.create!(:estado => e, :nome => "Águas Mornas")
Cidade.create!(:estado => e, :nome => "Águas de Chapecó")
Cidade.create!(:estado => e, :nome => "Alfredo Wagner")
Cidade.create!(:estado => e, :nome => "Alto Bela Vista")
Cidade.create!(:estado => e, :nome => "Anchieta")
Cidade.create!(:estado => e, :nome => "Angelina")
Cidade.create!(:estado => e, :nome => "Anita Garibaldi")
Cidade.create!(:estado => e, :nome => "Anitápolis")
Cidade.create!(:estado => e, :nome => "Antônio Carlos")
Cidade.create!(:estado => e, :nome => "Apiúna")
Cidade.create!(:estado => e, :nome => "Arabutã")
Cidade.create!(:estado => e, :nome => "Araquari")
Cidade.create!(:estado => e, :nome => "Araranguá")
Cidade.create!(:estado => e, :nome => "Armazém")
Cidade.create!(:estado => e, :nome => "Arroio Trinta")
Cidade.create!(:estado => e, :nome => "Arvoredo")
Cidade.create!(:estado => e, :nome => "Ascurra")
Cidade.create!(:estado => e, :nome => "Atalanta")
Cidade.create!(:estado => e, :nome => "Aurora")
Cidade.create!(:estado => e, :nome => "Balneário Arroio do Silva")
Cidade.create!(:estado => e, :nome => "Balneário Barra do Sul")
Cidade.create!(:estado => e, :nome => "Balneário Camboriú")
Cidade.create!(:estado => e, :nome => "Balneário Gaivota")
Cidade.create!(:estado => e, :nome => "Balneário Piçarras")
Cidade.create!(:estado => e, :nome => "Bandeirante")
Cidade.create!(:estado => e, :nome => "Barra Bonita")
Cidade.create!(:estado => e, :nome => "Barra Velha")
Cidade.create!(:estado => e, :nome => "Bela Vista do Toldo")
Cidade.create!(:estado => e, :nome => "Belmonte")
Cidade.create!(:estado => e, :nome => "Benedito Novo")
Cidade.create!(:estado => e, :nome => "Biguaçu")
Cidade.create!(:estado => e, :nome => "Blumenau")
Cidade.create!(:estado => e, :nome => "Bocaina do Sul")
Cidade.create!(:estado => e, :nome => "Bom Jardim da Serra")
Cidade.create!(:estado => e, :nome => "Bom Jesus")
Cidade.create!(:estado => e, :nome => "Bom Jesus do Oeste")
Cidade.create!(:estado => e, :nome => "Bom Retiro")
Cidade.create!(:estado => e, :nome => "Bombinhas")
Cidade.create!(:estado => e, :nome => "Botuverá")
Cidade.create!(:estado => e, :nome => "Braço do Norte")
Cidade.create!(:estado => e, :nome => "Braço do Trombudo")
Cidade.create!(:estado => e, :nome => "Brunópolis")
Cidade.create!(:estado => e, :nome => "Brusque")
Cidade.create!(:estado => e, :nome => "Caibi")
Cidade.create!(:estado => e, :nome => "Calmon")
Cidade.create!(:estado => e, :nome => "Camboriú")
Cidade.create!(:estado => e, :nome => "Campo Alegre")
Cidade.create!(:estado => e, :nome => "Campo Belo do Sul")
Cidade.create!(:estado => e, :nome => "Campo Erê")
Cidade.create!(:estado => e, :nome => "Campos Novos")
Cidade.create!(:estado => e, :nome => "Canelinha")
Cidade.create!(:estado => e, :nome => "Canoinhas")
Cidade.create!(:estado => e, :nome => "Capinzal")
Cidade.create!(:estado => e, :nome => "Capivari de Baixo")
Cidade.create!(:estado => e, :nome => "Capão Alto")
Cidade.create!(:estado => e, :nome => "Catanduvas")
Cidade.create!(:estado => e, :nome => "Caxambu do Sul")
Cidade.create!(:estado => e, :nome => "Caçador")
Cidade.create!(:estado => e, :nome => "Celso Ramos")
Cidade.create!(:estado => e, :nome => "Cerro Negro")
Cidade.create!(:estado => e, :nome => "Chapadão do Lageado")
Cidade.create!(:estado => e, :nome => "Chapecó")
Cidade.create!(:estado => e, :nome => "Cocal do Sul")
Cidade.create!(:estado => e, :nome => "Concórdia")
Cidade.create!(:estado => e, :nome => "Cordilheira Alta")
Cidade.create!(:estado => e, :nome => "Coronel Freitas")
Cidade.create!(:estado => e, :nome => "Coronel Martins")
Cidade.create!(:estado => e, :nome => "Correia Pinto")
Cidade.create!(:estado => e, :nome => "Corupá")
Cidade.create!(:estado => e, :nome => "Criciúma")
Cidade.create!(:estado => e, :nome => "Cunha Porã")
Cidade.create!(:estado => e, :nome => "Cunhataí")
Cidade.create!(:estado => e, :nome => "Curitibanos")
Cidade.create!(:estado => e, :nome => "Descanso")
Cidade.create!(:estado => e, :nome => "Dionísio Cerqueira")
Cidade.create!(:estado => e, :nome => "Dona Emma")
Cidade.create!(:estado => e, :nome => "Doutor Pedrinho")
Cidade.create!(:estado => e, :nome => "Entre Rios")
Cidade.create!(:estado => e, :nome => "Ermo")
Cidade.create!(:estado => e, :nome => "Erval Velho")
Cidade.create!(:estado => e, :nome => "Faxinal dos Guedes")
Cidade.create!(:estado => e, :nome => "Flor do Sertão")
Cidade.create!(:estado => e, :nome => "Florianópolis")
Cidade.create!(:estado => e, :nome => "Formosa do Sul")
Cidade.create!(:estado => e, :nome => "Forquilhinha")
Cidade.create!(:estado => e, :nome => "Fraiburgo")
Cidade.create!(:estado => e, :nome => "Frei Rogério")
Cidade.create!(:estado => e, :nome => "Galvão")
Cidade.create!(:estado => e, :nome => "Garopaba")
Cidade.create!(:estado => e, :nome => "Garuva")
Cidade.create!(:estado => e, :nome => "Gaspar")
Cidade.create!(:estado => e, :nome => "Governador Celso Ramos")
Cidade.create!(:estado => e, :nome => "Gravatal")
Cidade.create!(:estado => e, :nome => "Grão Pará")
Cidade.create!(:estado => e, :nome => "Guabiruba")
Cidade.create!(:estado => e, :nome => "Guaraciaba")
Cidade.create!(:estado => e, :nome => "Guaramirim")
Cidade.create!(:estado => e, :nome => "Guarujá do Sul")
Cidade.create!(:estado => e, :nome => "Guatambú")
Cidade.create!(:estado => e, :nome => "Herval dOeste")
Cidade.create!(:estado => e, :nome => "Ibiam")
Cidade.create!(:estado => e, :nome => "Ibicaré")
Cidade.create!(:estado => e, :nome => "Ibirama")
Cidade.create!(:estado => e, :nome => "Ilhota")
Cidade.create!(:estado => e, :nome => "Imaruí")
Cidade.create!(:estado => e, :nome => "Imbituba")
Cidade.create!(:estado => e, :nome => "Imbuia")
Cidade.create!(:estado => e, :nome => "Indaial")
Cidade.create!(:estado => e, :nome => "Iomerê")
Cidade.create!(:estado => e, :nome => "Ipira")
Cidade.create!(:estado => e, :nome => "Iporã do Oeste")
Cidade.create!(:estado => e, :nome => "Ipuaçu")
Cidade.create!(:estado => e, :nome => "Ipumirim")
Cidade.create!(:estado => e, :nome => "Iraceminha")
Cidade.create!(:estado => e, :nome => "Irani")
Cidade.create!(:estado => e, :nome => "Irati")
Cidade.create!(:estado => e, :nome => "Irineópolis")
Cidade.create!(:estado => e, :nome => "Itaiópolis")
Cidade.create!(:estado => e, :nome => "Itajaí")
Cidade.create!(:estado => e, :nome => "Itapema")
Cidade.create!(:estado => e, :nome => "Itapiranga")
Cidade.create!(:estado => e, :nome => "Itapoá")
Cidade.create!(:estado => e, :nome => "Ituporanga")
Cidade.create!(:estado => e, :nome => "Itá")
Cidade.create!(:estado => e, :nome => "Içara")
Cidade.create!(:estado => e, :nome => "Jaborá")
Cidade.create!(:estado => e, :nome => "Jacinto Machado")
Cidade.create!(:estado => e, :nome => "Jaguaruna")
Cidade.create!(:estado => e, :nome => "Jaraguá do Sul")
Cidade.create!(:estado => e, :nome => "Jardinópolis")
Cidade.create!(:estado => e, :nome => "Joaçaba")
Cidade.create!(:estado => e, :nome => "Joinville")
Cidade.create!(:estado => e, :nome => "José Boiteux")
Cidade.create!(:estado => e, :nome => "Jupiá")
Cidade.create!(:estado => e, :nome => "Lacerdópolis")
Cidade.create!(:estado => e, :nome => "Lages")
Cidade.create!(:estado => e, :nome => "Laguna")
Cidade.create!(:estado => e, :nome => "Lajeado Grande")
Cidade.create!(:estado => e, :nome => "Laurentino")
Cidade.create!(:estado => e, :nome => "Lauro Muller")
Cidade.create!(:estado => e, :nome => "Lebon Régis")
Cidade.create!(:estado => e, :nome => "Leoberto Leal")
Cidade.create!(:estado => e, :nome => "Lindóia do Sul")
Cidade.create!(:estado => e, :nome => "Lontras")
Cidade.create!(:estado => e, :nome => "Luiz Alves")
Cidade.create!(:estado => e, :nome => "Luzerna")
Cidade.create!(:estado => e, :nome => "Macieira")
Cidade.create!(:estado => e, :nome => "Mafra")
Cidade.create!(:estado => e, :nome => "Major Gercino")
Cidade.create!(:estado => e, :nome => "Major Vieira")
Cidade.create!(:estado => e, :nome => "Maracajá")
Cidade.create!(:estado => e, :nome => "Maravilha")
Cidade.create!(:estado => e, :nome => "Marema")
Cidade.create!(:estado => e, :nome => "Massaranduba")
Cidade.create!(:estado => e, :nome => "Matos Costa")
Cidade.create!(:estado => e, :nome => "Meleiro")
Cidade.create!(:estado => e, :nome => "Mirim Doce")
Cidade.create!(:estado => e, :nome => "Modelo")
Cidade.create!(:estado => e, :nome => "Mondaí")
Cidade.create!(:estado => e, :nome => "Monte Carlo")
Cidade.create!(:estado => e, :nome => "Monte Castelo")
Cidade.create!(:estado => e, :nome => "Morro Grande")
Cidade.create!(:estado => e, :nome => "Morro da Fumaça")
Cidade.create!(:estado => e, :nome => "Navegantes")
Cidade.create!(:estado => e, :nome => "Nova Erechim")
Cidade.create!(:estado => e, :nome => "Nova Itaberaba")
Cidade.create!(:estado => e, :nome => "Nova Trento")
Cidade.create!(:estado => e, :nome => "Nova Veneza")
Cidade.create!(:estado => e, :nome => "Novo Horizonte")
Cidade.create!(:estado => e, :nome => "Orleans")
Cidade.create!(:estado => e, :nome => "Otacílio Costa")
Cidade.create!(:estado => e, :nome => "Ouro")
Cidade.create!(:estado => e, :nome => "Ouro Verde")
Cidade.create!(:estado => e, :nome => "Paial")
Cidade.create!(:estado => e, :nome => "Painel")
Cidade.create!(:estado => e, :nome => "Palhoça")
Cidade.create!(:estado => e, :nome => "Palma Sola")
Cidade.create!(:estado => e, :nome => "Palmeira")
Cidade.create!(:estado => e, :nome => "Palmitos")
Cidade.create!(:estado => e, :nome => "Papanduva")
Cidade.create!(:estado => e, :nome => "Paraíso")
Cidade.create!(:estado => e, :nome => "Passo de Torres")
Cidade.create!(:estado => e, :nome => "Passos Maia")
Cidade.create!(:estado => e, :nome => "Paulo Lopes")
Cidade.create!(:estado => e, :nome => "Pedras Grandes")
Cidade.create!(:estado => e, :nome => "Penha")
Cidade.create!(:estado => e, :nome => "Peritiba")
Cidade.create!(:estado => e, :nome => "Petrolândia")
Cidade.create!(:estado => e, :nome => "Pinhalzinho")
Cidade.create!(:estado => e, :nome => "Pinheiro Preto")
Cidade.create!(:estado => e, :nome => "Piratuba")
Cidade.create!(:estado => e, :nome => "Planalto Alegre")
Cidade.create!(:estado => e, :nome => "Pomerode")
Cidade.create!(:estado => e, :nome => "Ponte Alta")
Cidade.create!(:estado => e, :nome => "Ponte Alta do Norte")
Cidade.create!(:estado => e, :nome => "Ponte Serrada")
Cidade.create!(:estado => e, :nome => "Porto Belo")
Cidade.create!(:estado => e, :nome => "Porto União")
Cidade.create!(:estado => e, :nome => "Pouso Redondo")
Cidade.create!(:estado => e, :nome => "Praia Grande")
Cidade.create!(:estado => e, :nome => "Presidente Castello Branco")
Cidade.create!(:estado => e, :nome => "Presidente Getúlio")
Cidade.create!(:estado => e, :nome => "Presidente Nereu")
Cidade.create!(:estado => e, :nome => "Princesa")
Cidade.create!(:estado => e, :nome => "Quilombo")
Cidade.create!(:estado => e, :nome => "Rancho Queimado")
Cidade.create!(:estado => e, :nome => "Rio Fortuna")
Cidade.create!(:estado => e, :nome => "Rio Negrinho")
Cidade.create!(:estado => e, :nome => "Rio Rsiglaino")
Cidade.create!(:estado => e, :nome => "Rio das Antas")
Cidade.create!(:estado => e, :nome => "Rio do Campo")
Cidade.create!(:estado => e, :nome => "Rio do Oeste")
Cidade.create!(:estado => e, :nome => "Rio do Sul")
Cidade.create!(:estado => e, :nome => "Rio dos Cedros")
Cidade.create!(:estado => e, :nome => "Riqueza")
Cidade.create!(:estado => e, :nome => "Rodeio")
Cidade.create!(:estado => e, :nome => "Romelândia")
Cidade.create!(:estado => e, :nome => "Salete")
Cidade.create!(:estado => e, :nome => "Saltinho")
Cidade.create!(:estado => e, :nome => "Salto Veloso")
Cidade.create!(:estado => e, :nome => "Sangão")
Cidade.create!(:estado => e, :nome => "Santa Cecília")
Cidade.create!(:estado => e, :nome => "Santa Helena")
Cidade.create!(:estado => e, :nome => "Santa Rosa de Lima")
Cidade.create!(:estado => e, :nome => "Santa Rosa do Sul")
Cidade.create!(:estado => e, :nome => "Santa Terezinha")
Cidade.create!(:estado => e, :nome => "Santa Terezinha do Progresso")
Cidade.create!(:estado => e, :nome => "Santiago do Sul")
Cidade.create!(:estado => e, :nome => "Santo Amaro da Imperatriz")
Cidade.create!(:estado => e, :nome => "Saudades")
Cidade.create!(:estado => e, :nome => "Schroeder")
Cidade.create!(:estado => e, :nome => "Seara")
Cidade.create!(:estado => e, :nome => "Serra Alta")
Cidade.create!(:estado => e, :nome => "Siderópolis")
Cidade.create!(:estado => e, :nome => "Sombrio")
Cidade.create!(:estado => e, :nome => "Sul Brasil")
Cidade.create!(:estado => e, :nome => "São Bento do Sul")
Cidade.create!(:estado => e, :nome => "São Bernardino")
Cidade.create!(:estado => e, :nome => "São Bonifácio")
Cidade.create!(:estado => e, :nome => "São Carlos")
Cidade.create!(:estado => e, :nome => "São Cristovão do Sul")
Cidade.create!(:estado => e, :nome => "São Domingos")
Cidade.create!(:estado => e, :nome => "São Francisco do Sul")
Cidade.create!(:estado => e, :nome => "São Joaquim")
Cidade.create!(:estado => e, :nome => "São José")
Cidade.create!(:estado => e, :nome => "São José do Cedro")
Cidade.create!(:estado => e, :nome => "São José do Cerrito")
Cidade.create!(:estado => e, :nome => "São João Batista")
Cidade.create!(:estado => e, :nome => "São João do Itaperiú")
Cidade.create!(:estado => e, :nome => "São João do Oeste")
Cidade.create!(:estado => e, :nome => "São João do Sul")
Cidade.create!(:estado => e, :nome => "São Lourenço do Oeste")
Cidade.create!(:estado => e, :nome => "São Ludgero")
Cidade.create!(:estado => e, :nome => "São Martinho")
Cidade.create!(:estado => e, :nome => "São Miguel da Boa Vista")
Cidade.create!(:estado => e, :nome => "São Miguel do Oeste")
Cidade.create!(:estado => e, :nome => "São Pedro de Alcântara")
Cidade.create!(:estado => e, :nome => "Taió")
Cidade.create!(:estado => e, :nome => "Tangará")
Cidade.create!(:estado => e, :nome => "Tigrinhos")
Cidade.create!(:estado => e, :nome => "Tijucas")
Cidade.create!(:estado => e, :nome => "Timbé do Sul")
Cidade.create!(:estado => e, :nome => "Timbó")
Cidade.create!(:estado => e, :nome => "Timbó Grande")
Cidade.create!(:estado => e, :nome => "Treviso")
Cidade.create!(:estado => e, :nome => "Treze Tílias")
Cidade.create!(:estado => e, :nome => "Treze de Maio")
Cidade.create!(:estado => e, :nome => "Trombudo Central")
Cidade.create!(:estado => e, :nome => "Três Barras")
Cidade.create!(:estado => e, :nome => "Tubarão")
Cidade.create!(:estado => e, :nome => "Tunápolis")
Cidade.create!(:estado => e, :nome => "Turvo")
Cidade.create!(:estado => e, :nome => "União do Oeste")
Cidade.create!(:estado => e, :nome => "Urubici")
Cidade.create!(:estado => e, :nome => "Urupema")
Cidade.create!(:estado => e, :nome => "Urussanga")
Cidade.create!(:estado => e, :nome => "Vargem")
Cidade.create!(:estado => e, :nome => "Vargem Bonita")
Cidade.create!(:estado => e, :nome => "Vargeão")
Cidade.create!(:estado => e, :nome => "Vidal Ramos")
Cidade.create!(:estado => e, :nome => "Videira")
Cidade.create!(:estado => e, :nome => "Vitor Meireles")
Cidade.create!(:estado => e, :nome => "Witmarsum")
Cidade.create!(:estado => e, :nome => "Xanxerê")
Cidade.create!(:estado => e, :nome => "Xavantina")
Cidade.create!(:estado => e, :nome => "Xaxim")
Cidade.create!(:estado => e, :nome => "Zortéa")


Estado.create!(:unidade => u, :sigla => 'SE', :nome => "Sergipe")
e = Estado.find_by(nome: "Sergipe")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Amparo de São Francisco")
Cidade.create!(:estado => e, :nome => "Aquidabã")
Cidade.create!(:estado => e, :nome => "Aracaju")
Cidade.create!(:estado => e, :nome => "Arauá")
Cidade.create!(:estado => e, :nome => "Areia Branca")
Cidade.create!(:estado => e, :nome => "Barra dos Coqueiros")
Cidade.create!(:estado => e, :nome => "Boquim")
Cidade.create!(:estado => e, :nome => "Brejo Grande")
Cidade.create!(:estado => e, :nome => "Campo do Brito")
Cidade.create!(:estado => e, :nome => "Canhoba")
Cidade.create!(:estado => e, :nome => "Canindé de São Francisco")
Cidade.create!(:estado => e, :nome => "Capela")
Cidade.create!(:estado => e, :nome => "Carira")
Cidade.create!(:estado => e, :nome => "Carmópolis")
Cidade.create!(:estado => e, :nome => "Cedro de São João")
Cidade.create!(:estado => e, :nome => "Cristinápolis")
Cidade.create!(:estado => e, :nome => "Cumbe")
Cidade.create!(:estado => e, :nome => "Divina Pastora")
Cidade.create!(:estado => e, :nome => "Estância")
Cidade.create!(:estado => e, :nome => "Feira Nova")
Cidade.create!(:estado => e, :nome => "Frei Paulo")
Cidade.create!(:estado => e, :nome => "Gararu")
Cidade.create!(:estado => e, :nome => "General Maynard")
Cidade.create!(:estado => e, :nome => "Gracho Cardoso")
Cidade.create!(:estado => e, :nome => "Ilha das Flores")
Cidade.create!(:estado => e, :nome => "Indiaroba")
Cidade.create!(:estado => e, :nome => "Itabaiana")
Cidade.create!(:estado => e, :nome => "Itabaianinha")
Cidade.create!(:estado => e, :nome => "Itabi")
Cidade.create!(:estado => e, :nome => "Itaporanga dAjuda")
Cidade.create!(:estado => e, :nome => "Japaratuba")
Cidade.create!(:estado => e, :nome => "Japoatã")
Cidade.create!(:estado => e, :nome => "Lagarto")
Cidade.create!(:estado => e, :nome => "Laranjeiras")
Cidade.create!(:estado => e, :nome => "Macambira")
Cidade.create!(:estado => e, :nome => "Malhada dos Bois")
Cidade.create!(:estado => e, :nome => "Malhador")
Cidade.create!(:estado => e, :nome => "Maruim")
Cidade.create!(:estado => e, :nome => "Moita Bonita")
Cidade.create!(:estado => e, :nome => "Monte Alegre de Sergipe")
Cidade.create!(:estado => e, :nome => "Muribeca")
Cidade.create!(:estado => e, :nome => "Neópolis")
Cidade.create!(:estado => e, :nome => "Nossa Senhora Aparecida")
Cidade.create!(:estado => e, :nome => "Nossa Senhora da Glória")
Cidade.create!(:estado => e, :nome => "Nossa Senhora das Dores")
Cidade.create!(:estado => e, :nome => "Nossa Senhora de Lourdes")
Cidade.create!(:estado => e, :nome => "Nossa Senhora do Socorro")
Cidade.create!(:estado => e, :nome => "Pacatuba")
Cidade.create!(:estado => e, :nome => "Pedra Mole")
Cidade.create!(:estado => e, :nome => "Pedrinhas")
Cidade.create!(:estado => e, :nome => "Pinhão")
Cidade.create!(:estado => e, :nome => "Pirambu")
Cidade.create!(:estado => e, :nome => "Porto da Folha")
Cidade.create!(:estado => e, :nome => "Poço Redondo")
Cidade.create!(:estado => e, :nome => "Poço Verde")
Cidade.create!(:estado => e, :nome => "Propriá")
Cidade.create!(:estado => e, :nome => "Riachuelo")
Cidade.create!(:estado => e, :nome => "Riachão do Dantas")
Cidade.create!(:estado => e, :nome => "Ribeirópolis")
Cidade.create!(:estado => e, :nome => "Rosário do Catete")
Cidade.create!(:estado => e, :nome => "Salgado")
Cidade.create!(:estado => e, :nome => "Santa Luzia do Itanhy")
Cidade.create!(:estado => e, :nome => "Santa Rosa de Lima")
Cidade.create!(:estado => e, :nome => "Santana do São Francisco")
Cidade.create!(:estado => e, :nome => "Santo Amaro das Brotas")
Cidade.create!(:estado => e, :nome => "Simão Dias")
Cidade.create!(:estado => e, :nome => "Siriri")
Cidade.create!(:estado => e, :nome => "São Cristóvão")
Cidade.create!(:estado => e, :nome => "São Domingos")
Cidade.create!(:estado => e, :nome => "São Francisco")
Cidade.create!(:estado => e, :nome => "São Miguel do Aleixo")
Cidade.create!(:estado => e, :nome => "Telha")
Cidade.create!(:estado => e, :nome => "Tobias Barreto")
Cidade.create!(:estado => e, :nome => "Tomar do Geru")
Cidade.create!(:estado => e, :nome => "Umbaúba")


Estado.create!(:unidade => u, :sigla => 'SP', :nome => "São Paulo")
e = Estado.find_by(nome: "São Paulo")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Adamantina")
Cidade.create!(:estado => e, :nome => "Adolfo")
Cidade.create!(:estado => e, :nome => "Aguaí")
Cidade.create!(:estado => e, :nome => "Águas da Prata")
Cidade.create!(:estado => e, :nome => "Águas de Lindóia")
Cidade.create!(:estado => e, :nome => "Águas de Santa Bárbara")
Cidade.create!(:estado => e, :nome => "Águas de São Pedro")
Cidade.create!(:estado => e, :nome => "Agudos")
Cidade.create!(:estado => e, :nome => "Alambari")
Cidade.create!(:estado => e, :nome => "Alfredo Marcondes")
Cidade.create!(:estado => e, :nome => "Altair")
Cidade.create!(:estado => e, :nome => "Altinópolis")
Cidade.create!(:estado => e, :nome => "Alto Alegre")
Cidade.create!(:estado => e, :nome => "Alumínio")
Cidade.create!(:estado => e, :nome => "Álvares Florence")
Cidade.create!(:estado => e, :nome => "Álvares Machado")
Cidade.create!(:estado => e, :nome => "Álvaro de Carvalho")
Cidade.create!(:estado => e, :nome => "Alvinlândia")
Cidade.create!(:estado => e, :nome => "Americana")
Cidade.create!(:estado => e, :nome => "Amparo")
Cidade.create!(:estado => e, :nome => "Américo Brasiliense")
Cidade.create!(:estado => e, :nome => "Américo de Campos")
Cidade.create!(:estado => e, :nome => "Analândia")
Cidade.create!(:estado => e, :nome => "Andradina")
Cidade.create!(:estado => e, :nome => "Angatuba")
Cidade.create!(:estado => e, :nome => "Anhembi")
Cidade.create!(:estado => e, :nome => "Anhumas")
Cidade.create!(:estado => e, :nome => "Aparecida")
Cidade.create!(:estado => e, :nome => "Aparecida dOeste")
Cidade.create!(:estado => e, :nome => "Apiaí")
Cidade.create!(:estado => e, :nome => "Aramina")
Cidade.create!(:estado => e, :nome => "Arandu")
Cidade.create!(:estado => e, :nome => "Arapeí")
Cidade.create!(:estado => e, :nome => "Araraquara")
Cidade.create!(:estado => e, :nome => "Araras")
Cidade.create!(:estado => e, :nome => "Araçariguama")
Cidade.create!(:estado => e, :nome => "Araçatuba")
Cidade.create!(:estado => e, :nome => "Araçoiaba da Serra")
Cidade.create!(:estado => e, :nome => "Arco-Íris")
Cidade.create!(:estado => e, :nome => "Arealva")
Cidade.create!(:estado => e, :nome => "Areias")
Cidade.create!(:estado => e, :nome => "Areiópolis")
Cidade.create!(:estado => e, :nome => "Ariranha")
Cidade.create!(:estado => e, :nome => "Artur Nogueira")
Cidade.create!(:estado => e, :nome => "Arujá")
Cidade.create!(:estado => e, :nome => "Aspásia")
Cidade.create!(:estado => e, :nome => "Assis")
Cidade.create!(:estado => e, :nome => "Atibaia")
Cidade.create!(:estado => e, :nome => "Auriflama")
Cidade.create!(:estado => e, :nome => "Avanhandava")
Cidade.create!(:estado => e, :nome => "Avaré")
Cidade.create!(:estado => e, :nome => "Avaí")
Cidade.create!(:estado => e, :nome => "Bady Bassitt")
Cidade.create!(:estado => e, :nome => "Balbinos")
Cidade.create!(:estado => e, :nome => "Bananal")
Cidade.create!(:estado => e, :nome => "Barbosa")
Cidade.create!(:estado => e, :nome => "Bariri")
Cidade.create!(:estado => e, :nome => "Barra Bonita")
Cidade.create!(:estado => e, :nome => "Barra do Chapéu")
Cidade.create!(:estado => e, :nome => "Barra do Turvo")
Cidade.create!(:estado => e, :nome => "Barretos")
Cidade.create!(:estado => e, :nome => "Barrinha")
Cidade.create!(:estado => e, :nome => "Barueri")
Cidade.create!(:estado => e, :nome => "Barão de Antonina")
Cidade.create!(:estado => e, :nome => "Bastos")
Cidade.create!(:estado => e, :nome => "Batatais")
Cidade.create!(:estado => e, :nome => "Bauru")
Cidade.create!(:estado => e, :nome => "Bebedouro")
Cidade.create!(:estado => e, :nome => "Bento de Abreu")
Cidade.create!(:estado => e, :nome => "Bernardino de Campos")
Cidade.create!(:estado => e, :nome => "Bertioga")
Cidade.create!(:estado => e, :nome => "Bilac")
Cidade.create!(:estado => e, :nome => "Birigui")
Cidade.create!(:estado => e, :nome => "Biritiba-Mirim")
Cidade.create!(:estado => e, :nome => "Boa Esperança do Sul")
Cidade.create!(:estado => e, :nome => "Bocaina")
Cidade.create!(:estado => e, :nome => "Bofete")
Cidade.create!(:estado => e, :nome => "Boituva")
Cidade.create!(:estado => e, :nome => "Bom Jesus dos Perdões")
Cidade.create!(:estado => e, :nome => "Bom Sucesso de Itararé")
Cidade.create!(:estado => e, :nome => "Boracéia")
Cidade.create!(:estado => e, :nome => "Borborema")
Cidade.create!(:estado => e, :nome => "Borebi")
Cidade.create!(:estado => e, :nome => "Borá")
Cidade.create!(:estado => e, :nome => "Botucatu")
Cidade.create!(:estado => e, :nome => "Bragança Paulista")
Cidade.create!(:estado => e, :nome => "Braúna")
Cidade.create!(:estado => e, :nome => "Brejo Alegre")
Cidade.create!(:estado => e, :nome => "Brodowski")
Cidade.create!(:estado => e, :nome => "Brotas")
Cidade.create!(:estado => e, :nome => "Buri")
Cidade.create!(:estado => e, :nome => "Buritama")
Cidade.create!(:estado => e, :nome => "Buritizal")
Cidade.create!(:estado => e, :nome => "Bálsamo")
Cidade.create!(:estado => e, :nome => "Cabreúva")
Cidade.create!(:estado => e, :nome => "Cabrália Paulista")
Cidade.create!(:estado => e, :nome => "Cachoeira Paulista")
Cidade.create!(:estado => e, :nome => "Caconde")
Cidade.create!(:estado => e, :nome => "Cafelândia")
Cidade.create!(:estado => e, :nome => "Caiabu")
Cidade.create!(:estado => e, :nome => "Caieiras")
Cidade.create!(:estado => e, :nome => "Caiuá")
Cidade.create!(:estado => e, :nome => "Cajamar")
Cidade.create!(:estado => e, :nome => "Cajati")
Cidade.create!(:estado => e, :nome => "Cajobi")
Cidade.create!(:estado => e, :nome => "Cajuru")
Cidade.create!(:estado => e, :nome => "Campina do Monte Alegre")
Cidade.create!(:estado => e, :nome => "Campinas")
Cidade.create!(:estado => e, :nome => "Campo Limpo Paulista")
Cidade.create!(:estado => e, :nome => "Campos Novos Paulista")
Cidade.create!(:estado => e, :nome => "Campos do Jordão")
Cidade.create!(:estado => e, :nome => "Cananéia")
Cidade.create!(:estado => e, :nome => "Canas")
Cidade.create!(:estado => e, :nome => "Canitar")
Cidade.create!(:estado => e, :nome => "Capela do Alto")
Cidade.create!(:estado => e, :nome => "Capivari")
Cidade.create!(:estado => e, :nome => "Capão Bonito")
Cidade.create!(:estado => e, :nome => "Caraguatatuba")
Cidade.create!(:estado => e, :nome => "Carapicuíba")
Cidade.create!(:estado => e, :nome => "Cardoso")
Cidade.create!(:estado => e, :nome => "Casa Branca")
Cidade.create!(:estado => e, :nome => "Castilho")
Cidade.create!(:estado => e, :nome => "Catanduva")
Cidade.create!(:estado => e, :nome => "Catiguá")
Cidade.create!(:estado => e, :nome => "Caçapava")
Cidade.create!(:estado => e, :nome => "Cedral")
Cidade.create!(:estado => e, :nome => "Cerqueira César")
Cidade.create!(:estado => e, :nome => "Cerquilho")
Cidade.create!(:estado => e, :nome => "Cesário Lange")
Cidade.create!(:estado => e, :nome => "Charqueada")
Cidade.create!(:estado => e, :nome => "Chavantes")
Cidade.create!(:estado => e, :nome => "Clementina")
Cidade.create!(:estado => e, :nome => "Colina")
Cidade.create!(:estado => e, :nome => "Colômbia")
Cidade.create!(:estado => e, :nome => "Conchal")
Cidade.create!(:estado => e, :nome => "Conchas")
Cidade.create!(:estado => e, :nome => "Cordeirópolis")
Cidade.create!(:estado => e, :nome => "Coroados")
Cidade.create!(:estado => e, :nome => "Coronel Macedo")
Cidade.create!(:estado => e, :nome => "Corumbataí")
Cidade.create!(:estado => e, :nome => "Cosmorama")
Cidade.create!(:estado => e, :nome => "Cosmópolis")
Cidade.create!(:estado => e, :nome => "Cotia")
Cidade.create!(:estado => e, :nome => "Cravinhos")
Cidade.create!(:estado => e, :nome => "Cristais Paulista")
Cidade.create!(:estado => e, :nome => "Cruzeiro")
Cidade.create!(:estado => e, :nome => "Cruzália")
Cidade.create!(:estado => e, :nome => "Cubatão")
Cidade.create!(:estado => e, :nome => "Cunha")
Cidade.create!(:estado => e, :nome => "Cássia dos Coqueiros")
Cidade.create!(:estado => e, :nome => "Cândido Mota")
Cidade.create!(:estado => e, :nome => "Cândido Rodrigues")
Cidade.create!(:estado => e, :nome => "Descalvado")
Cidade.create!(:estado => e, :nome => "Diadema")
Cidade.create!(:estado => e, :nome => "Dirce Reis")
Cidade.create!(:estado => e, :nome => "Divinolândia")
Cidade.create!(:estado => e, :nome => "Dobrada")
Cidade.create!(:estado => e, :nome => "Dois Córregos")
Cidade.create!(:estado => e, :nome => "Dolcinópolis")
Cidade.create!(:estado => e, :nome => "Dourado")
Cidade.create!(:estado => e, :nome => "Dracena")
Cidade.create!(:estado => e, :nome => "Duartina")
Cidade.create!(:estado => e, :nome => "Dumont")
Cidade.create!(:estado => e, :nome => "Echaporã")
Cidade.create!(:estado => e, :nome => "Eldorado")
Cidade.create!(:estado => e, :nome => "Elias Fausto")
Cidade.create!(:estado => e, :nome => "Elisiário")
Cidade.create!(:estado => e, :nome => "Embaúba")
Cidade.create!(:estado => e, :nome => "Embu")
Cidade.create!(:estado => e, :nome => "Embu-Guaçu")
Cidade.create!(:estado => e, :nome => "Emilianópolis")
Cidade.create!(:estado => e, :nome => "Engenheiro Coelho")
Cidade.create!(:estado => e, :nome => "Espírito Santo do Pinhal")
Cidade.create!(:estado => e, :nome => "Espírito Santo do Turvo")
Cidade.create!(:estado => e, :nome => "Estiva Gerbi")
Cidade.create!(:estado => e, :nome => "Estrela dOeste")
Cidade.create!(:estado => e, :nome => "Estrela do Norte")
Cidade.create!(:estado => e, :nome => "Euclides da Cunha Paulista")
Cidade.create!(:estado => e, :nome => "Fartura")
Cidade.create!(:estado => e, :nome => "Fernando Prestes")
Cidade.create!(:estado => e, :nome => "Fernandópolis")
Cidade.create!(:estado => e, :nome => "Fernão")
Cidade.create!(:estado => e, :nome => "Ferraz de Vasconcelos")
Cidade.create!(:estado => e, :nome => "Flora Rica")
Cidade.create!(:estado => e, :nome => "Floreal")
Cidade.create!(:estado => e, :nome => "Florínia")
Cidade.create!(:estado => e, :nome => "Flórida Paulista")
Cidade.create!(:estado => e, :nome => "Franca")
Cidade.create!(:estado => e, :nome => "Francisco Morato")
Cidade.create!(:estado => e, :nome => "Franco da Rocha")
Cidade.create!(:estado => e, :nome => "Gabriel Monteiro")
Cidade.create!(:estado => e, :nome => "Garça")
Cidade.create!(:estado => e, :nome => "Gastão Vidigal")
Cidade.create!(:estado => e, :nome => "Gavião Peixoto")
Cidade.create!(:estado => e, :nome => "General Salgado")
Cidade.create!(:estado => e, :nome => "Getulina")
Cidade.create!(:estado => e, :nome => "Glicério")
Cidade.create!(:estado => e, :nome => "Guaimbê")
Cidade.create!(:estado => e, :nome => "Guaiçara")
Cidade.create!(:estado => e, :nome => "Guapiara")
Cidade.create!(:estado => e, :nome => "Guapiaçu")
Cidade.create!(:estado => e, :nome => "Guaraci")
Cidade.create!(:estado => e, :nome => "Guarani dOeste")
Cidade.create!(:estado => e, :nome => "Guarantã")
Cidade.create!(:estado => e, :nome => "Guararapes")
Cidade.create!(:estado => e, :nome => "Guararema")
Cidade.create!(:estado => e, :nome => "Guaratinguetá")
Cidade.create!(:estado => e, :nome => "Guaraçaí")
Cidade.create!(:estado => e, :nome => "Guareí")
Cidade.create!(:estado => e, :nome => "Guariba")
Cidade.create!(:estado => e, :nome => "Guarujá")
Cidade.create!(:estado => e, :nome => "Guarulhos")
Cidade.create!(:estado => e, :nome => "Guará")
Cidade.create!(:estado => e, :nome => "Guatapará")
Cidade.create!(:estado => e, :nome => "Guaíra")
Cidade.create!(:estado => e, :nome => "Guzolândia")
Cidade.create!(:estado => e, :nome => "Gália")
Cidade.create!(:estado => e, :nome => "Herculândia")
Cidade.create!(:estado => e, :nome => "Holambra")
Cidade.create!(:estado => e, :nome => "Hortolândia")
Cidade.create!(:estado => e, :nome => "Iacanga")
Cidade.create!(:estado => e, :nome => "Iacri")
Cidade.create!(:estado => e, :nome => "Iaras")
Cidade.create!(:estado => e, :nome => "Ibaté")
Cidade.create!(:estado => e, :nome => "Ibirarema")
Cidade.create!(:estado => e, :nome => "Ibirá")
Cidade.create!(:estado => e, :nome => "Ibitinga")
Cidade.create!(:estado => e, :nome => "Ibiúna")
Cidade.create!(:estado => e, :nome => "Icém")
Cidade.create!(:estado => e, :nome => "Iepê")
Cidade.create!(:estado => e, :nome => "Igarapava")
Cidade.create!(:estado => e, :nome => "Igaratá")
Cidade.create!(:estado => e, :nome => "Igaraçu do Tietê")
Cidade.create!(:estado => e, :nome => "Iguape")
Cidade.create!(:estado => e, :nome => "Ilha Comprida")
Cidade.create!(:estado => e, :nome => "Ilha Solteira")
Cidade.create!(:estado => e, :nome => "Ilhabela")
Cidade.create!(:estado => e, :nome => "Indaiatuba")
Cidade.create!(:estado => e, :nome => "Indiana")
Cidade.create!(:estado => e, :nome => "Indiaporã")
Cidade.create!(:estado => e, :nome => "Inúbia Paulista")
Cidade.create!(:estado => e, :nome => "Ipaussu")
Cidade.create!(:estado => e, :nome => "Iperó")
Cidade.create!(:estado => e, :nome => "Ipeúna")
Cidade.create!(:estado => e, :nome => "Ipiguá")
Cidade.create!(:estado => e, :nome => "Iporanga")
Cidade.create!(:estado => e, :nome => "Ipuã")
Cidade.create!(:estado => e, :nome => "Iracemápolis")
Cidade.create!(:estado => e, :nome => "Irapuru")
Cidade.create!(:estado => e, :nome => "Irapuã")
Cidade.create!(:estado => e, :nome => "Itaberá")
Cidade.create!(:estado => e, :nome => "Itajobi")
Cidade.create!(:estado => e, :nome => "Itaju")
Cidade.create!(:estado => e, :nome => "Itanhaém")
Cidade.create!(:estado => e, :nome => "Itapecerica da Serra")
Cidade.create!(:estado => e, :nome => "Itapetininga")
Cidade.create!(:estado => e, :nome => "Itapeva")
Cidade.create!(:estado => e, :nome => "Itapevi")
Cidade.create!(:estado => e, :nome => "Itapira")
Cidade.create!(:estado => e, :nome => "Itapirapuã Paulista")
Cidade.create!(:estado => e, :nome => "Itaporanga")
Cidade.create!(:estado => e, :nome => "Itapura")
Cidade.create!(:estado => e, :nome => "Itapuí")
Cidade.create!(:estado => e, :nome => "Itaquaquecetuba")
Cidade.create!(:estado => e, :nome => "Itararé")
Cidade.create!(:estado => e, :nome => "Itariri")
Cidade.create!(:estado => e, :nome => "Itatiba")
Cidade.create!(:estado => e, :nome => "Itatinga")
Cidade.create!(:estado => e, :nome => "Itaí")
Cidade.create!(:estado => e, :nome => "Itaóca")
Cidade.create!(:estado => e, :nome => "Itirapina")
Cidade.create!(:estado => e, :nome => "Itirapuã")
Cidade.create!(:estado => e, :nome => "Itobi")
Cidade.create!(:estado => e, :nome => "Itu")
Cidade.create!(:estado => e, :nome => "Itupeva")
Cidade.create!(:estado => e, :nome => "Ituverava")
Cidade.create!(:estado => e, :nome => "Itápolis")
Cidade.create!(:estado => e, :nome => "Jaborandi")
Cidade.create!(:estado => e, :nome => "Jaboticabal")
Cidade.create!(:estado => e, :nome => "Jacareí")
Cidade.create!(:estado => e, :nome => "Jaci")
Cidade.create!(:estado => e, :nome => "Jacupiranga")
Cidade.create!(:estado => e, :nome => "Jaguariúna")
Cidade.create!(:estado => e, :nome => "Jales")
Cidade.create!(:estado => e, :nome => "Jambeiro")
Cidade.create!(:estado => e, :nome => "Jandira")
Cidade.create!(:estado => e, :nome => "Jardinópolis")
Cidade.create!(:estado => e, :nome => "Jarinu")
Cidade.create!(:estado => e, :nome => "Jaú")
Cidade.create!(:estado => e, :nome => "Jeriquara")
Cidade.create!(:estado => e, :nome => "Joanópolis")
Cidade.create!(:estado => e, :nome => "José Bonifácio")
Cidade.create!(:estado => e, :nome => "João Ramalho")
Cidade.create!(:estado => e, :nome => "Jumirim")
Cidade.create!(:estado => e, :nome => "Jundiaí")
Cidade.create!(:estado => e, :nome => "Junqueirópolis")
Cidade.create!(:estado => e, :nome => "Juquitiba")
Cidade.create!(:estado => e, :nome => "Juquiá")
Cidade.create!(:estado => e, :nome => "Júlio Mesquita")
Cidade.create!(:estado => e, :nome => "Lagoinha")
Cidade.create!(:estado => e, :nome => "Laranjal Paulista")
Cidade.create!(:estado => e, :nome => "Lavrinhas")
Cidade.create!(:estado => e, :nome => "Lavínia")
Cidade.create!(:estado => e, :nome => "Leme")
Cidade.create!(:estado => e, :nome => "Lençóis Paulista")
Cidade.create!(:estado => e, :nome => "Limeira")
Cidade.create!(:estado => e, :nome => "Lindóia")
Cidade.create!(:estado => e, :nome => "Lins")
Cidade.create!(:estado => e, :nome => "Lorena")
Cidade.create!(:estado => e, :nome => "Lourdes")
Cidade.create!(:estado => e, :nome => "Louveira")
Cidade.create!(:estado => e, :nome => "Lucianópolis")
Cidade.create!(:estado => e, :nome => "Lucélia")
Cidade.create!(:estado => e, :nome => "Luiziânia")
Cidade.create!(:estado => e, :nome => "Lupércio")
Cidade.create!(:estado => e, :nome => "Lutécia")
Cidade.create!(:estado => e, :nome => "Luís Antônio")
Cidade.create!(:estado => e, :nome => "Macatuba")
Cidade.create!(:estado => e, :nome => "Macaubal")
Cidade.create!(:estado => e, :nome => "Macedônia")
Cidade.create!(:estado => e, :nome => "Magda")
Cidade.create!(:estado => e, :nome => "Mairinque")
Cidade.create!(:estado => e, :nome => "Mairiporã")
Cidade.create!(:estado => e, :nome => "Manduri")
Cidade.create!(:estado => e, :nome => "Marabá Paulista")
Cidade.create!(:estado => e, :nome => "Maracaí")
Cidade.create!(:estado => e, :nome => "Marapoama")
Cidade.create!(:estado => e, :nome => "Marinópolis")
Cidade.create!(:estado => e, :nome => "Mariápolis")
Cidade.create!(:estado => e, :nome => "Martinópolis")
Cidade.create!(:estado => e, :nome => "Marília")
Cidade.create!(:estado => e, :nome => "Matão")
Cidade.create!(:estado => e, :nome => "Mauá")
Cidade.create!(:estado => e, :nome => "Monça")
Cidade.create!(:estado => e, :nome => "Meridiano")
Cidade.create!(:estado => e, :nome => "Mesópolis")
Cidade.create!(:estado => e, :nome => "Miguelópolis")
Cidade.create!(:estado => e, :nome => "Mineiros do Tietê")
Cidade.create!(:estado => e, :nome => "Mira Estrela")
Cidade.create!(:estado => e, :nome => "Miracatu")
Cidade.create!(:estado => e, :nome => "Mirandópolis")
Cidade.create!(:estado => e, :nome => "Mirante do Paranapanema")
Cidade.create!(:estado => e, :nome => "Mirassol")
Cidade.create!(:estado => e, :nome => "Mirassolândia")
Cidade.create!(:estado => e, :nome => "Mococa")
Cidade.create!(:estado => e, :nome => "Mogi Guaçu")
Cidade.create!(:estado => e, :nome => "Mogi das Cruzes")
Cidade.create!(:estado => e, :nome => "Moji Mirim")
Cidade.create!(:estado => e, :nome => "Mombuca")
Cidade.create!(:estado => e, :nome => "Mongaguá")
Cidade.create!(:estado => e, :nome => "Monte Alegre do Sul")
Cidade.create!(:estado => e, :nome => "Monte Alto")
Cidade.create!(:estado => e, :nome => "Monte Aprazível")
Cidade.create!(:estado => e, :nome => "Monte Azul Paulista")
Cidade.create!(:estado => e, :nome => "Monte Castelo")
Cidade.create!(:estado => e, :nome => "Monte Mor")
Cidade.create!(:estado => e, :nome => "Monteiro Lobato")
Cidade.create!(:estado => e, :nome => "Monções")
Cidade.create!(:estado => e, :nome => "Morro Agudo")
Cidade.create!(:estado => e, :nome => "Morungaba")
Cidade.create!(:estado => e, :nome => "Motuca")
Cidade.create!(:estado => e, :nome => "Murutinga do Sul")
Cidade.create!(:estado => e, :nome => "Nantes")
Cidade.create!(:estado => e, :nome => "Narandiba")
Cidade.create!(:estado => e, :nome => "Natividade da Serra")
Cidade.create!(:estado => e, :nome => "Nazaré Paulista")
Cidade.create!(:estado => e, :nome => "Neves Paulista")
Cidade.create!(:estado => e, :nome => "Nhandeara")
Cidade.create!(:estado => e, :nome => "Nipoã")
Cidade.create!(:estado => e, :nome => "Nova Aliança")
Cidade.create!(:estado => e, :nome => "Nova Campina")
Cidade.create!(:estado => e, :nome => "Nova Canaã Paulista")
Cidade.create!(:estado => e, :nome => "Nova Castilho")
Cidade.create!(:estado => e, :nome => "Nova Europa")
Cidade.create!(:estado => e, :nome => "Nova Granada")
Cidade.create!(:estado => e, :nome => "Nova Guataporanga")
Cidade.create!(:estado => e, :nome => "Nova Indepência")
Cidade.create!(:estado => e, :nome => "Nova Luzitânia")
Cidade.create!(:estado => e, :nome => "Nova Odessa")
Cidade.create!(:estado => e, :nome => "Novais")
Cidade.create!(:estado => e, :nome => "Novo Horizonte")
Cidade.create!(:estado => e, :nome => "Nuporanga")
Cidade.create!(:estado => e, :nome => "Ocauçu")
Cidade.create!(:estado => e, :nome => "Óleo")
Cidade.create!(:estado => e, :nome => "Olímpia")
Cidade.create!(:estado => e, :nome => "Onda Verde")
Cidade.create!(:estado => e, :nome => "Oriente")
Cidade.create!(:estado => e, :nome => "Orindiúva")
Cidade.create!(:estado => e, :nome => "Orlândia")
Cidade.create!(:estado => e, :nome => "Osasco")
Cidade.create!(:estado => e, :nome => "Oscar Bressane")
Cidade.create!(:estado => e, :nome => "Osvaldo Cruz")
Cidade.create!(:estado => e, :nome => "Ourinhos")
Cidade.create!(:estado => e, :nome => "Ouro Verde")
Cidade.create!(:estado => e, :nome => "Ouroeste")
Cidade.create!(:estado => e, :nome => "Pacaembu")
Cidade.create!(:estado => e, :nome => "Palestina")
Cidade.create!(:estado => e, :nome => "Palmares Paulista")
Cidade.create!(:estado => e, :nome => "Palmeira dOeste")
Cidade.create!(:estado => e, :nome => "Palmital")
Cidade.create!(:estado => e, :nome => "Panorama")
Cidade.create!(:estado => e, :nome => "Paraguaçu Paulista")
Cidade.create!(:estado => e, :nome => "Paraibuna")
Cidade.create!(:estado => e, :nome => "Paranapanema")
Cidade.create!(:estado => e, :nome => "Paranapuã")
Cidade.create!(:estado => e, :nome => "Parapuã")
Cidade.create!(:estado => e, :nome => "Paraíso")
Cidade.create!(:estado => e, :nome => "Pardinho")
Cidade.create!(:estado => e, :nome => "Pariquera-Açu")
Cidade.create!(:estado => e, :nome => "Parisi")
Cidade.create!(:estado => e, :nome => "Patrocínio Paulista")
Cidade.create!(:estado => e, :nome => "Paulicéia")
Cidade.create!(:estado => e, :nome => "Paulistânia")
Cidade.create!(:estado => e, :nome => "Paulo de Faria")
Cidade.create!(:estado => e, :nome => "Paulínia")
Cidade.create!(:estado => e, :nome => "Pederneiras")
Cidade.create!(:estado => e, :nome => "Pedra Bela")
Cidade.create!(:estado => e, :nome => "Pedranópolis")
Cidade.create!(:estado => e, :nome => "Pedregulho")
Cidade.create!(:estado => e, :nome => "Pedreira")
Cidade.create!(:estado => e, :nome => "Pedrinhas Paulista")
Cidade.create!(:estado => e, :nome => "Pedro de Toledo")
Cidade.create!(:estado => e, :nome => "Penápolis")
Cidade.create!(:estado => e, :nome => "Pereira Barreto")
Cidade.create!(:estado => e, :nome => "Pereiras")
Cidade.create!(:estado => e, :nome => "Peruíbe")
Cidade.create!(:estado => e, :nome => "Piacatu")
Cidade.create!(:estado => e, :nome => "Piedade")
Cidade.create!(:estado => e, :nome => "Pilar do Sul")
Cidade.create!(:estado => e, :nome => "Pindamonhangaba")
Cidade.create!(:estado => e, :nome => "Pindorama")
Cidade.create!(:estado => e, :nome => "Pinhalzinho")
Cidade.create!(:estado => e, :nome => "Piquerobi")
Cidade.create!(:estado => e, :nome => "Piquete")
Cidade.create!(:estado => e, :nome => "Piracaia")
Cidade.create!(:estado => e, :nome => "Piracicaba")
Cidade.create!(:estado => e, :nome => "Piraju")
Cidade.create!(:estado => e, :nome => "Pirajuí")
Cidade.create!(:estado => e, :nome => "Pirangi")
Cidade.create!(:estado => e, :nome => "Pirapora do Bom Jesus")
Cidade.create!(:estado => e, :nome => "Pirapozinho")
Cidade.create!(:estado => e, :nome => "Pirassununga")
Cidade.create!(:estado => e, :nome => "Piratininga")
Cidade.create!(:estado => e, :nome => "Pitangueiras")
Cidade.create!(:estado => e, :nome => "Planalto")
Cidade.create!(:estado => e, :nome => "Platina")
Cidade.create!(:estado => e, :nome => "Poloni")
Cidade.create!(:estado => e, :nome => "Pompéia")
Cidade.create!(:estado => e, :nome => "Pongaí")
Cidade.create!(:estado => e, :nome => "Pontal")
Cidade.create!(:estado => e, :nome => "Pontalinda")
Cidade.create!(:estado => e, :nome => "Pontes Gestal")
Cidade.create!(:estado => e, :nome => "Populina")
Cidade.create!(:estado => e, :nome => "Porangaba")
Cidade.create!(:estado => e, :nome => "Porto Feliz")
Cidade.create!(:estado => e, :nome => "Porto Ferreira")
Cidade.create!(:estado => e, :nome => "Potim")
Cidade.create!(:estado => e, :nome => "Potiraba")
Cidade.create!(:estado => e, :nome => "Poá")
Cidade.create!(:estado => e, :nome => "Pracinha")
Cidade.create!(:estado => e, :nome => "Pradópolis")
Cidade.create!(:estado => e, :nome => "Praia Grande")
Cidade.create!(:estado => e, :nome => "Pratânia")
Cidade.create!(:estado => e, :nome => "Presidente Alves")
Cidade.create!(:estado => e, :nome => "Presidente Bernardes")
Cidade.create!(:estado => e, :nome => "Presidente Epitácio")
Cidade.create!(:estado => e, :nome => "Presidente Prudente")
Cidade.create!(:estado => e, :nome => "Presidente Venceslau")
Cidade.create!(:estado => e, :nome => "Promissão")
Cidade.create!(:estado => e, :nome => "Quadra")
Cidade.create!(:estado => e, :nome => "Quatá")
Cidade.create!(:estado => e, :nome => "Queiroz")
Cidade.create!(:estado => e, :nome => "Queluz")
Cidade.create!(:estado => e, :nome => "Quintana")
Cidade.create!(:estado => e, :nome => "Rafard")
Cidade.create!(:estado => e, :nome => "Rancharia")
Cidade.create!(:estado => e, :nome => "Redenção da Serra")
Cidade.create!(:estado => e, :nome => "Regente Feijó")
Cidade.create!(:estado => e, :nome => "Reginópolis")
Cidade.create!(:estado => e, :nome => "Registro")
Cidade.create!(:estado => e, :nome => "Restinga")
Cidade.create!(:estado => e, :nome => "Ribeira")
Cidade.create!(:estado => e, :nome => "Ribeirão Bonito")
Cidade.create!(:estado => e, :nome => "Ribeirão Branco")
Cidade.create!(:estado => e, :nome => "Ribeirão Corrente")
Cidade.create!(:estado => e, :nome => "Ribeirão Grande")
Cidade.create!(:estado => e, :nome => "Ribeirão Pires")
Cidade.create!(:estado => e, :nome => "Ribeirão Preto")
Cidade.create!(:estado => e, :nome => "Ribeirão do Sul")
Cidade.create!(:estado => e, :nome => "Ribeirão dos Índios")
Cidade.create!(:estado => e, :nome => "Rifaina")
Cidade.create!(:estado => e, :nome => "Rincão")
Cidade.create!(:estado => e, :nome => "Rinópolis")
Cidade.create!(:estado => e, :nome => "Rio Claro")
Cidade.create!(:estado => e, :nome => "Rio Grande da Serra")
Cidade.create!(:estado => e, :nome => "Rio das Pedras")
Cidade.create!(:estado => e, :nome => "Riolândia")
Cidade.create!(:estado => e, :nome => "Riversul")
Cidade.create!(:estado => e, :nome => "Rosana")
Cidade.create!(:estado => e, :nome => "Roseira")
Cidade.create!(:estado => e, :nome => "Rubinéia")
Cidade.create!(:estado => e, :nome => "Rubiácea")
Cidade.create!(:estado => e, :nome => "Sabino")
Cidade.create!(:estado => e, :nome => "Sagres")
Cidade.create!(:estado => e, :nome => "Sales")
Cidade.create!(:estado => e, :nome => "Sales Oliveira")
Cidade.create!(:estado => e, :nome => "Salesópolis")
Cidade.create!(:estado => e, :nome => "Salmourão")
Cidade.create!(:estado => e, :nome => "Saltinho")
Cidade.create!(:estado => e, :nome => "Salto")
Cidade.create!(:estado => e, :nome => "Salto Grande")
Cidade.create!(:estado => e, :nome => "Salto de Pirapora")
Cidade.create!(:estado => e, :nome => "Sandovalina")
Cidade.create!(:estado => e, :nome => "Santa Adélia")
Cidade.create!(:estado => e, :nome => "Santa Albertina")
Cidade.create!(:estado => e, :nome => "Santa Branca")
Cidade.create!(:estado => e, :nome => "Santa Bárbara dOeste")
Cidade.create!(:estado => e, :nome => "Santa Clara dOeste")
Cidade.create!(:estado => e, :nome => "Santa Cruz da Conceição")
Cidade.create!(:estado => e, :nome => "Santa Cruz da Esperança")
Cidade.create!(:estado => e, :nome => "Santa Cruz das Palmeiras")
Cidade.create!(:estado => e, :nome => "Santa Cruz do Rio Pardo")
Cidade.create!(:estado => e, :nome => "Santa Ernestina")
Cidade.create!(:estado => e, :nome => "Santa Fé do Sul")
Cidade.create!(:estado => e, :nome => "Santa Gertrudes")
Cidade.create!(:estado => e, :nome => "Santa Isabel")
Cidade.create!(:estado => e, :nome => "Santa Lúcia")
Cidade.create!(:estado => e, :nome => "Santa Maria da Serra")
Cidade.create!(:estado => e, :nome => "Santa Mercedes")
Cidade.create!(:estado => e, :nome => "Santa Rita dOeste")
Cidade.create!(:estado => e, :nome => "Santa Rita do Passa Quatro")
Cidade.create!(:estado => e, :nome => "Santa Rosa de Viterbo")
Cidade.create!(:estado => e, :nome => "Santa Salete")
Cidade.create!(:estado => e, :nome => "Santana da Ponte Pensa")
Cidade.create!(:estado => e, :nome => "Santana de Parnaíba")
Cidade.create!(:estado => e, :nome => "Santo Anastácio")
Cidade.create!(:estado => e, :nome => "Santo André")
Cidade.create!(:estado => e, :nome => "Santo Antônio da Alegria")
Cidade.create!(:estado => e, :nome => "Santo Antônio de Posse")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Aracanguá")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Jardim")
Cidade.create!(:estado => e, :nome => "Santo Antônio do Pinhal")
Cidade.create!(:estado => e, :nome => "Santo Expedito")
Cidade.create!(:estado => e, :nome => "Santos")
Cidade.create!(:estado => e, :nome => "Santópolis do Aguapeí")
Cidade.create!(:estado => e, :nome => "Sarapuí")
Cidade.create!(:estado => e, :nome => "Sarutaiá")
Cidade.create!(:estado => e, :nome => "Sebastianópolis do Sul")
Cidade.create!(:estado => e, :nome => "Serra Azul")
Cidade.create!(:estado => e, :nome => "Serra Negra")
Cidade.create!(:estado => e, :nome => "Serrana")
Cidade.create!(:estado => e, :nome => "Sertãozinho")
Cidade.create!(:estado => e, :nome => "Sete Barras")
Cidade.create!(:estado => e, :nome => "Severínia")
Cidade.create!(:estado => e, :nome => "Silveiras")
Cidade.create!(:estado => e, :nome => "Socorro")
Cidade.create!(:estado => e, :nome => "Sorocaba")
Cidade.create!(:estado => e, :nome => "Sud Mennucci")
Cidade.create!(:estado => e, :nome => "Sumaré")
Cidade.create!(:estado => e, :nome => "Suzano")
Cidade.create!(:estado => e, :nome => "Suzanápolis")
Cidade.create!(:estado => e, :nome => "São Bento do Sapucaí")
Cidade.create!(:estado => e, :nome => "São Bernardo do Campo")
Cidade.create!(:estado => e, :nome => "São Caetano do Sul")
Cidade.create!(:estado => e, :nome => "São Carlos")
Cidade.create!(:estado => e, :nome => "São Francisco")
Cidade.create!(:estado => e, :nome => "São Joaquim da Barra")
Cidade.create!(:estado => e, :nome => "São José da Bela Vista")
Cidade.create!(:estado => e, :nome => "São José do Barreiro")
Cidade.create!(:estado => e, :nome => "São José do Rio Pardo")
Cidade.create!(:estado => e, :nome => "São José do Rio Preto")
Cidade.create!(:estado => e, :nome => "São José dos Campos")
Cidade.create!(:estado => e, :nome => "São João da Boa Vista")
Cidade.create!(:estado => e, :nome => "São João das Duas Pontes")
Cidade.create!(:estado => e, :nome => "São João de Iracema")
Cidade.create!(:estado => e, :nome => "São João do Pau dAlho")
Cidade.create!(:estado => e, :nome => "São Lourenço da Serra")
Cidade.create!(:estado => e, :nome => "São Luís do Paraitinga")
Cidade.create!(:estado => e, :nome => "São Manuel")
Cidade.create!(:estado => e, :nome => "São Miguel Arcanjo")
Cidade.create!(:estado => e, :nome => "São Paulo")
Cidade.create!(:estado => e, :nome => "São Pedro")
Cidade.create!(:estado => e, :nome => "São Pedro do Turvo")
Cidade.create!(:estado => e, :nome => "São Roque")
Cidade.create!(:estado => e, :nome => "São Sebastião")
Cidade.create!(:estado => e, :nome => "São Sebastião da Grama")
Cidade.create!(:estado => e, :nome => "São Simão")
Cidade.create!(:estado => e, :nome => "São Vicente")
Cidade.create!(:estado => e, :nome => "Tabapuã")
Cidade.create!(:estado => e, :nome => "Tabatinga")
Cidade.create!(:estado => e, :nome => "Taboão da Serra")
Cidade.create!(:estado => e, :nome => "Taciba")
Cidade.create!(:estado => e, :nome => "Taguaí")
Cidade.create!(:estado => e, :nome => "Taiaçu")
Cidade.create!(:estado => e, :nome => "Taiúva")
Cidade.create!(:estado => e, :nome => "Tambaú")
Cidade.create!(:estado => e, :nome => "Tanabi")
Cidade.create!(:estado => e, :nome => "Tapiratiba")
Cidade.create!(:estado => e, :nome => "Tapiraí")
Cidade.create!(:estado => e, :nome => "Taquaral")
Cidade.create!(:estado => e, :nome => "Taquaritinga")
Cidade.create!(:estado => e, :nome => "Taquarituba")
Cidade.create!(:estado => e, :nome => "Taquarivaí")
Cidade.create!(:estado => e, :nome => "Tarabai")
Cidade.create!(:estado => e, :nome => "Tarumã")
Cidade.create!(:estado => e, :nome => "Tatuí")
Cidade.create!(:estado => e, :nome => "Taubaté")
Cidade.create!(:estado => e, :nome => "Tejupá")
Cidade.create!(:estado => e, :nome => "Teodoro Sampaio")
Cidade.create!(:estado => e, :nome => "Terra Roxa")
Cidade.create!(:estado => e, :nome => "Tietê")
Cidade.create!(:estado => e, :nome => "Timburi")
Cidade.create!(:estado => e, :nome => "Torre de Pedra")
Cidade.create!(:estado => e, :nome => "Torrinha")
Cidade.create!(:estado => e, :nome => "Trabiju")
Cidade.create!(:estado => e, :nome => "Tremembé")
Cidade.create!(:estado => e, :nome => "Três Fronteiras")
Cidade.create!(:estado => e, :nome => "Tuiuti")
Cidade.create!(:estado => e, :nome => "Tupi Paulista")
Cidade.create!(:estado => e, :nome => "Tupã")
Cidade.create!(:estado => e, :nome => "Turiúba")
Cidade.create!(:estado => e, :nome => "Turmalina")
Cidade.create!(:estado => e, :nome => "Ubarana")
Cidade.create!(:estado => e, :nome => "Ubatuba")
Cidade.create!(:estado => e, :nome => "Ubirajara")
Cidade.create!(:estado => e, :nome => "Uchoa")
Cidade.create!(:estado => e, :nome => "União Paulista")
Cidade.create!(:estado => e, :nome => "Uru")
Cidade.create!(:estado => e, :nome => "Urupês")
Cidade.create!(:estado => e, :nome => "Urânia")
Cidade.create!(:estado => e, :nome => "Valentim Gentil")
Cidade.create!(:estado => e, :nome => "Valinhos")
Cidade.create!(:estado => e, :nome => "Valparaíso")
Cidade.create!(:estado => e, :nome => "Vargem")
Cidade.create!(:estado => e, :nome => "Vargem Grande Paulista")
Cidade.create!(:estado => e, :nome => "Vargem Grande do Sul")
Cidade.create!(:estado => e, :nome => "Vera Cruz")
Cidade.create!(:estado => e, :nome => "Vinhedo")
Cidade.create!(:estado => e, :nome => "Viradouro")
Cidade.create!(:estado => e, :nome => "Vista Alegre do Alto")
Cidade.create!(:estado => e, :nome => "Vitória Brasil")
Cidade.create!(:estado => e, :nome => "Votorantim")
Cidade.create!(:estado => e, :nome => "Votuporanga")
Cidade.create!(:estado => e, :nome => "Várzea Paulista")
Cidade.create!(:estado => e, :nome => "Zacarias")


Estado.create!(:unidade => u, :sigla => 'TO', :nome => "Tocantins")
e = Estado.find_by(nome: "Tocantins")

p "Estado #{e.nome} Criado!"

Cidade.create!(:estado => e, :nome => "Abreulândia")
Cidade.create!(:estado => e, :nome => "Aguiarnópolis")
Cidade.create!(:estado => e, :nome => "Aliança do Tocantins")
Cidade.create!(:estado => e, :nome => "Almas")
Cidade.create!(:estado => e, :nome => "Alvorada")
Cidade.create!(:estado => e, :nome => "Ananás")
Cidade.create!(:estado => e, :nome => "Angico")
Cidade.create!(:estado => e, :nome => "Aparecida do Rio Negro")
Cidade.create!(:estado => e, :nome => "Aragominas")
Cidade.create!(:estado => e, :nome => "Araguacema")
Cidade.create!(:estado => e, :nome => "Araguanã")
Cidade.create!(:estado => e, :nome => "Araguatins")
Cidade.create!(:estado => e, :nome => "Araguaçu")
Cidade.create!(:estado => e, :nome => "Araguaína")
Cidade.create!(:estado => e, :nome => "Arapoema")
Cidade.create!(:estado => e, :nome => "Arraias")
Cidade.create!(:estado => e, :nome => "Augustinópolis")
Cidade.create!(:estado => e, :nome => "Aurora do Tocantins")
Cidade.create!(:estado => e, :nome => "Axixá do Tocantins")
Cidade.create!(:estado => e, :nome => "Babaçulândia")
Cidade.create!(:estado => e, :nome => "Bandeirantes do Tocantins")
Cidade.create!(:estado => e, :nome => "Barra do Ouro")
Cidade.create!(:estado => e, :nome => "Barrolândia")
Cidade.create!(:estado => e, :nome => "Bernardo Sayão")
Cidade.create!(:estado => e, :nome => "Bom Jesus do Tocantins")
Cidade.create!(:estado => e, :nome => "Brasilândia do Tocantins")
Cidade.create!(:estado => e, :nome => "Brejinho de Nazaré")
Cidade.create!(:estado => e, :nome => "Buriti do Tocantins")
Cidade.create!(:estado => e, :nome => "Cachoeirinha")
Cidade.create!(:estado => e, :nome => "Campos Lindos")
Cidade.create!(:estado => e, :nome => "Cariri do Tocantins")
Cidade.create!(:estado => e, :nome => "Carmolândia")
Cidade.create!(:estado => e, :nome => "Carrasco Bonito")
Cidade.create!(:estado => e, :nome => "Caseara")
Cidade.create!(:estado => e, :nome => "Centenário")
Cidade.create!(:estado => e, :nome => "Chapada da Natividade")
Cidade.create!(:estado => e, :nome => "Chapada de Areia")
Cidade.create!(:estado => e, :nome => "Colinas do Tocantins")
Cidade.create!(:estado => e, :nome => "Colméia")
Cidade.create!(:estado => e, :nome => "Combinado")
Cidade.create!(:estado => e, :nome => "Conceição do Tocantins")
Cidade.create!(:estado => e, :nome => "Couto de Magalhães")
Cidade.create!(:estado => e, :nome => "Cristalândia")
Cidade.create!(:estado => e, :nome => "Crixás do Tocantins")
Cidade.create!(:estado => e, :nome => "Darcinópolis")
Cidade.create!(:estado => e, :nome => "Dianópolis")
Cidade.create!(:estado => e, :nome => "Divinópolis do Tocantins")
Cidade.create!(:estado => e, :nome => "Dois Irmãos do Tocantins")
Cidade.create!(:estado => e, :nome => "Dueré")
Cidade.create!(:estado => e, :nome => "Esperantina")
Cidade.create!(:estado => e, :nome => "Figueirópolis")
Cidade.create!(:estado => e, :nome => "Filadélfia")
Cidade.create!(:estado => e, :nome => "Formoso do Araguaia")
Cidade.create!(:estado => e, :nome => "Fortaleza do Tabocão")
Cidade.create!(:estado => e, :nome => "Fátima")
Cidade.create!(:estado => e, :nome => "Goianorte")
Cidade.create!(:estado => e, :nome => "Goiatins")
Cidade.create!(:estado => e, :nome => "Guaraí")
Cidade.create!(:estado => e, :nome => "Gurupi")
Cidade.create!(:estado => e, :nome => "Ipueiras")
Cidade.create!(:estado => e, :nome => "Itacajá")
Cidade.create!(:estado => e, :nome => "Itaguatins")
Cidade.create!(:estado => e, :nome => "Itapiratins")
Cidade.create!(:estado => e, :nome => "Itaporã do Tocantins")
Cidade.create!(:estado => e, :nome => "Jaú do Tocantins")
Cidade.create!(:estado => e, :nome => "Juarina")
Cidade.create!(:estado => e, :nome => "Lagoa da Confusão")
Cidade.create!(:estado => e, :nome => "Lagoa do Tocantins")
Cidade.create!(:estado => e, :nome => "Lajeado")
Cidade.create!(:estado => e, :nome => "Lavandeira")
Cidade.create!(:estado => e, :nome => "Lizarda")
Cidade.create!(:estado => e, :nome => "Luzinópolis")
Cidade.create!(:estado => e, :nome => "Marianópolis do Tocantins")
Cidade.create!(:estado => e, :nome => "Mateiros")
Cidade.create!(:estado => e, :nome => "Maurilândia do Tocantins")
Cidade.create!(:estado => e, :nome => "Miracema do Tocantins")
Cidade.create!(:estado => e, :nome => "Miranorte")
Cidade.create!(:estado => e, :nome => "Monte Santo do Tocantins")
Cidade.create!(:estado => e, :nome => "Monte do Carmo")
Cidade.create!(:estado => e, :nome => "Muricilândia")
Cidade.create!(:estado => e, :nome => "Natividade")
Cidade.create!(:estado => e, :nome => "Nazaré")
Cidade.create!(:estado => e, :nome => "Nova Olinda")
Cidade.create!(:estado => e, :nome => "Nova Rosalândia")
Cidade.create!(:estado => e, :nome => "Novo Acordo")
Cidade.create!(:estado => e, :nome => "Novo Alegre")
Cidade.create!(:estado => e, :nome => "Novo Jardim")
Cidade.create!(:estado => e, :nome => "Oliveira de Fátima")
Cidade.create!(:estado => e, :nome => "Palmas")
Cidade.create!(:estado => e, :nome => "Palmeirante")
Cidade.create!(:estado => e, :nome => "Palmeiras do Tocantins")
Cidade.create!(:estado => e, :nome => "Palmeirópolis")
Cidade.create!(:estado => e, :nome => "Paranã")
Cidade.create!(:estado => e, :nome => "Paraíso do Tocantins")
Cidade.create!(:estado => e, :nome => "Pau dArco")
Cidade.create!(:estado => e, :nome => "Pedro Afonso")
Cidade.create!(:estado => e, :nome => "Peixe")
Cidade.create!(:estado => e, :nome => "Pequizeiro")
Cidade.create!(:estado => e, :nome => "Pindorama do Tocantins")
Cidade.create!(:estado => e, :nome => "Piraquê")
Cidade.create!(:estado => e, :nome => "Pium")
Cidade.create!(:estado => e, :nome => "Ponte Alta do Bom Jesus")
Cidade.create!(:estado => e, :nome => "Ponte Alta do Tocantins")
Cidade.create!(:estado => e, :nome => "Porto Alegre do Tocantins")
Cidade.create!(:estado => e, :nome => "Porto Nacional")
Cidade.create!(:estado => e, :nome => "Praia Norte")
Cidade.create!(:estado => e, :nome => "Presidente Kennedy")
Cidade.create!(:estado => e, :nome => "Pugmil")
Cidade.create!(:estado => e, :nome => "Recursolândia")
Cidade.create!(:estado => e, :nome => "Riachinho")
Cidade.create!(:estado => e, :nome => "Rio Sono")
Cidade.create!(:estado => e, :nome => "Rio da Conceição")
Cidade.create!(:estado => e, :nome => "Rio dos Bois")
Cidade.create!(:estado => e, :nome => "Sampaio")
Cidade.create!(:estado => e, :nome => "Sandolândia")
Cidade.create!(:estado => e, :nome => "Santa Fé do Araguaia")
Cidade.create!(:estado => e, :nome => "Santa Maria do Tocantins")
Cidade.create!(:estado => e, :nome => "Santa Rita do Tocantins")
Cidade.create!(:estado => e, :nome => "Santa Rosa do Tocantins")
Cidade.create!(:estado => e, :nome => "Santa Tereza do Tocantins")
Cidade.create!(:estado => e, :nome => "Santa Terezinha do Tocantins")
Cidade.create!(:estado => e, :nome => "Silvanópolis")
Cidade.create!(:estado => e, :nome => "Sucupira")
Cidade.create!(:estado => e, :nome => "São Bento do Tocantins")
Cidade.create!(:estado => e, :nome => "São Félix do Tocantins")
Cidade.create!(:estado => e, :nome => "São Miguel do Tocantins")
Cidade.create!(:estado => e, :nome => "São Salvador do Tocantins")
Cidade.create!(:estado => e, :nome => "São Sebastião do Tocantins")
Cidade.create!(:estado => e, :nome => "São Valério da Natividade")
Cidade.create!(:estado => e, :nome => "Sítio Novo do Tocantins")
Cidade.create!(:estado => e, :nome => "Taguatinga")
Cidade.create!(:estado => e, :nome => "Taipas do Tocantins")
Cidade.create!(:estado => e, :nome => "Talismã")
Cidade.create!(:estado => e, :nome => "Tocantinópolis")
Cidade.create!(:estado => e, :nome => "Tocantínia")
Cidade.create!(:estado => e, :nome => "Tupirama")
Cidade.create!(:estado => e, :nome => "Tupiratins")
Cidade.create!(:estado => e, :nome => "Wanderlândia")
Cidade.create!(:estado => e, :nome => "Xambioá")

Cnae.destroy_all
Cnae.create!( [
:id => 1,
:codigo => '0111301',
:descricao => 'Cultivo de arroz'
] );
Cnae.create!( [
:id => 10,
:codigo => '0115600',
:descricao => 'Cultivo de soja'
] );
Cnae.create!( [
:id => 100,
:codigo => '0230600',
:descricao => 'Atividades de apoio à produção florestal'
] );
Cnae.create!( [
:id => 1000,
:codigo => '6209100',
:descricao => 'Suporte técnico, manutenção e outros serviços em tecnologia da informação'
] );
Cnae.create!( [
:id => 1001,
:codigo => '6311900',
:descricao => 'Tratamento de dados, provedores de serviços de aplicação e serviços de hospedagem na internet'
] );
Cnae.create!( [
:id => 1002,
:codigo => '6319400',
:descricao => 'Portais, provedores de conteúdo e outros serviços de informação na internet'
] );
Cnae.create!( [
:id => 1003,
:codigo => '6391700',
:descricao => 'Agências de notícias'
] );
Cnae.create!( [
:id => 1004,
:codigo => '6399200',
:descricao => 'Outras atividades de prestação de serviços de informação não especificadas anteriormente'
] );
Cnae.create!( [
:id => 1005,
:codigo => '6410700',
:descricao => 'Banco Central'
] );
Cnae.create!( [
:id => 1006,
:codigo => '6421200',
:descricao => 'Bancos comerciais'
] );
Cnae.create!( [
:id => 1007,
:codigo => '6422100',
:descricao => 'Bancos múltiplos, com carteira comercial'
] );
Cnae.create!( [
:id => 1008,
:codigo => '6423900',
:descricao => 'Caixas econômicas'
] );
Cnae.create!( [
:id => 1009,
:codigo => '6424701',
:descricao => 'Bancos cooperativos'
] );
Cnae.create!( [
:id => 101,
:codigo => '0311601',
:descricao => 'Pesca de peixes em água salgada'
] );
Cnae.create!( [
:id => 1010,
:codigo => '6424702',
:descricao => 'Cooperativas centrais de crédito'
] );
Cnae.create!( [
:id => 1011,
:codigo => '6424703',
:descricao => 'Cooperativas de crédito mútuo'
] );
Cnae.create!( [
:id => 1012,
:codigo => '6424704',
:descricao => 'Cooperativas de crédito rural'
] );
Cnae.create!( [
:id => 1013,
:codigo => '6431000',
:descricao => 'Bancos múltiplos, sem carteira comercial'
] );
Cnae.create!( [
:id => 1014,
:codigo => '6432800',
:descricao => 'Bancos de investimento'
] );
Cnae.create!( [
:id => 1015,
:codigo => '6433600',
:descricao => 'Bancos de desenvolvimento'
] );
Cnae.create!( [
:id => 1016,
:codigo => '6434400',
:descricao => 'Agências de fomento'
] );
Cnae.create!( [
:id => 1017,
:codigo => '6435201',
:descricao => 'Sociedades de crédito imobiliário'
] );
Cnae.create!( [
:id => 1018,
:codigo => '6435202',
:descricao => 'Associações de poupança e empréstimo'
] );
Cnae.create!( [
:id => 1019,
:codigo => '6435203',
:descricao => 'Companhias hipotecárias'
] );
Cnae.create!( [
:id => 102,
:codigo => '0311602',
:descricao => 'Pesca de crustáceos e moluscos em água salgada'
] );
Cnae.create!( [
:id => 1020,
:codigo => '6436100',
:descricao => 'Sociedades de crédito, financiamento e investimento - financeiras'
] );
Cnae.create!( [
:id => 1021,
:codigo => '6437900',
:descricao => 'Sociedades de crédito ao microempreendedor'
] );
Cnae.create!( [
:id => 1022,
:codigo => '6438701',
:descricao => 'Bancos de câmbio'
] );
Cnae.create!( [
:id => 1023,
:codigo => '6438799',
:descricao => 'Outras instituições de intermediação não-monetária não especificadas anteriormente'
] );
Cnae.create!( [
:id => 1024,
:codigo => '6440900',
:descricao => 'Arrendamento mercantil'
] );
Cnae.create!( [
:id => 1025,
:codigo => '6450600',
:descricao => 'Sociedades de capitalização'
] );
Cnae.create!( [
:id => 1026,
:codigo => '6461100',
:descricao => 'Holdings de instituições financeiras'
] );
Cnae.create!( [
:id => 1027,
:codigo => '6462000',
:descricao => 'Holdings de instituições não-financeiras'
] );
Cnae.create!( [
:id => 1028,
:codigo => '6463800',
:descricao => 'Outras sociedades de participação, exceto holdings'
] );
Cnae.create!( [
:id => 1029,
:codigo => '6470101',
:descricao => 'Fundos de investimento, exceto previdenciários e imobiliários'
] );
Cnae.create!( [
:id => 103,
:codigo => '0311603',
:descricao => 'Coleta de outros produtos marinhos'
] );
Cnae.create!( [
:id => 1030,
:codigo => '6470102',
:descricao => 'Fundos de investimento previdenciários'
] );
Cnae.create!( [
:id => 1031,
:codigo => '6470103',
:descricao => 'Fundos de investimento imobiliários'
] );
Cnae.create!( [
:id => 1032,
:codigo => '6491300',
:descricao => 'Sociedades de fomento mercantil - factoring'
] );
Cnae.create!( [
:id => 1033,
:codigo => '6492100',
:descricao => 'Securitização de créditos'
] );
			
Cnae.create!( [
:id => 1034,
:codigo => '6493000',
:descricao => 'Administração de consórcios para aquisição de bens e direitos'
] );
Cnae.create!( [
:id => 1035,
:codigo => '6499901',
:descricao => 'Clubes de investimento'
] );
Cnae.create!( [
:id => 1036,
:codigo => '6499902',
:descricao => 'Sociedades de investimento'
] );
Cnae.create!( [
:id => 1037,
:codigo => '6499903',
:descricao => 'Fundo garantidor de crédito'
] );
Cnae.create!( [
:id => 1038,
:codigo => '6499904',
:descricao => 'Caixas de financiamento de corporações'
] );
Cnae.create!( [
:id => 1039,
:codigo => '6499905',
:descricao => 'Concessão de crédito pelas OSCIP'
] );
Cnae.create!( [
:id => 104,
:codigo => '0311604',
:descricao => 'Atividades de apoio à pesca em água salgada'
] );
Cnae.create!( [
:id => 1040,
:codigo => '6499999',
:descricao => 'Outras atividades de serviços financeiros não especificadas anteriormente'
] );
Cnae.create!( [
:id => 1041,
:codigo => '6511101',
:descricao => 'Seguros de vida'
] );
Cnae.create!( [
:id => 1042,
:codigo => '6511102',
:descricao => 'Planos de auxílio-funeral'
] );
Cnae.create!( [
:id => 1043,
:codigo => '6512000',
:descricao => 'Seguros não-vida'
] );
Cnae.create!( [
:id => 1044,
:codigo => '6520100',
:descricao => 'Seguros-saúde'
] );
Cnae.create!( [
:id => 1045,
:codigo => '6530800',
:descricao => 'Resseguros'
] );
			
Cnae.create!( [
:id => 1046,
:codigo => '6541300',
:descricao => 'Previdência complementar fechada'
] );
			
Cnae.create!( [
:id => 1047,
:codigo => '6542100',
:descricao => 'Previdência complementar aberta'
] );
			
Cnae.create!( [
:id => 1048,
:codigo => '6550200',
:descricao => 'Planos de saúde'
] );
			
Cnae.create!( [
:id => 1049,
:codigo => '6611801',
:descricao => 'Bolsa de valores'
] );
			
Cnae.create!( [
:id => 105,
:codigo => '0312401',
:descricao => 'Pesca de peixes em água doce'
] );
			
Cnae.create!( [
:id => 1050,
:codigo => '6611802',
:descricao => 'Bolsa de mercadorias'
] );
			
Cnae.create!( [
:id => 1051,
:codigo => '6611803',
:descricao => 'Bolsa de mercadorias e futuros'
] );
			
Cnae.create!( [
:id => 1052,
:codigo => '6611804',
:descricao => 'Administração de mercados de balcão organizados'
] );
			
Cnae.create!( [
:id => 1053,
:codigo => '6612601',
:descricao => 'Corretoras de títulos e valores mobiliários'
] );
			
Cnae.create!( [
:id => 1054,
:codigo => '6612602',
:descricao => 'Distribuidoras de títulos e valores mobiliários'
] );
			
Cnae.create!( [
:id => 1055,
:codigo => '6612603',
:descricao => 'Corretoras de câmbio'
] );
			
Cnae.create!( [
:id => 1056,
:codigo => '6612604',
:descricao => 'Corretoras de contratos de mercadorias'
] );
			
Cnae.create!( [
:id => 1057,
:codigo => '6612605',
:descricao => 'Agentes de investimentos em aplicações financeiras'
] );
			
Cnae.create!( [
:id => 1058,
:codigo => '6613400',
:descricao => 'Administração de cartões de crédito'
] );
			
Cnae.create!( [
:id => 1059,
:codigo => '6619301',
:descricao => 'Serviços de liquidação e custódia'
] );
			
Cnae.create!( [
:id => 106,
:codigo => '0312402',
:descricao => 'Pesca de crustáceos e moluscos em água doce'
] );
			
Cnae.create!( [
:id => 1060,
:codigo => '6619302',
:descricao => 'Correspondentes de instituições financeiras'
] );
			
Cnae.create!( [
:id => 1061,
:codigo => '6619303',
:descricao => 'Representações de bancos estrangeiros'
] );
			
Cnae.create!( [
:id => 1062,
:codigo => '6619304',
:descricao => 'Caixas eletrônicos'
] );
			
Cnae.create!( [
:id => 1063,
:codigo => '6619305',
:descricao => 'Operadoras de cartões de débito'
] );
			
Cnae.create!( [
:id => 1064,
:codigo => '6619399',
:descricao => 'Outras atividades auxiliares dos serviços financeiros não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1065,
:codigo => '6621501',
:descricao => 'Peritos e avaliadores de seguros'
] );
			
Cnae.create!( [
:id => 1066,
:codigo => '6621502',
:descricao => 'Auditoria e consultoria atuarial'
] );
			
Cnae.create!( [
:id => 1067,
:codigo => '6622300',
:descricao => 'Corretores e agentes de seguros, de planos de previdência complementar e de saúde'
] );
			
Cnae.create!( [
:id => 1068,
:codigo => '6629100',
:descricao => 'Atividades auxiliares dos seguros, da previdência complementar e dos planos de saúde não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1069,
:codigo => '6630400',
:descricao => 'Atividades de administração de fundos por contrato ou comissão'
] );
			
Cnae.create!( [
:id => 107,
:codigo => '0312403',
:descricao => 'Coleta de outros produtos aquáticos de água doce'
] );
			
Cnae.create!( [
:id => 1070,
:codigo => '6810201',
:descricao => 'Compra e venda de imóveis próprios'
] );
			
Cnae.create!( [
:id => 1071,
:codigo => '6810202',
:descricao => 'Aluguel de imóveis próprios'
] );
			
Cnae.create!( [
:id => 1072,
:codigo => '6810203',
:descricao => 'Loteamento de imóveis próprios'
] );
			
Cnae.create!( [
:id => 1073,
:codigo => '6821801',
:descricao => 'Corretagem na compra e venda e avaliação de imóveis'
] );
			
Cnae.create!( [
:id => 1074,
:codigo => '6821802',
:descricao => 'Corretagem no aluguel de imóveis'
] );
			
Cnae.create!( [
:id => 1075,
:codigo => '6822600',
:descricao => 'Gestão e administração da propriedade imobiliária'
] );
			
Cnae.create!( [
:id => 1076,
:codigo => '6911701',
:descricao => 'Serviços advocatícios'
] );
			
Cnae.create!( [
:id => 1077,
:codigo => '6911702',
:descricao => 'Atividades auxiliares da justiça'
] );
			
Cnae.create!( [
:id => 1078,
:codigo => '6911703',
:descricao => 'Agente de propriedade industrial'
] );
			
Cnae.create!( [
:id => 1079,
:codigo => '6912500',
:descricao => 'Cartórios'
] );
			
Cnae.create!( [
:id => 108,
:codigo => '0312404',
:descricao => 'Atividades de apoio à pesca em água doce'
] );
			
Cnae.create!( [
:id => 1080,
:codigo => '6920601',
:descricao => 'Atividades de contabilidade'
] );
			
Cnae.create!( [
:id => 1081,
:codigo => '6920602',
:descricao => 'Atividades de consultoria e auditoria contábil e tributária'
] );
			
Cnae.create!( [
:id => 1082,
:codigo => '7020400',
:descricao => 'Atividades de consultoria em gestão empresarial, exceto consultoria técnica específica'
] );
			
Cnae.create!( [
:id => 1083,
:codigo => '7111100',
:descricao => 'Serviços de arquitetura'
] );
			
Cnae.create!( [
:id => 1084,
:codigo => '7112000',
:descricao => 'Serviços de engenharia'
] );
			
Cnae.create!( [
:id => 1085,
:codigo => '7119701',
:descricao => 'Serviços de cartografia, topografia e geodésia'
] );
			
Cnae.create!( [
:id => 1086,
:codigo => '7119702',
:descricao => 'Atividades de estudos geológicos'
] );
			
Cnae.create!( [
:id => 1087,
:codigo => '7119703',
:descricao => 'Serviços de desenho técnico relacionados à arquitetura e engenharia'
] );
			
Cnae.create!( [
:id => 1088,
:codigo => '7119704',
:descricao => 'Serviços de perícia técnica relacionados à segurança do trabalho'
] );
			
Cnae.create!( [
:id => 1089,
:codigo => '7119799',
:descricao => 'Atividades técnicas relacionadas à engenharia e arquitetura não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 109,
:codigo => '0321301',
:descricao => 'Criação de peixes em água salgada e salobra'
] );
			
Cnae.create!( [
:id => 1090,
:codigo => '7120100',
:descricao => 'Testes e análises técnicas'
] );
			
Cnae.create!( [
:id => 1091,
:codigo => '7210000',
:descricao => 'Pesquisa e desenvolvimento experimental em ciências físicas e naturais'
] );
			
Cnae.create!( [
:id => 1092,
:codigo => '7220700',
:descricao => 'Pesquisa e desenvolvimento experimental em ciências sociais e humanas'
] );
			
Cnae.create!( [
:id => 1093,
:codigo => '7311400',
:descricao => 'Agências de publicidade'
] );
			
Cnae.create!( [
:id => 1094,
:codigo => '7312200',
:descricao => 'Agenciamento de espaços para publicidade, exceto em veículos de comunicação'
] );
			
Cnae.create!( [
:id => 1095,
:codigo => '7319001',
:descricao => 'Criação de estandes para feiras e exposições'
] );
			
Cnae.create!( [
:id => 1096,
:codigo => '7319002',
:descricao => 'Promoção de vendas'
] );
			
Cnae.create!( [
:id => 1097,
:codigo => '7319003',
:descricao => 'Marketing direto'
] );
			
Cnae.create!( [
:id => 1098,
:codigo => '7319004',
:descricao => 'Consultoria em publicidade'
] );
			
Cnae.create!( [
:id => 1099,
:codigo => '7319099',
:descricao => 'Outras atividades de publicidade não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 11,
:codigo => '0116401',
:descricao => 'Cultivo de amendoim'
] );
			
Cnae.create!( [
:id => 110,
:codigo => '0321302',
:descricao => 'Criação de camarões em água salgada e salobra'
] );
			
Cnae.create!( [
:id => 1100,
:codigo => '7320300',
:descricao => 'Pesquisas de mercado e de opinião pública'
] );
			
Cnae.create!( [
:id => 1101,
:codigo => '7410201',
:descricao => 'Design'
] );
			
Cnae.create!( [
:id => 1102,
:codigo => '7410202',
:descricao => 'Decoração de interiores'
] );
			
Cnae.create!( [
:id => 1103,
:codigo => '7420001',
:descricao => 'Atividades de produção de fotografias, exceto aérea e submarina'
] );
			
Cnae.create!( [
:id => 1104,
:codigo => '7420002',
:descricao => 'Atividades de produção de fotografias aéreas e submarinas'
] );
			
Cnae.create!( [
:id => 1105,
:codigo => '7420003',
:descricao => 'Laboratórios fotográficos'
] );
			
Cnae.create!( [
:id => 1106,
:codigo => '7420004',
:descricao => 'Filmagem de festas e eventos'
] );
			
Cnae.create!( [
:id => 1107,
:codigo => '7420005',
:descricao => 'Serviços de microfilmagem'
] );
			
Cnae.create!( [
:id => 1108,
:codigo => '7490101',
:descricao => 'Serviços de tradução, interpretação e similares'
] );
			
Cnae.create!( [
:id => 1109,
:codigo => '7490102',
:descricao => 'Escafandria e mergulho'
] );
			
Cnae.create!( [
:id => 111,
:codigo => '0321303',
:descricao => 'Criação de ostras e mexilhões em água salgada e salobra'
] );
			
Cnae.create!( [
:id => 1110,
:codigo => '7490103',
:descricao => 'Serviços de agronomia e de consultoria às atividades agrícolas e pecuárias'
] );
			
Cnae.create!( [
:id => 1111,
:codigo => '7490104',
:descricao => 'Atividades de intermediação e agenciamento de serviços e negócios em geral, exceto imobiliários'
] );
			
Cnae.create!( [
:id => 1112,
:codigo => '7490105',
:descricao => 'Agenciamento de profissionais para atividades esportivas, culturais e artísticas'
] );
			
Cnae.create!( [
:id => 1113,
:codigo => '7490199',
:descricao => 'Outras atividades profissionais, científicas e técnicas não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1114,
:codigo => '7500100',
:descricao => 'Atividades veterinárias'
] );
			
Cnae.create!( [
:id => 1115,
:codigo => '7711000',
:descricao => 'Locação de automóveis sem condutor'
] );
			
Cnae.create!( [
:id => 1116,
:codigo => '7719501',
:descricao => 'Locação de embarcações sem tripulação, exceto para fins recreativos'
] );
			
Cnae.create!( [
:id => 1117,
:codigo => '7719502',
:descricao => 'Locação de aeronaves sem tripulação'
] );
			
Cnae.create!( [
:id => 1118,
:codigo => '7719599',
:descricao => 'Locação de outros meios de transporte não especificados anteriormente, sem condutor'
] );
			
Cnae.create!( [
:id => 1119,
:codigo => '7721700',
:descricao => 'Aluguel de equipamentos recreativos e esportivos'
] );
			
Cnae.create!( [
:id => 112,
:codigo => '0321304',
:descricao => 'Criação de peixes ornamentais em água salgada e salobra'
] );
			
Cnae.create!( [
:id => 1120,
:codigo => '7722500',
:descricao => 'Aluguel de fitas de vídeo, DVDs e similares'
] );
			
Cnae.create!( [
:id => 1121,
:codigo => '7723300',
:descricao => 'Aluguel de objetos do vestuário, jóias e acessórios'
] );
			
Cnae.create!( [
:id => 1122,
:codigo => '7729201',
:descricao => 'Aluguel de aparelhos de jogos eletrônicos'
] );
			
Cnae.create!( [
:id => 1123,
:codigo => '7729202',
:descricao => 'Aluguel de móveis, utensílios e aparelhos de uso doméstico e pessoal; instrumentos musicais'
] );
			
Cnae.create!( [
:id => 1124,
:codigo => '7729203',
:descricao => 'Aluguel de material médico'
] );
			
Cnae.create!( [
:id => 1125,
:codigo => '7729299',
:descricao => 'Aluguel de outros objetos pessoais e domésticos não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 1126,
:codigo => '7731400',
:descricao => 'Aluguel de máquinas e equipamentos agrícolas sem operador'
] );
			
Cnae.create!( [
:id => 1127,
:codigo => '7732201',
:descricao => 'Aluguel de máquinas e equipamentos para construção sem operador, exceto andaimes'
] );
			
Cnae.create!( [
:id => 1128,
:codigo => '7732202',
:descricao => 'Aluguel de andaimes'
] );
			
Cnae.create!( [
:id => 1129,
:codigo => '7733100',
:descricao => 'Aluguel de máquinas e equipamentos para escritório'
] );
			
Cnae.create!( [
:id => 113,
:codigo => '0321305',
:descricao => 'Atividades de apoio à aqüicultura em água salgada e salobra'
] );
			
Cnae.create!( [
:id => 1130,
:codigo => '7739001',
:descricao => 'Aluguel de máquinas e equipamentos para extração de minérios e petróleo, sem operador'
] );
			
Cnae.create!( [
:id => 1131,
:codigo => '7739002',
:descricao => 'Aluguel de equipamentos científicos, médicos e hospitalares, sem operador'
] );
			
Cnae.create!( [
:id => 1132,
:codigo => '7739003',
:descricao => 'Aluguel de palcos, coberturas e outras estruturas de uso temporário, exceto andaimes'
] );
			
Cnae.create!( [
:id => 1133,
:codigo => '7739099',
:descricao => 'Aluguel de outras máquinas e equipamentos comerciais e industriais não especificados anteriormente, sem operador'
] );
			
Cnae.create!( [
:id => 1134,
:codigo => '7740300',
:descricao => 'Gestão de ativos intangíveis não-financeiros'
] );
			
Cnae.create!( [
:id => 1135,
:codigo => '7810800',
:descricao => 'Seleção e agenciamento de mão-de-obra'
] );
			
Cnae.create!( [
:id => 1136,
:codigo => '7820500',
:descricao => 'Locação de mão-de-obra temporária'
] );
			
Cnae.create!( [
:id => 1137,
:codigo => '7830200',
:descricao => 'Fornecimento e gestão de recursos humanos para terceiros'
] );
			
Cnae.create!( [
:id => 1138,
:codigo => '7911200',
:descricao => 'Agências de viagens'
] );
			
Cnae.create!( [
:id => 1139,
:codigo => '7912100',
:descricao => 'Operadores turísticos'
] );
			
Cnae.create!( [
:id => 114,
:codigo => '0321399',
:descricao => 'Cultivos e semicultivos da aqüicultura em água salgada e salobra não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 1140,
:codigo => '7990200',
:descricao => 'Serviços de reservas e outros serviços de turismo não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 1141,
:codigo => '8011101',
:descricao => 'Atividades de vigilância e segurança privada'
] );
			
Cnae.create!( [
:id => 1142,
:codigo => '8011102',
:descricao => 'Serviços de adestramento de cães de guarda'
] );
			
Cnae.create!( [
:id => 1143,
:codigo => '8012900',
:descricao => 'Atividades de transporte de valores'
] );
			
Cnae.create!( [
:id => 1144,
:codigo => '8020000',
:descricao => 'Atividades de monitoramento de sistemas de segurança'
] );
			
Cnae.create!( [
:id => 1145,
:codigo => '8030700',
:descricao => 'Atividades de investigação particular'
] );
			
Cnae.create!( [
:id => 1146,
:codigo => '8111700',
:descricao => 'Serviços combinados para apoio a edifícios, exceto condomínios prediais'
] );
			
Cnae.create!( [
:id => 1147,
:codigo => '8112500',
:descricao => 'Condomínios prediais'
] );
			
Cnae.create!( [
:id => 1148,
:codigo => '8121400',
:descricao => 'Limpeza em prédios e em domicílios'
] );
			
Cnae.create!( [
:id => 1149,
:codigo => '8122200',
:descricao => 'Imunização e controle de pragas urbanas'
] );
			
Cnae.create!( [
:id => 115,
:codigo => '0322101',
:descricao => 'Criação de peixes em água doce'
] );
			
Cnae.create!( [
:id => 1150,
:codigo => '8129000',
:descricao => 'Atividades de limpeza não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1151,
:codigo => '8130300',
:descricao => 'Atividades paisagísticas'
] );
			
Cnae.create!( [
:id => 1152,
:codigo => '8211300',
:descricao => 'Serviços combinados de escritório e apoio administrativo'
] );
			
Cnae.create!( [
:id => 1153,
:codigo => '8219901',
:descricao => 'Fotocópias'
] );
			
Cnae.create!( [
:id => 1154,
:codigo => '8219999',
:descricao => 'Preparação de documentos e serviços especializados de apoio administrativo não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 1155,
:codigo => '8220200',
:descricao => 'Atividades de teleatendimento'
] );
			
Cnae.create!( [
:id => 1156,
:codigo => '8230001',
:descricao => 'Serviços de organização de feiras, congressos, exposições e festas'
] );
			
Cnae.create!( [
:id => 1157,
:codigo => '8230002',
:descricao => 'Casas de festas e eventos'
] );
			
Cnae.create!( [
:id => 1158,
:codigo => '8291100',
:descricao => 'Atividades de cobrança e informações cadastrais'
] );
			
Cnae.create!( [
:id => 1159,
:codigo => '8292000',
:descricao => 'Envasamento e empacotamento sob contrato'
] );
			
Cnae.create!( [
:id => 116,
:codigo => '0322102',
:descricao => 'Criação de camarões em água doce'
] );
			
Cnae.create!( [
:id => 1160,
:codigo => '8299701',
:descricao => 'Medição de consumo de energia elétrica, gás e água'
] );
			
Cnae.create!( [
:id => 1161,
:codigo => '8299702',
:descricao => 'Emissão de vales-alimentação, vales-transporte e similares'
] );
			
Cnae.create!( [
:id => 1162,
:codigo => '8299703',
:descricao => 'Serviços de gravação de carimbos, exceto confecção'
] );
			
Cnae.create!( [
:id => 1163,
:codigo => '8299704',
:descricao => 'Leiloeiros independentes'
] );
			
Cnae.create!( [
:id => 1164,
:codigo => '8299705',
:descricao => 'Serviços de levantamento de fundos sob contrato'
] );
			
Cnae.create!( [
:id => 1165,
:codigo => '8299706',
:descricao => 'Casas lotéricas'
] );
			
Cnae.create!( [
:id => 1166,
:codigo => '8299707',
:descricao => 'Salas de acesso à internet'
] );
			
Cnae.create!( [
:id => 1167,
:codigo => '8299799',
:descricao => 'Outras atividades de serviços prestados principalmente às empresas não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1168,
:codigo => '8411600',
:descricao => 'Administração pública em geral'
] );
			
Cnae.create!( [
:id => 1169,
:codigo => '8412400',
:descricao => 'Regulação das atividades de saúde, educação, serviços culturais e outros serviços sociais'
] );
			
Cnae.create!( [
:id => 117,
:codigo => '0322103',
:descricao => 'Criação de ostras e mexilhões em água doce'
] );
			
Cnae.create!( [
:id => 1170,
:codigo => '8413200',
:descricao => 'Regulação das atividades econômicas'
] );
			
Cnae.create!( [
:id => 1171,
:codigo => '8421300',
:descricao => 'Relações exteriores'
] );
			
Cnae.create!( [
:id => 1172,
:codigo => '8422100',
:descricao => 'Defesa'
] );
			
Cnae.create!( [
:id => 1173,
:codigo => '8423000',
:descricao => 'Justiça'
] );
			
Cnae.create!( [
:id => 1174,
:codigo => '8424800',
:descricao => 'Segurança e ordem pública'
] );
			
Cnae.create!( [
:id => 1175,
:codigo => '8425600',
:descricao => 'Defesa Civil'
] );
			
Cnae.create!( [
:id => 1176,
:codigo => '8430200',
:descricao => 'Seguridade social obrigatória'
] );
			
Cnae.create!( [
:id => 1177,
:codigo => '8511200',
:descricao => 'Educação infantil - creche'
] );
			
Cnae.create!( [
:id => 1178,
:codigo => '8512100',
:descricao => 'Educação infantil - pré-escola'
] );
			
Cnae.create!( [
:id => 1179,
:codigo => '8513900',
:descricao => 'Ensino fundamental'
] );
			
Cnae.create!( [
:id => 118,
:codigo => '0322104',
:descricao => 'Criação de peixes ornamentais em água doce'
] );
			
Cnae.create!( [
:id => 1180,
:codigo => '8520100',
:descricao => 'Ensino médio'
] );
			
Cnae.create!( [
:id => 1181,
:codigo => '8531700',
:descricao => 'Educação superior - graduação'
] );
			
Cnae.create!( [
:id => 1182,
:codigo => '8532500',
:descricao => 'Educação superior - graduação e pós-graduação'
] );
			
Cnae.create!( [
:id => 1183,
:codigo => '8533300',
:descricao => 'Educação superior - pós-graduação e extensão'
] );
			
Cnae.create!( [
:id => 1184,
:codigo => '8541400',
:descricao => 'Educação profissional de nível técnico'
] );
			
Cnae.create!( [
:id => 1185,
:codigo => '8542200',
:descricao => 'Educação profissional de nível tecnológico'
] );
			
Cnae.create!( [
:id => 1186,
:codigo => '8550301',
:descricao => 'Administração de caixas escolares'
] );
			
Cnae.create!( [
:id => 1187,
:codigo => '8550302',
:descricao => 'Atividades de apoio à educação, exceto caixas escolares'
] );
			
Cnae.create!( [
:id => 1188,
:codigo => '8591100',
:descricao => 'Ensino de esportes'
] );
			
Cnae.create!( [
:id => 1189,
:codigo => '8592901',
:descricao => 'Ensino de dança'
] );
			
Cnae.create!( [
:id => 119,
:codigo => '0322105',
:descricao => 'Ranicultura'
] );
			
Cnae.create!( [
:id => 1190,
:codigo => '8592902',
:descricao => 'Ensino de artes cênicas, exceto dança'
] );
			
Cnae.create!( [
:id => 1191,
:codigo => '8592903',
:descricao => 'Ensino de música'
] );
			
Cnae.create!( [
:id => 1192,
:codigo => '8592999',
:descricao => 'Ensino de arte e cultura não especificado anteriormente'
] );
			
Cnae.create!( [
:id => 1193,
:codigo => '8593700',
:descricao => 'Ensino de idiomas'
] );
			
Cnae.create!( [
:id => 1194,
:codigo => '8599601',
:descricao => 'Formação de condutores'
] );
			
Cnae.create!( [
:id => 1195,
:codigo => '8599602',
:descricao => 'Cursos de pilotagem'
] );
			
Cnae.create!( [
:id => 1196,
:codigo => '8599603',
:descricao => 'Treinamento em informática'
] );
			
Cnae.create!( [
:id => 1197,
:codigo => '8599604',
:descricao => 'Treinamento em desenvolvimento profissional e gerencial'
] );
			
Cnae.create!( [
:id => 1198,
:codigo => '8599605',
:descricao => 'Cursos preparatórios para concursos'
] );
			
Cnae.create!( [
:id => 1199,
:codigo => '8599699',
:descricao => 'Outras atividades de ensino não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 12,
:codigo => '0116402',
:descricao => 'Cultivo de girassol'
] );
			
Cnae.create!( [
:id => 120,
:codigo => '0322106',
:descricao => 'Criação de jacaré'
] );
			
Cnae.create!( [
:id => 1200,
:codigo => '8610101',
:descricao => 'Atividades de atendimento hospitalar, exceto pronto-socorro e unidades para atendimento a urgências'
] );
			
Cnae.create!( [
:id => 1201,
:codigo => '8610102',
:descricao => 'Atividades de atendimento em pronto-socorro e unidades hospitalares para atendimento a urgências'
] );
			
Cnae.create!( [
:id => 1202,
:codigo => '8621601',
:descricao => 'UTI móvel'
] );
			
Cnae.create!( [
:id => 1203,
:codigo => '8621602',
:descricao => 'Serviços móveis de atendimento a urgências, exceto por UTI móvel'
] );
			
Cnae.create!( [
:id => 1204,
:codigo => '8622400',
:descricao => 'Serviços de remoção de pacientes, exceto os serviços móveis de atendimento a urgências'
] );
			
Cnae.create!( [
:id => 1205,
:codigo => '8630501',
:descricao => 'Atividade médica ambulatorial com recursos para realização de procedimentos cirúrgicos'
] );
			
Cnae.create!( [
:id => 1206,
:codigo => '8630502',
:descricao => 'Atividade médica ambulatorial com recursos para realização de exames complementares'
] );
			
Cnae.create!( [
:id => 1207,
:codigo => '8630503',
:descricao => 'Atividade médica ambulatorial restrita a consultas'
] );
			
Cnae.create!( [
:id => 1208,
:codigo => '8630504',
:descricao => 'Atividade odontológica'
] );
			
Cnae.create!( [
:id => 1209,
:codigo => '8630506',
:descricao => 'Serviços de vacinação e imunização humana'
] );
			
Cnae.create!( [
:id => 121,
:codigo => '0322107',
:descricao => 'Atividades de apoio à aqüicultura em água doce'
] );
			
Cnae.create!( [
:id => 1210,
:codigo => '8630507',
:descricao => 'Atividades de reprodução humana assistida'
] );
			
Cnae.create!( [
:id => 1211,
:codigo => '8630599',
:descricao => 'Atividades de atenção ambulatorial não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1212,
:codigo => '8640201',
:descricao => 'Laboratórios de anatomia patológica e citológica'
] );
			
Cnae.create!( [
:id => 1213,
:codigo => '8640202',
:descricao => 'Laboratórios clínicos'
] );
			
Cnae.create!( [
:id => 1214,
:codigo => '8640203',
:descricao => 'Serviços de diálise e nefrologia'
] );
			
Cnae.create!( [
:id => 1215,
:codigo => '8640204',
:descricao => 'Serviços de tomografia'
] );
			
Cnae.create!( [
:id => 1216,
:codigo => '8640205',
:descricao => 'Serviços de diagnóstico por imagem com uso de radiação ionizante, exceto tomografia'
] );
			
Cnae.create!( [
:id => 1217,
:codigo => '8640206',
:descricao => 'Serviços de ressonância magnética'
] );
			
Cnae.create!( [
:id => 1218,
:codigo => '8640207',
:descricao => 'Serviços de diagnóstico por imagem sem uso de radiação ionizante, exceto ressonância magnética'
] );
			
Cnae.create!( [
:id => 1219,
:codigo => '8640208',
:descricao => 'Serviços de diagnóstico por registro gráfico - ECG, EEG e outros exames análogos'
] );
			
Cnae.create!( [
:id => 122,
:codigo => '0322199',
:descricao => 'Cultivos e semicultivos da aqüicultura em água doce não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 1220,
:codigo => '8640209',
:descricao => 'Serviços de diagnóstico por métodos ópticos - endoscopia e outros exames análogos'
] );
			
Cnae.create!( [
:id => 1221,
:codigo => '8640210',
:descricao => 'Serviços de quimioterapia'
] );
			
Cnae.create!( [
:id => 1222,
:codigo => '8640211',
:descricao => 'Serviços de radioterapia'
] );
			
Cnae.create!( [
:id => 1223,
:codigo => '8640212',
:descricao => 'Serviços de hemoterapia'
] );
			
Cnae.create!( [
:id => 1224,
:codigo => '8640213',
:descricao => 'Serviços de litotripsia'
] );
			
Cnae.create!( [
:id => 1225,
:codigo => '8640214',
:descricao => 'Serviços de bancos de células e tecidos humanos'
] );
			
Cnae.create!( [
:id => 1226,
:codigo => '8640299',
:descricao => 'Atividades de serviços de complementação diagnóstica e terapêutica não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1227,
:codigo => '8650001',
:descricao => 'Atividades de enfermagem'
] );
			
Cnae.create!( [
:id => 1228,
:codigo => '8650002',
:descricao => 'Atividades de profissionais da nutrição'
] );
			
Cnae.create!( [
:id => 1229,
:codigo => '8650003',
:descricao => 'Atividades de psicologia e psicanálise'
] );
			
Cnae.create!( [
:id => 123,
:codigo => '0500301',
:descricao => 'Extração de carvão mineral'
] );
			
Cnae.create!( [
:id => 1230,
:codigo => '8650004',
:descricao => 'Atividades de fisioterapia'
] );
			
Cnae.create!( [
:id => 1231,
:codigo => '8650005',
:descricao => 'Atividades de terapia ocupacional'
] );
			
Cnae.create!( [
:id => 1232,
:codigo => '8650006',
:descricao => 'Atividades de fonoaudiologia'
] );
			
Cnae.create!( [
:id => 1233,
:codigo => '8650007',
:descricao => 'Atividades de terapia de nutrição enteral e parenteral'
] );
			
Cnae.create!( [
:id => 1234,
:codigo => '8650099',
:descricao => 'Atividades de profissionais da área de saúde não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1235,
:codigo => '8660700',
:descricao => 'Atividades de apoio à gestão de saúde'
] );
			
Cnae.create!( [
:id => 1236,
:codigo => '8690901',
:descricao => 'Atividades de práticas integrativas e complementares em saúde humana'
] );
			
Cnae.create!( [
:id => 1237,
:codigo => '8690902',
:descricao => 'Atividades de bancos de leite humano'
] );
			
Cnae.create!( [
:id => 1238,
:codigo => '8690903',
:descricao => 'Atividades de acupuntura'
] );
			
Cnae.create!( [
:id => 1239,
:codigo => '8690904',
:descricao => 'Atividades de podologia'
] );
			
Cnae.create!( [
:id => 124,
:codigo => '0500302',
:descricao => 'Beneficiamento de carvão mineral'
] );
			
Cnae.create!( [
:id => 1240,
:codigo => '8690999',
:descricao => 'Outras atividades de atenção à saúde humana não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1241,
:codigo => '8711501',
:descricao => 'Clínicas e residências geriátricas'
] );
			
Cnae.create!( [
:id => 1242,
:codigo => '8711502',
:descricao => 'Instituições de longa permanência para idosos'
] );
			
Cnae.create!( [
:id => 1243,
:codigo => '8711503',
:descricao => 'Atividades de assistência a deficientes físicos, imunodeprimidos e convalescentes'
] );
			
Cnae.create!( [
:id => 1244,
:codigo => '8711504',
:descricao => 'Centros de apoio a pacientes com câncer e com AIDS'
] );
			
Cnae.create!( [
:id => 1245,
:codigo => '8711505',
:descricao => 'Condomínios residenciais para idosos'
] );
			
Cnae.create!( [
:id => 1246,
:codigo => '8712300',
:descricao => 'Atividades de fornecimento de infra-estrutura de apoio e assistência a paciente no domicílio'
] );
			
Cnae.create!( [
:id => 1247,
:codigo => '8720401',
:descricao => 'Atividades de centros de assistência psicossocial'
] );
			
Cnae.create!( [
:id => 1248,
:codigo => '8720499',
:descricao => 'Atividades de assistência psicossocial e à saúde a portadores de distúrbios psíquicos, deficiência mental e dependência química não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1249,
:codigo => '8730101',
:descricao => 'Orfanatos'
] );
			
Cnae.create!( [
:id => 125,
:codigo => '0600001',
:descricao => 'Extração de petróleo e gás natural'
] );
			
Cnae.create!( [
:id => 1250,
:codigo => '8730102',
:descricao => 'Albergues assistenciais'
] );
			
Cnae.create!( [
:id => 1251,
:codigo => '8730199',
:descricao => 'Atividades de assistência social prestadas em residências coletivas e particulares não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1252,
:codigo => '8800600',
:descricao => 'Serviços de assistência social sem alojamento'
] );
			
Cnae.create!( [
:id => 1253,
:codigo => '9001901',
:descricao => 'Produção teatral'
] );
			
Cnae.create!( [
:id => 1254,
:codigo => '9001902',
:descricao => 'Produção musical'
] );
			
Cnae.create!( [
:id => 1255,
:codigo => '9001903',
:descricao => 'Produção de espetáculos de dança'
] );
			
Cnae.create!( [
:id => 1256,
:codigo => '9001904',
:descricao => 'Produção de espetáculos circenses, de marionetes e similares'
] );
			
Cnae.create!( [
:id => 1257,
:codigo => '9001905',
:descricao => 'Produção de espetáculos de rodeios, vaquejadas e similares'
] );
			
Cnae.create!( [
:id => 1258,
:codigo => '9001906',
:descricao => 'Atividades de sonorização e de iluminação'
] );
			
Cnae.create!( [
:id => 1259,
:codigo => '9001999',
:descricao => 'Artes cênicas, espetáculos e atividades complementares não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 126,
:codigo => '0600002',
:descricao => 'Extração e beneficiamento de xisto'
] );
			
Cnae.create!( [
:id => 1260,
:codigo => '9002701',
:descricao => 'Atividades de artistas plásticos, jornalistas independentes e escritores'
] );
			
Cnae.create!( [
:id => 1261,
:codigo => '9002702',
:descricao => 'Restauração de obras de arte'
] );
			
Cnae.create!( [
:id => 1262,
:codigo => '9003500',
:descricao => 'Gestão de espaços para artes cênicas, espetáculos e outras atividades artísticas'
] );
			
Cnae.create!( [
:id => 1263,
:codigo => '9101500',
:descricao => 'Atividades de bibliotecas e arquivos'
] );
			
Cnae.create!( [
:id => 1264,
:codigo => '9102301',
:descricao => 'Atividades de museus e de exploração de lugares e prédios históricos e atrações similares'
] );
			
Cnae.create!( [
:id => 1265,
:codigo => '9102302',
:descricao => 'Restauração e conservação de lugares e prédios históricos'
] );
			
Cnae.create!( [
:id => 1266,
:codigo => '9103100',
:descricao => 'Atividades de jardins botânicos, zoológicos, parques nacionais, reservas ecológicas e áreas de proteção ambiental'
] );
			
Cnae.create!( [
:id => 1267,
:codigo => '9200301',
:descricao => 'Casas de bingo'
] );
			
Cnae.create!( [
:id => 1268,
:codigo => '9200302',
:descricao => 'Exploração de apostas em corridas de cavalos'
] );
			
Cnae.create!( [
:id => 1269,
:codigo => '9200399',
:descricao => 'Exploração de jogos de azar e apostas não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 127,
:codigo => '0600003',
:descricao => 'Extração e beneficiamento de areias betuminosas'
] );
			
Cnae.create!( [
:id => 1270,
:codigo => '9311500',
:descricao => 'Gestão de instalações de esportes'
] );
			
Cnae.create!( [
:id => 1271,
:codigo => '9312300',
:descricao => 'Clubes sociais, esportivos e similares'
] );
			
Cnae.create!( [
:id => 1272,
:codigo => '9313100',
:descricao => 'Atividades de condicionamento físico'
] );
			
Cnae.create!( [
:id => 1273,
:codigo => '9319101',
:descricao => 'Produção e promoção de eventos esportivos'
] );
			
Cnae.create!( [
:id => 1274,
:codigo => '9319199',
:descricao => 'Outras atividades esportivas não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1275,
:codigo => '9321200',
:descricao => 'Parques de diversão e parques temáticos'
] );
			
Cnae.create!( [
:id => 1276,
:codigo => '9329801',
:descricao => 'Discotecas, danceterias, salões de dança e similares'
] );
			
Cnae.create!( [
:id => 1277,
:codigo => '9329802',
:descricao => 'Exploração de boliches'
] );
			
Cnae.create!( [
:id => 1278,
:codigo => '9329803',
:descricao => 'Exploração de jogos de sinuca, bilhar e similares'
] );
			
Cnae.create!( [
:id => 1279,
:codigo => '9329804',
:descricao => 'Exploração de jogos eletrônicos recreativos'
] );
			
Cnae.create!( [
:id => 128,
:codigo => '0710301',
:descricao => 'Extração de minério de ferro'
] );
			
Cnae.create!( [
:id => 1280,
:codigo => '9329899',
:descricao => 'Outras atividades de recreação e lazer não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1281,
:codigo => '9411100',
:descricao => 'Atividades de organizações associativas patronais e empresariais'
] );
			
Cnae.create!( [
:id => 1282,
:codigo => '9412000',
:descricao => 'Atividades de organizações associativas profissionais'
] );
			
Cnae.create!( [
:id => 1283,
:codigo => '9420100',
:descricao => 'Atividades de organizações sindicais'
] );
			
Cnae.create!( [
:id => 1284,
:codigo => '9430800',
:descricao => 'Atividades de associações de defesa de direitos sociais'
] );
			
Cnae.create!( [
:id => 1285,
:codigo => '9491000',
:descricao => 'Atividades de organizações religiosas'
] );
			
Cnae.create!( [
:id => 1286,
:codigo => '9492800',
:descricao => 'Atividades de organizações políticas'
] );
			
Cnae.create!( [
:id => 1287,
:codigo => '9493600',
:descricao => 'Atividades de organizações associativas ligadas à cultura e à arte'
] );
			
Cnae.create!( [
:id => 1288,
:codigo => '9499500',
:descricao => 'Atividades associativas não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1289,
:codigo => '9511800',
:descricao => 'Reparação e manutenção de computadores e de equipamentos periféricos'
] );
			
Cnae.create!( [
:id => 129,
:codigo => '0710302',
:descricao => 'Pelotização, sinterização e outros beneficiamentos de minério de ferro'
] );
			
Cnae.create!( [
:id => 1290,
:codigo => '9512600',
:descricao => 'Reparação e manutenção de equipamentos de comunicação'
] );
			
Cnae.create!( [
:id => 1291,
:codigo => '9521500',
:descricao => 'Reparação e manutenção de equipamentos eletroeletrônicos de uso pessoal e doméstico'
] );
			
Cnae.create!( [
:id => 1292,
:codigo => '9529101',
:descricao => 'Reparação de calçados, bolsas e artigos de viagem'
] );
			
Cnae.create!( [
:id => 1293,
:codigo => '9529102',
:descricao => 'Chaveiros'
] );
			
Cnae.create!( [
:id => 1294,
:codigo => '9529103',
:descricao => 'Reparação de relógios'
] );
			
Cnae.create!( [
:id => 1295,
:codigo => '9529104',
:descricao => 'Reparação de bicicletas, triciclos e outros veículos não-motorizados'
] );
			
Cnae.create!( [
:id => 1296,
:codigo => '9529105',
:descricao => 'Reparação de artigos do mobiliário'
] );
			
Cnae.create!( [
:id => 1297,
:codigo => '9529106',
:descricao => 'Reparação de jóias'
] );
			
Cnae.create!( [
:id => 1298,
:codigo => '9529199',
:descricao => 'Reparação e manutenção de outros objetos e equipamentos pessoais e domésticos não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 1299,
:codigo => '9601701',
:descricao => 'Lavanderias'
] );
			
Cnae.create!( [
:id => 13,
:codigo => '0116403',
:descricao => 'Cultivo de mamona'
] );
			
Cnae.create!( [
:id => 130,
:codigo => '0721901',
:descricao => 'Extração de minério de alumínio'
] );
			
Cnae.create!( [
:id => 1300,
:codigo => '9601702',
:descricao => 'Tinturarias'
] );
			
Cnae.create!( [
:id => 1301,
:codigo => '9601703',
:descricao => 'Toalheiros'
] );
			
Cnae.create!( [
:id => 1302,
:codigo => '9602501',
:descricao => 'Cabeleireiros'
] );
			
Cnae.create!( [
:id => 1303,
:codigo => '9602502',
:descricao => 'Atividades de estética e outros serviços de cuidados com a beleza'
] );
			
Cnae.create!( [
:id => 1304,
:codigo => '9603301',
:descricao => 'Gestão e manutenção de cemitérios'
] );
			
Cnae.create!( [
:id => 1305,
:codigo => '9603302',
:descricao => 'Serviços de cremação'
] );
			
Cnae.create!( [
:id => 1306,
:codigo => '9603303',
:descricao => 'Serviços de sepultamento'
] );
			
Cnae.create!( [
:id => 1307,
:codigo => '9603304',
:descricao => 'Serviços de funerárias'
] );
			
Cnae.create!( [
:id => 1308,
:codigo => '9603305',
:descricao => 'Serviços de somatoconservação'
] );
			
Cnae.create!( [
:id => 1309,
:codigo => '9603399',
:descricao => 'Atividades funerárias e serviços relacionados não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 131,
:codigo => '0721902',
:descricao => 'Beneficiamento de minério de alumínio'
] );
			
Cnae.create!( [
:id => 1310,
:codigo => '9609202',
:descricao => 'Agências matrimoniais'
] );
			
Cnae.create!( [
:id => 1311,
:codigo => '9609203',
:descricao => 'Alojamento, higiene e embelezamento de animais'
] );
			
Cnae.create!( [
:id => 1312,
:codigo => '9609204',
:descricao => 'Exploração de máquinas de serviços pessoais acionadas por moeda'
] );
			
Cnae.create!( [
:id => 1313,
:codigo => '9609205',
:descricao => 'Atividades de sauna e banhos'
] );
			
Cnae.create!( [
:id => 1314,
:codigo => '9609206',
:descricao => 'Serviços de tatuagem e colocação de piercing'
] );
			
Cnae.create!( [
:id => 1315,
:codigo => '9609299',
:descricao => 'Outras atividades de serviços pessoais não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 1316,
:codigo => '9700500',
:descricao => 'Serviços domésticos'
] );
			
Cnae.create!( [
:id => 1317,
:codigo => '9900800',
:descricao => 'Organismos internacionais e outras instituições extraterritoriais'
] );
			
Cnae.create!( [
:id => 132,
:codigo => '0722701',
:descricao => 'Extração de minério de estanho'
] );
			
Cnae.create!( [
:id => 133,
:codigo => '0722702',
:descricao => 'Beneficiamento de minério de estanho'
] );
			
Cnae.create!( [
:id => 134,
:codigo => '0723501',
:descricao => 'Extração de minério de manganês'
] );
			
Cnae.create!( [
:id => 135,
:codigo => '0723502',
:descricao => 'Beneficiamento de minério de manganês'
] );
			
Cnae.create!( [
:id => 136,
:codigo => '0724301',
:descricao => 'Extração de minério de metais preciosos'
] );
			
Cnae.create!( [
:id => 137,
:codigo => '0724302',
:descricao => 'Beneficiamento de minério de metais preciosos'
] );
			
Cnae.create!( [
:id => 138,
:codigo => '0725100',
:descricao => 'Extração de minerais radioativos'
] );
			
Cnae.create!( [
:id => 139,
:codigo => '0729401',
:descricao => 'Extração de minérios de nióbio e titânio'
] );
			
Cnae.create!( [
:id => 14,
:codigo => '0116499',
:descricao => 'Cultivo de outras oleaginosas de lavoura temporária não especificadas anteriormente'
] );
			
Cnae.create!( [
:id => 140,
:codigo => '0729402',
:descricao => 'Extração de minério de tungstênio'
] );
			
Cnae.create!( [
:id => 141,
:codigo => '0729403',
:descricao => 'Extração de minério de níquel'
] );
			
Cnae.create!( [
:id => 142,
:codigo => '0729404',
:descricao => 'Extração de minérios de cobre, chumbo, zinco e outros minerais metálicos não-ferrosos não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 143,
:codigo => '0729405',
:descricao => 'Beneficiamento de minérios de cobre, chumbo, zinco e outros minerais metálicos não-ferrosos não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 144,
:codigo => '0810001',
:descricao => 'Extração de ardósia e beneficiamento associado'
] );
			
Cnae.create!( [
:id => 145,
:codigo => '0810002',
:descricao => 'Extração de granito e beneficiamento associado'
] );
			
Cnae.create!( [
:id => 146,
:codigo => '0810003',
:descricao => 'Extração de mármore e beneficiamento associado'
] );
			
Cnae.create!( [
:id => 147,
:codigo => '0810004',
:descricao => 'Extração de calcário e dolomita e beneficiamento associado'
] );
			
Cnae.create!( [
:id => 148,
:codigo => '0810005',
:descricao => 'Extração de gesso e caulim'
] );
			
Cnae.create!( [
:id => 149,
:codigo => '0810006',
:descricao => 'Extração de areia, cascalho ou pedregulho e beneficiamento associado'
] );
			
Cnae.create!( [
:id => 15,
:codigo => '0119901',
:descricao => 'Cultivo de abacaxi'
] );
			
Cnae.create!( [
:id => 150,
:codigo => '0810007',
:descricao => 'Extração de argila e beneficiamento associado'
] );
			
Cnae.create!( [
:id => 151,
:codigo => '0810008',
:descricao => 'Extração de saibro e beneficiamento associado'
] );
			
Cnae.create!( [
:id => 152,
:codigo => '0810009',
:descricao => 'Extração de basalto e beneficiamento associado'
] );
			
Cnae.create!( [
:id => 153,
:codigo => '0810010',
:descricao => 'Beneficiamento de gesso e caulim associado à extração'
] );
			
Cnae.create!( [
:id => 154,
:codigo => '0810099',
:descricao => 'Extração e britamento de pedras e outros materiais para construção e beneficiamento associado'
] );
			
Cnae.create!( [
:id => 155,
:codigo => '0891600',
:descricao => 'Extração de minerais para fabricação de adubos, fertilizantes e outros produtos químicos'
] );
			
Cnae.create!( [
:id => 156,
:codigo => '0892401',
:descricao => 'Extração de sal marinho'
] );
			
Cnae.create!( [
:id => 157,
:codigo => '0892402',
:descricao => 'Extração de sal-gema'
] );
			
Cnae.create!( [
:id => 158,
:codigo => '0892403',
:descricao => 'Refino e outros tratamentos do sal'
] );
			
Cnae.create!( [
:id => 159,
:codigo => '0893200',
:descricao => 'Extração de gemas (pedras preciosas e semipreciosas)'
] );
			
Cnae.create!( [
:id => 16,
:codigo => '0119902',
:descricao => 'Cultivo de alho'
] );
			
Cnae.create!( [
:id => 160,
:codigo => '0899101',
:descricao => 'Extração de grafita'
] );
			
Cnae.create!( [
:id => 161,
:codigo => '0899102',
:descricao => 'Extração de quartzo'
] );
			
Cnae.create!( [
:id => 162,
:codigo => '0899103',
:descricao => 'Extração de amianto'
] );
			
Cnae.create!( [
:id => 163,
:codigo => '0899199',
:descricao => 'Extração de outros minerais não-metálicos não especificados anteriormente'
] );
			
Cnae.create!( [
:id => 164,
:codigo => '0910600',
:descricao => 'Atividades de apoio à extração de petróleo e gás natural'
] );
			
Cnae.create!( [
:id => 165,
:codigo => '0990401',
:descricao => 'Atividades de apoio à extração de minério de ferro'
] );
			
Cnae.create!( [
:id => 166,
:codigo => '0990402',
:descricao => 'Atividades de apoio à extração de minerais metálicos não-ferrosos'
] );
			
Cnae.create!( [
:id => 167,
:codigo => '0990403',
:descricao => 'Atividades de apoio à extração de minerais não-metálicos'
] );
			
Cnae.create!( [
:id => 168,
:codigo => '1011201',
:descricao => 'Frigorífico - abate de bovinos'
] );
			
Cnae.create!( [
:id => 169,
:codigo => '1011202',
:descricao => 'Frigorífico - abate de eqüinos'
] );
			
Cnae.create!( [
:id => 17,
:codigo => '0119903',
:descricao => 'Cultivo de batata-inglesa'
] );
			
Cnae.create!( [
:id => 170,
:codigo => '1011203',
:descricao => 'Frigorífico - abate de ovinos e caprinos'
] );
			
Cnae.create!( [
:id => 171,
:codigo => '1011204',
:descricao => 'Frigorífico - abate de bufalinos'
] );
			
Cnae.create!( [
:id => 172,
:codigo => '1011205',
:descricao => 'Matadouro - abate de reses sob contrato, exceto abate de suínos'
] );

Cnae.create!( [
:id => 173,
:codigo => '1012101',
:descricao => 'Abate de aves'
] );


			
Cnae.create!( [
:id => 174,
:codigo => '1012102',
:descricao => 'Abate de pequenos animais'
] );


			
Cnae.create!( [
:id => 175,
:codigo => '1012103',
:descricao => 'Frigorífico - abate de suínos'
] );


			
Cnae.create!( [
:id => 176,
:codigo => '1012104',
:descricao => 'Matadouro - abate de suínos sob contrato'
] );


			
Cnae.create!( [
:id => 177,
:codigo => '1013901',
:descricao => 'Fabricação de produtos de carne'
] );


			
Cnae.create!( [
:id => 178,
:codigo => '1013902',
:descricao => 'Preparação de subprodutos do abate'
] );


			
Cnae.create!( [
:id => 179,
:codigo => '1020101',
:descricao => 'Preservação de peixes, crustáceos e moluscos'
] );


			
Cnae.create!( [
:id => 18,
:codigo => '0119904',
:descricao => 'Cultivo de cebola'
] );


			
Cnae.create!( [
:id => 180,
:codigo => '1020102',
:descricao => 'Fabricação de conservas de peixes, crustáceos e moluscos'
] );


			
Cnae.create!( [
:id => 181,
:codigo => '1031700',
:descricao => 'Fabricação de conservas de frutas'
] );


			
Cnae.create!( [
:id => 182,
:codigo => '1032501',
:descricao => 'Fabricação de conservas de palmito'
] );


			
Cnae.create!( [
:id => 183,
:codigo => '1032599',
:descricao => 'Fabricação de conservas de legumes e outros vegetais, exceto palmito'
] );


			
Cnae.create!( [
:id => 184,
:codigo => '1033301',
:descricao => 'Fabricação de sucos concentrados de frutas, hortaliças e legumes'
] );


			
Cnae.create!( [
:id => 185,
:codigo => '1033302',
:descricao => 'Fabricação de sucos de frutas, hortaliças e legumes, exceto concentrados'
] );


			
Cnae.create!( [
:id => 186,
:codigo => '1041400',
:descricao => 'Fabricação de óleos vegetais em bruto, exceto óleo de milho'
] );


			
Cnae.create!( [
:id => 187,
:codigo => '1042200',
:descricao => 'Fabricação de óleos vegetais refinados, exceto óleo de milho'
] );


			
Cnae.create!( [
:id => 188,
:codigo => '1043100',
:descricao => 'Fabricação de margarina e outras gorduras vegetais e de óleos não-comestíveis de animais'
] );


			
Cnae.create!( [
:id => 189,
:codigo => '1051100',
:descricao => 'Preparação do leite'
] );


			
Cnae.create!( [
:id => 19,
:codigo => '0119905',
:descricao => 'Cultivo de feijão'
] );


			
Cnae.create!( [
:id => 190,
:codigo => '1052000',
:descricao => 'Fabricação de laticínios'
] );


			
Cnae.create!( [
:id => 191,
:codigo => '1053800',
:descricao => 'Fabricação de sorvetes e outros gelados comestíveis'
] );


			
Cnae.create!( [
:id => 192,
:codigo => '1061901',
:descricao => 'Beneficiamento de arroz'
] );


			
Cnae.create!( [
:id => 193,
:codigo => '1061902',
:descricao => 'Fabricação de produtos do arroz'
] );


			
Cnae.create!( [
:id => 194,
:codigo => '1062700',
:descricao => 'Moagem de trigo e fabricação de derivados'
] );


			
Cnae.create!( [
:id => 195,
:codigo => '1063500',
:descricao => 'Fabricação de farinha de mandioca e derivados'
] );


			
Cnae.create!( [
:id => 196,
:codigo => '1064300',
:descricao => 'Fabricação de farinha de milho e derivados, exceto óleos de milho'
] );


			
Cnae.create!( [
:id => 197,
:codigo => '1065101',
:descricao => 'Fabricação de amidos e féculas de vegetais'
] );


			
Cnae.create!( [
:id => 198,
:codigo => '1065102',
:descricao => 'Fabricação de óleo de milho em bruto'
] );


			
Cnae.create!( [
:id => 199,
:codigo => '1065103',
:descricao => 'Fabricação de óleo de milho refinado'
] );


			
Cnae.create!( [
:id => 2,
:codigo => '0111302',
:descricao => 'Cultivo de milho'
] );


			
Cnae.create!( [
:id => 20,
:codigo => '0119906',
:descricao => 'Cultivo de mandioca'
] );


			
Cnae.create!( [
:id => 200,
:codigo => '1066000',
:descricao => 'Fabricação de alimentos para animais'
] );


			
Cnae.create!( [
:id => 201,
:codigo => '1069400',
:descricao => 'Moagem e fabricação de produtos de origem vegetal não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 202,
:codigo => '1071600',
:descricao => 'Fabricação de açúcar em bruto'
] );


			
Cnae.create!( [
:id => 203,
:codigo => '1072401',
:descricao => 'Fabricação de açúcar de cana refinado'
] );


			
Cnae.create!( [
:id => 204,
:codigo => '1072402',
:descricao => 'Fabricação de açúcar de cereais (dextrose) e de beterraba'
] );


			
Cnae.create!( [
:id => 205,
:codigo => '1081301',
:descricao => 'Beneficiamento de café'
] );


			
Cnae.create!( [
:id => 206,
:codigo => '1081302',
:descricao => 'Torrefação e moagem de café'
] );


			
Cnae.create!( [
:id => 207,
:codigo => '1082100',
:descricao => 'Fabricação de produtos à base de café'
] );


			
Cnae.create!( [
:id => 208,
:codigo => '1091101',
:descricao => 'Fabricação de produtos de panificação Industrial'
] );


			
Cnae.create!( [
:id => 209,
:codigo => '1091102',
:descricao => 'Fabricação de produtos de padaria e confeitaria com predominância de produção própria'
] );


			
Cnae.create!( [
:id => 21,
:codigo => '0119907',
:descricao => 'Cultivo de melão'
] );


			
Cnae.create!( [
:id => 210,
:codigo => '1092900',
:descricao => 'Fabricação de biscoitos e bolachas'
] );


			
Cnae.create!( [
:id => 211,
:codigo => '1093701',
:descricao => 'Fabricação de produtos derivados do cacau e de chocolates'
] );


			
Cnae.create!( [
:id => 212,
:codigo => '1093702',
:descricao => 'Fabricação de frutas cristalizadas, balas e semelhantes'
] );


			
Cnae.create!( [
:id => 213,
:codigo => '1094500',
:descricao => 'Fabricação de massas alimentícias'
] );


			
Cnae.create!( [
:id => 214,
:codigo => '1095300',
:descricao => 'Fabricação de especiarias, molhos, temperos e condimentos'
] );


			
Cnae.create!( [
:id => 215,
:codigo => '1096100',
:descricao => 'Fabricação de alimentos e pratos prontos'
] );


			
Cnae.create!( [
:id => 216,
:codigo => '1099601',
:descricao => 'Fabricação de vinagres'
] );


			
Cnae.create!( [
:id => 217,
:codigo => '1099602',
:descricao => 'Fabricação de pós alimentícios'
] );


			
Cnae.create!( [
:id => 218,
:codigo => '1099603',
:descricao => 'Fabricação de fermentos e leveduras'
] );


			
Cnae.create!( [
:id => 219,
:codigo => '1099604',
:descricao => 'Fabricação de gelo comum'
] );


			
Cnae.create!( [
:id => 22,
:codigo => '0119908',
:descricao => 'Cultivo de melancia'
] );


			
Cnae.create!( [
:id => 220,
:codigo => '1099605',
:descricao => 'Fabricação de produtos para infusão (chá, mate, etc.)'
] );


			
Cnae.create!( [
:id => 221,
:codigo => '1099606',
:descricao => 'Fabricação de adoçantes naturais e artificiais'
] );


			
Cnae.create!( [
:id => 222,
:codigo => '1099607',
:descricao => 'Fabricação de alimentos dietéticos e complementos alimentares'
] );


			
Cnae.create!( [
:id => 223,
:codigo => '1099699',
:descricao => 'Fabricação de outros produtos alimentícios não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 224,
:codigo => '1111901',
:descricao => 'Fabricação de aguardente de cana-de-açúcar'
] );


			
Cnae.create!( [
:id => 225,
:codigo => '1111902',
:descricao => 'Fabricação de outras aguardentes e bebidas destiladas'
] );


			
Cnae.create!( [
:id => 226,
:codigo => '1112700',
:descricao => 'Fabricação de vinho'
] );


			
Cnae.create!( [
:id => 227,
:codigo => '1113501',
:descricao => 'Fabricação de malte, inclusive malte uísque'
] );


			
Cnae.create!( [
:id => 228,
:codigo => '1113502',
:descricao => 'Fabricação de cervejas e chopes'
] );


			
Cnae.create!( [
:id => 229,
:codigo => '1121600',
:descricao => 'Fabricação de águas envasadas'
] );


			
Cnae.create!( [
:id => 23,
:codigo => '0119909',
:descricao => 'Cultivo de tomate rasteiro'
] );


			
Cnae.create!( [
:id => 230,
:codigo => '1122401',
:descricao => 'Fabricação de refrigerantes'
] );


			
Cnae.create!( [
:id => 231,
:codigo => '1122402',
:descricao => 'Fabricação de chá mate e outros chás prontos para consumo'
] );


			
Cnae.create!( [
:id => 232,
:codigo => '1122403',
:descricao => 'Fabricação de refrescos, xaropes e pós para refrescos, exceto refrescos de frutas'
] );


			
Cnae.create!( [
:id => 233,
:codigo => '1122404',
:descricao => 'Fabricação de bebidas isotônicas'
] );


			
Cnae.create!( [
:id => 234,
:codigo => '1122499',
:descricao => 'Fabricação de outras bebidas não-alcoólicas não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 235,
:codigo => '1210700',
:descricao => 'Processamento industrial do fumo'
] );


			
Cnae.create!( [
:id => 236,
:codigo => '1220401',
:descricao => 'Fabricação de cigarros'
] );


			
Cnae.create!( [
:id => 237,
:codigo => '1220402',
:descricao => 'Fabricação de cigarrilhas e charutos'
] );


			
Cnae.create!( [
:id => 238,
:codigo => '1220403',
:descricao => 'Fabricação de filtros para cigarros'
] );


			
Cnae.create!( [
:id => 239,
:codigo => '1220499',
:descricao => 'Fabricação de outros produtos do fumo, exceto cigarros, cigarrilhas e charutos'
] );


			
Cnae.create!( [
:id => 24,
:codigo => '0119999',
:descricao => 'Cultivo de outras plantas de lavoura temporária não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 240,
:codigo => '1311100',
:descricao => 'Preparação e fiação de fibras de algodão'
] );


			
Cnae.create!( [
:id => 241,
:codigo => '1312000',
:descricao => 'Preparação e fiação de fibras têxteis naturais, exceto algodão'
] );


			
Cnae.create!( [
:id => 242,
:codigo => '1313800',
:descricao => 'Fiação de fibras artificiais e sintéticas'
] );


			
Cnae.create!( [
:id => 243,
:codigo => '1314600',
:descricao => 'Fabricação de linhas para costurar e bordar'
] );


			
Cnae.create!( [
:id => 244,
:codigo => '1321900',
:descricao => 'Tecelagem de fios de algodão'
] );


			
Cnae.create!( [
:id => 245,
:codigo => '1322700',
:descricao => 'Tecelagem de fios de fibras têxteis naturais, exceto algodão'
] );


			
Cnae.create!( [
:id => 246,
:codigo => '1323500',
:descricao => 'Tecelagem de fios de fibras artificiais e sintéticas'
] );


			
Cnae.create!( [
:id => 247,
:codigo => '1330800',
:descricao => 'Fabricação de tecidos de malha'
] );


			
Cnae.create!( [
:id => 248,
:codigo => '1340501',
:descricao => 'Estamparia e texturização em fios, tecidos, artefatos têxteis e peças do vestuário'
] );


			
Cnae.create!( [
:id => 249,
:codigo => '1340502',
:descricao => 'Alvejamento, tingimento e torção em fios, tecidos, artefatos têxteis e peças do vestuário'
] );


			
Cnae.create!( [
:id => 25,
:codigo => '0121101',
:descricao => 'Horticultura, exceto morango'
] );


			
Cnae.create!( [
:id => 250,
:codigo => '1340599',
:descricao => 'Outros serviços de acabamento em fios, tecidos, artefatos têxteis e peças do vestuário'
] );


			
Cnae.create!( [
:id => 251,
:codigo => '1351100',
:descricao => 'Fabricação de artefatos têxteis para uso doméstico'
] );


			
Cnae.create!( [
:id => 252,
:codigo => '1352900',
:descricao => 'Fabricação de artefatos de tapeçaria'
] );


			
Cnae.create!( [
:id => 253,
:codigo => '1353700',
:descricao => 'Fabricação de artefatos de cordoaria'
] );


			
Cnae.create!( [
:id => 254,
:codigo => '1354500',
:descricao => 'Fabricação de tecidos especiais, inclusive artefatos'
] );


			
Cnae.create!( [
:id => 255,
:codigo => '1359600',
:descricao => 'Fabricação de outros produtos têxteis não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 256,
:codigo => '1411801',
:descricao => 'Confecção de roupas íntimas'
] );


			
Cnae.create!( [
:id => 257,
:codigo => '1411802',
:descricao => 'Facção de roupas íntimas'
] );


			
Cnae.create!( [
:id => 258,
:codigo => '1412601',
:descricao => 'Confecção de peças do vestuário, exceto roupas íntimas e as confeccionadas sob medida'
] );


			
Cnae.create!( [
:id => 259,
:codigo => '1412602',
:descricao => 'Confecção, sob medida, de peças do vestuário, exceto roupas íntimas'
] );


			
Cnae.create!( [
:id => 26,
:codigo => '0121102',
:descricao => 'Cultivo de morango'
] );


			
Cnae.create!( [
:id => 260,
:codigo => '1412603',
:descricao => 'Facção de peças do vestuário, exceto roupas íntimas'
] );


			
Cnae.create!( [
:id => 261,
:codigo => '1413401',
:descricao => 'Confecção de roupas profissionais, exceto sob medida'
] );


			
Cnae.create!( [
:id => 262,
:codigo => '1413402',
:descricao => 'Confecção, sob medida, de roupas profissionais'
] );


			
Cnae.create!( [
:id => 263,
:codigo => '1413403',
:descricao => 'Facção de roupas profissionais'
] );


			
Cnae.create!( [
:id => 264,
:codigo => '1414200',
:descricao => 'Fabricação de acessórios do vestuário, exceto para segurança e proteção'
] );


			
Cnae.create!( [
:id => 265,
:codigo => '1421500',
:descricao => 'Fabricação de meias'
] );


			
Cnae.create!( [
:id => 266,
:codigo => '1422300',
:descricao => 'Fabricação de artigos do vestuário, produzidos em malharias e tricotagens, exceto meias'
] );


			
Cnae.create!( [
:id => 267,
:codigo => '1510600',
:descricao => 'Curtimento e outras preparações de couro'
] );


			
Cnae.create!( [
:id => 268,
:codigo => '1521100',
:descricao => 'Fabricação de artigos para viagem, bolsas e semelhantes de qualquer material'
] );


			
Cnae.create!( [
:id => 269,
:codigo => '1529700',
:descricao => 'Fabricação de artefatos de couro não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 27,
:codigo => '0122900',
:descricao => 'Cultivo de flores e plantas ornamentais'
] );


			
Cnae.create!( [
:id => 270,
:codigo => '1531901',
:descricao => 'Fabricação de calçados de couro'
] );


			
Cnae.create!( [
:id => 271,
:codigo => '1531902',
:descricao => 'Acabamento de calçados de couro sob contrato'
] );


			
Cnae.create!( [
:id => 272,
:codigo => '1532700',
:descricao => 'Fabricação de tênis de qualquer material'
] );


			
Cnae.create!( [
:id => 273,
:codigo => '1533500',
:descricao => 'Fabricação de calçados de material sintético'
] );


			
Cnae.create!( [
:id => 274,
:codigo => '1539400',
:descricao => 'Fabricação de calçados de materiais não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 275,
:codigo => '1540800',
:descricao => 'Fabricação de partes para calçados, de qualquer material'
] );


			
Cnae.create!( [
:id => 276,
:codigo => '1610201',
:descricao => 'Serrarias com desdobramento de madeira'
] );


			
Cnae.create!( [
:id => 277,
:codigo => '1610202',
:descricao => 'Serrarias sem desdobramento de madeira'
] );


			
Cnae.create!( [
:id => 278,
:codigo => '1621800',
:descricao => 'Fabricação de madeira laminada e de chapas de madeira compensada, prensada e aglomerada'
] );


			
Cnae.create!( [
:id => 279,
:codigo => '1622601',
:descricao => 'Fabricação de casas de madeira pré-fabricadas'
] );


			
Cnae.create!( [
:id => 28,
:codigo => '0131800',
:descricao => 'Cultivo de laranja'
] );


			
Cnae.create!( [
:id => 280,
:codigo => '1622602',
:descricao => 'Fabricação de esquadrias de madeira e de peças de madeira para instalações industriais e comerciais'
] );


			
Cnae.create!( [
:id => 281,
:codigo => '1622699',
:descricao => 'Fabricação de outros artigos de carpintaria para construção'
] );


			
Cnae.create!( [
:id => 282,
:codigo => '1623400',
:descricao => 'Fabricação de artefatos de tanoaria e de embalagens de madeira'
] );


			
Cnae.create!( [
:id => 283,
:codigo => '1629301',
:descricao => 'Fabricação de artefatos diversos de madeira, exceto móveis'
] );


			
Cnae.create!( [
:id => 284,
:codigo => '1629302',
:descricao => 'Fabricação de artefatos diversos de cortiça, bambu, palha, vime e outros materiais trançados, exceto móveis'
] );


			
Cnae.create!( [
:id => 285,
:codigo => '1710900',
:descricao => 'Fabricação de celulose e outras pastas para a fabricação de papel'
] );


			
Cnae.create!( [
:id => 286,
:codigo => '1721400',
:descricao => 'Fabricação de papel'
] );


			
Cnae.create!( [
:id => 287,
:codigo => '1722200',
:descricao => 'Fabricação de cartolina e papel-cartão'
] );


			
Cnae.create!( [
:id => 288,
:codigo => '1731100',
:descricao => 'Fabricação de embalagens de papel'
] );


			
Cnae.create!( [
:id => 289,
:codigo => '1732000',
:descricao => 'Fabricação de embalagens de cartolina e papel-cartão'
] );


			
Cnae.create!( [
:id => 29,
:codigo => '0132600',
:descricao => 'Cultivo de uva'
] );


			
Cnae.create!( [
:id => 290,
:codigo => '1733800',
:descricao => 'Fabricação de chapas e de embalagens de papelão ondulado'
] );


			
Cnae.create!( [
:id => 291,
:codigo => '1741901',
:descricao => 'Fabricação de formulários contínuos'
] );


			
Cnae.create!( [
:id => 292,
:codigo => '1741902',
:descricao => 'Fabricação de produtos de papel, cartolina, papel-cartão e papelão ondulado para uso comercial e de escritório'
] );


			
Cnae.create!( [
:id => 293,
:codigo => '1742701',
:descricao => 'Fabricação de fraldas descartáveis'
] );


			
Cnae.create!( [
:id => 294,
:codigo => '1742702',
:descricao => 'Fabricação de absorventes higiênicos'
] );


			
Cnae.create!( [
:id => 295,
:codigo => '1742799',
:descricao => 'Fabricação de produtos de papel para uso doméstico e higiênico-sanitário não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 296,
:codigo => '1749400',
:descricao => 'Fabricação de produtos de pastas celulósicas, papel, cartolina, papel-cartão e papelão ondulado não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 297,
:codigo => '1811301',
:descricao => 'Impressão de jornais'
] );


			
Cnae.create!( [
:id => 298,
:codigo => '1811302',
:descricao => 'Impressão de livros, revistas e outras publicações periódicas'
] );


			
Cnae.create!( [
:id => 299,
:codigo => '1812100',
:descricao => 'Impressão de material de segurança'
] );


			
Cnae.create!( [
:id => 3,
:codigo => '0111303',
:descricao => 'Cultivo de trigo'
] );


			
Cnae.create!( [
:id => 30,
:codigo => '0133401',
:descricao => 'Cultivo de açaí'
] );


			
Cnae.create!( [
:id => 300,
:codigo => '1813001',
:descricao => 'Impressão de material para uso publicitário'
] );


			
Cnae.create!( [
:id => 301,
:codigo => '1813099',
:descricao => 'Impressão de material para outros usos'
] );


			
Cnae.create!( [
:id => 302,
:codigo => '1821100',
:descricao => 'Serviços de pré-impressão'
] );


			
Cnae.create!( [
:id => 303,
:codigo => '1822901',
:descricao => 'Serviços de encadernação e plastificação'
] );


			
Cnae.create!( [
:id => 304,
:codigo => '1822999',
:descricao => 'Serviços de acabamentos gráficos, exceto encadernação e plastificação'
] );


			
Cnae.create!( [
:id => 305,
:codigo => '1830001',
:descricao => 'Reprodução de som em qualquer suporte'
] );


			
Cnae.create!( [
:id => 306,
:codigo => '1830002',
:descricao => 'Reprodução de vídeo em qualquer suporte'
] );


			
Cnae.create!( [
:id => 307,
:codigo => '1830003',
:descricao => 'Reprodução de software em qualquer suporte'
] );


			
Cnae.create!( [
:id => 308,
:codigo => '1910100',
:descricao => 'Coquerias'
] );


			
Cnae.create!( [
:id => 309,
:codigo => '1921700',
:descricao => 'Fabricação de produtos do refino de petróleo'
] );


			
Cnae.create!( [
:id => 31,
:codigo => '0133402',
:descricao => 'Cultivo de banana'
] );


			
Cnae.create!( [
:id => 310,
:codigo => '1922501',
:descricao => 'Formulação de combustíveis'
] );


			
Cnae.create!( [
:id => 311,
:codigo => '1922502',
:descricao => 'Rerrefino de óleos lubrificantes'
] );


			
Cnae.create!( [
:id => 312,
:codigo => '1922599',
:descricao => 'Fabricação de outros produtos derivados do petróleo, exceto produtos do refino'
] );


			
Cnae.create!( [
:id => 313,
:codigo => '1931400',
:descricao => 'Fabricação de álcool'
] );


			
Cnae.create!( [
:id => 314,
:codigo => '1932200',
:descricao => 'Fabricação de biocombustíveis, exceto álcool'
] );


			
Cnae.create!( [
:id => 315,
:codigo => '2011800',
:descricao => 'Fabricação de cloro e álcalis'
] );


			
Cnae.create!( [
:id => 316,
:codigo => '2012600',
:descricao => 'Fabricação de intermediários para fertilizantes'
] );


			
Cnae.create!( [
:id => 317,
:codigo => '2013400',
:descricao => 'Fabricação de adubos e fertilizantes'
] );


			
Cnae.create!( [
:id => 318,
:codigo => '2014200',
:descricao => 'Fabricação de gases industriais'
] );


			
Cnae.create!( [
:id => 319,
:codigo => '2019301',
:descricao => 'Elaboração de combustíveis nucleares'
] );


			
Cnae.create!( [
:id => 32,
:codigo => '0133403',
:descricao => 'Cultivo de caju'
] );


			
Cnae.create!( [
:id => 320,
:codigo => '2019399',
:descricao => 'Fabricação de outros produtos químicos inorgânicos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 321,
:codigo => '2021500',
:descricao => 'Fabricação de produtos petroquímicos básicos'
] );


			
Cnae.create!( [
:id => 322,
:codigo => '2022300',
:descricao => 'Fabricação de intermediários para plastificantes, resinas e fibras'
] );


			
Cnae.create!( [
:id => 323,
:codigo => '2029100',
:descricao => 'Fabricação de produtos químicos orgânicos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 324,
:codigo => '2031200',
:descricao => 'Fabricação de resinas termoplásticas'
] );


			
Cnae.create!( [
:id => 325,
:codigo => '2032100',
:descricao => 'Fabricação de resinas termofixas'
] );


			
Cnae.create!( [
:id => 326,
:codigo => '2033900',
:descricao => 'Fabricação de elastômeros'
] );


			
Cnae.create!( [
:id => 327,
:codigo => '2040100',
:descricao => 'Fabricação de fibras artificiais e sintéticas'
] );


			
Cnae.create!( [
:id => 328,
:codigo => '2051700',
:descricao => 'Fabricação de defensivos agrícolas'
] );


			
Cnae.create!( [
:id => 329,
:codigo => '2052500',
:descricao => 'Fabricação de desinfestantes domissanitários'
] );


			
Cnae.create!( [
:id => 33,
:codigo => '0133404',
:descricao => 'Cultivo de cítricos, exceto laranja'
] );


			
Cnae.create!( [
:id => 330,
:codigo => '2061400',
:descricao => 'Fabricação de sabões e detergentes sintéticos'
] );


			
Cnae.create!( [
:id => 331,
:codigo => '2062200',
:descricao => 'Fabricação de produtos de limpeza e polimento'
] );


			
Cnae.create!( [
:id => 332,
:codigo => '2063100',
:descricao => 'Fabricação de cosméticos, produtos de perfumaria e de higiene pessoal'
] );


			
Cnae.create!( [
:id => 333,
:codigo => '2071100',
:descricao => 'Fabricação de tintas, vernizes, esmaltes e lacas'
] );


			
Cnae.create!( [
:id => 334,
:codigo => '2072000',
:descricao => 'Fabricação de tintas de impressão'
] );


			
Cnae.create!( [
:id => 335,
:codigo => '2073800',
:descricao => 'Fabricação de impermeabilizantes, solventes e produtos afins'
] );


			
Cnae.create!( [
:id => 336,
:codigo => '2091600',
:descricao => 'Fabricação de adesivos e selantes'
] );


			
Cnae.create!( [
:id => 337,
:codigo => '2092401',
:descricao => 'Fabricação de pólvoras, explosivos e detonantes'
] );


			
Cnae.create!( [
:id => 338,
:codigo => '2092402',
:descricao => 'Fabricação de artigos pirotécnicos'
] );


			
Cnae.create!( [
:id => 339,
:codigo => '2092403',
:descricao => 'Fabricação de fósforos de segurança'
] );


			
Cnae.create!( [
:id => 34,
:codigo => '0133405',
:descricao => 'Cultivo de coco-da-baía'
] );


			
Cnae.create!( [
:id => 340,
:codigo => '2093200',
:descricao => 'Fabricação de aditivos de uso industrial'
] );


			
Cnae.create!( [
:id => 341,
:codigo => '2094100',
:descricao => 'Fabricação de catalisadores'
] );


			
Cnae.create!( [
:id => 342,
:codigo => '2099101',
:descricao => 'Fabricação de chapas, filmes, papéis e outros materiais e produtos químicos para fotografia'
] );


			
Cnae.create!( [
:id => 343,
:codigo => '2099199',
:descricao => 'Fabricação de outros produtos químicos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 344,
:codigo => '2110600',
:descricao => 'Fabricação de produtos farmoquímicos'
] );


			
Cnae.create!( [
:id => 345,
:codigo => '2121101',
:descricao => 'Fabricação de medicamentos alopáticos para uso humano'
] );


			
Cnae.create!( [
:id => 346,
:codigo => '2121102',
:descricao => 'Fabricação de medicamentos homeopáticos para uso humano'
] );


			
Cnae.create!( [
:id => 347,
:codigo => '2121103',
:descricao => 'Fabricação de medicamentos fitoterápicos para uso humano'
] );


			
Cnae.create!( [
:id => 348,
:codigo => '2122000',
:descricao => 'Fabricação de medicamentos para uso veterinário'
] );


			
Cnae.create!( [
:id => 349,
:codigo => '2123800',
:descricao => 'Fabricação de preparações farmacêuticas'
] );


			
Cnae.create!( [
:id => 35,
:codigo => '0133406',
:descricao => 'Cultivo de guaraná'
] );


			
Cnae.create!( [
:id => 350,
:codigo => '2211100',
:descricao => 'Fabricação de pneumáticos e de câmaras-de-ar'
] );


			
Cnae.create!( [
:id => 351,
:codigo => '2212900',
:descricao => 'Reforma de pneumáticos usados'
] );


			
Cnae.create!( [
:id => 352,
:codigo => '2219600',
:descricao => 'Fabricação de artefatos de borracha não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 353,
:codigo => '2221800',
:descricao => 'Fabricação de laminados planos e tubulares de material plástico'
] );


			
Cnae.create!( [
:id => 354,
:codigo => '2222600',
:descricao => 'Fabricação de embalagens de material plástico'
] );


			
Cnae.create!( [
:id => 355,
:codigo => '2223400',
:descricao => 'Fabricação de tubos e acessórios de material plástico para uso na construção'
] );


			
Cnae.create!( [
:id => 356,
:codigo => '2229301',
:descricao => 'Fabricação de artefatos de material plástico para uso pessoal e doméstico'
] );


			
Cnae.create!( [
:id => 357,
:codigo => '2229302',
:descricao => 'Fabricação de artefatos de material plástico para usos industriais'
] );


			
Cnae.create!( [
:id => 358,
:codigo => '2229303',
:descricao => 'Fabricação de artefatos de material plástico para uso na construção, exceto tubos e acessórios'
] );


			
Cnae.create!( [
:id => 359,
:codigo => '2229399',
:descricao => 'Fabricação de artefatos de material plástico para outros usos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 36,
:codigo => '0133407',
:descricao => 'Cultivo de maçã'
] );


			
Cnae.create!( [
:id => 360,
:codigo => '2311700',
:descricao => 'Fabricação de vidro plano e de segurança'
] );


			
Cnae.create!( [
:id => 361,
:codigo => '2312500',
:descricao => 'Fabricação de embalagens de vidro'
] );


			
Cnae.create!( [
:id => 362,
:codigo => '2319200',
:descricao => 'Fabricação de artigos de vidro'
] );


			
Cnae.create!( [
:id => 363,
:codigo => '2320600',
:descricao => 'Fabricação de cimento'
] );


			
Cnae.create!( [
:id => 364,
:codigo => '2330301',
:descricao => 'Fabricação de estruturas pré-moldadas de concreto armado, em série e sob encomenda'
] );


			
Cnae.create!( [
:id => 365,
:codigo => '2330302',
:descricao => 'Fabricação de artefatos de cimento para uso na construção'
] );


			
Cnae.create!( [
:id => 366,
:codigo => '2330303',
:descricao => 'Fabricação de artefatos de fibrocimento para uso na construção'
] );


			
Cnae.create!( [
:id => 367,
:codigo => '2330304',
:descricao => 'Fabricação de casas pré-moldadas de concreto'
] );


			
Cnae.create!( [
:id => 368,
:codigo => '2330305',
:descricao => 'Preparação de massa de concreto e argamassa para construção'
] );


			
Cnae.create!( [
:id => 369,
:codigo => '2330399',
:descricao => 'Fabricação de outros artefatos e produtos de concreto, cimento, fibrocimento, gesso e materiais semelhantes'
] );


			
Cnae.create!( [
:id => 37,
:codigo => '0133408',
:descricao => 'Cultivo de mamão'
] );


			
Cnae.create!( [
:id => 370,
:codigo => '2341900',
:descricao => 'Fabricação de produtos cerâmicos refratários'
] );


			
Cnae.create!( [
:id => 371,
:codigo => '2342701',
:descricao => 'Fabricação de azulejos e pisos'
] );


			
Cnae.create!( [
:id => 372,
:codigo => '2342702',
:descricao => 'Fabricação de artefatos de cerâmica e barro cozido para uso na construção, exceto azulejos e pisos'
] );


			
Cnae.create!( [
:id => 373,
:codigo => '2349401',
:descricao => 'Fabricação de material sanitário de cerâmica'
] );


			
Cnae.create!( [
:id => 374,
:codigo => '2349499',
:descricao => 'Fabricação de produtos cerâmicos não-refratários não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 375,
:codigo => '2391501',
:descricao => 'Britamento de pedras, exceto associado à extração'
] );


			
Cnae.create!( [
:id => 376,
:codigo => '2391502',
:descricao => 'Aparelhamento de pedras para construção, exceto associado à extração'
] );


			
Cnae.create!( [
:id => 377,
:codigo => '2391503',
:descricao => 'Aparelhamento de placas e execução de trabalhos em mármore, granito, ardósia e outras pedras'
] );


			
Cnae.create!( [
:id => 378,
:codigo => '2392300',
:descricao => 'Fabricação de cal e gesso'
] );


			
Cnae.create!( [
:id => 379,
:codigo => '2399101',
:descricao => 'Decoração, lapidação, gravação, vitrificação e outros trabalhos em cerâmica, louça, vidro e cristal'
] );


			
Cnae.create!( [
:id => 38,
:codigo => '0133409',
:descricao => 'Cultivo de maracujá'
] );


			
Cnae.create!( [
:id => 380,
:codigo => '2399102',
:descricao => 'Fabricação de abrasivos'
] );


			
Cnae.create!( [
:id => 381,
:codigo => '2399199',
:descricao => 'Fabricação de outros produtos de minerais não-metálicos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 382,
:codigo => '2411300',
:descricao => 'Produção de ferro-gusa'
] );


			
Cnae.create!( [
:id => 383,
:codigo => '2412100',
:descricao => 'Produção de ferroligas'
] );


			
Cnae.create!( [
:id => 384,
:codigo => '2421100',
:descricao => 'Produção de semi-acabados de aço'
] );


			
Cnae.create!( [
:id => 385,
:codigo => '2422901',
:descricao => 'Produção de laminados planos de aço ao carbono, revestidos ou não'
] );


			
Cnae.create!( [
:id => 386,
:codigo => '2422902',
:descricao => 'Produção de laminados planos de aços especiais'
] );


			
Cnae.create!( [
:id => 387,
:codigo => '2423701',
:descricao => 'Produção de tubos de aço sem costura'
] );


			
Cnae.create!( [
:id => 388,
:codigo => '2423702',
:descricao => 'Produção de laminados longos de aço, exceto tubos'
] );


			
Cnae.create!( [
:id => 389,
:codigo => '2424501',
:descricao => 'Produção de arames de aço'
] );


			
Cnae.create!( [
:id => 39,
:codigo => '0133410',
:descricao => 'Cultivo de manga'
] );


			
Cnae.create!( [
:id => 390,
:codigo => '2424502',
:descricao => 'Produção de relaminados, trefilados e perfilados de aço, exceto arames'
] );


			
Cnae.create!( [
:id => 391,
:codigo => '2431800',
:descricao => 'Produção de tubos de aço com costura'
] );


			
Cnae.create!( [
:id => 392,
:codigo => '2439300',
:descricao => 'Produção de outros tubos de ferro e aço'
] );


			
Cnae.create!( [
:id => 393,
:codigo => '2441501',
:descricao => 'Produção de alumínio e suas ligas em formas primárias'
] );


			
Cnae.create!( [
:id => 394,
:codigo => '2441502',
:descricao => 'Produção de laminados de alumínio'
] );


			
Cnae.create!( [
:id => 395,
:codigo => '2442300',
:descricao => 'Metalurgia dos metais preciosos'
] );


			
Cnae.create!( [
:id => 396,
:codigo => '2443100',
:descricao => 'Metalurgia do cobre'
] );


			
Cnae.create!( [
:id => 397,
:codigo => '2449101',
:descricao => 'Produção de zinco em formas primárias'
] );


			
Cnae.create!( [
:id => 398,
:codigo => '2449102',
:descricao => 'Produção de laminados de zinco'
] );


			
Cnae.create!( [
:id => 399,
:codigo => '2449103',
:descricao => 'Produção de soldas e ânodos para galvanoplastia'
] );


			
Cnae.create!( [
:id => 4,
:codigo => '0111399',
:descricao => 'Cultivo de outros cereais não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 40,
:codigo => '0133411',
:descricao => 'Cultivo de pêssego'
] );


			
Cnae.create!( [
:id => 400,
:codigo => '2449199',
:descricao => 'Metalurgia de outros metais não-ferrosos e suas ligas não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 401,
:codigo => '2451200',
:descricao => 'Fundição de ferro e aço'
] );


			
Cnae.create!( [
:id => 402,
:codigo => '2452100',
:descricao => 'Fundição de metais não-ferrosos e suas ligas'
] );


			
Cnae.create!( [
:id => 403,
:codigo => '2511000',
:descricao => 'Fabricação de estruturas metálicas'
] );


			
Cnae.create!( [
:id => 404,
:codigo => '2512800',
:descricao => 'Fabricação de esquadrias de metal'
] );


			
Cnae.create!( [
:id => 405,
:codigo => '2513600',
:descricao => 'Fabricação de obras de caldeiraria pesada'
] );


			
Cnae.create!( [
:id => 406,
:codigo => '2521700',
:descricao => 'Fabricação de tanques, reservatórios metálicos e caldeiras para aquecimento central'
] );


			
Cnae.create!( [
:id => 407,
:codigo => '2522500',
:descricao => 'Fabricação de caldeiras geradoras de vapor, exceto para aquecimento central e para veículos'
] );


			
Cnae.create!( [
:id => 408,
:codigo => '2531401',
:descricao => 'Produção de forjados de aço'
] );


			
Cnae.create!( [
:id => 409,
:codigo => '2531402',
:descricao => 'Produção de forjados de metais não-ferrosos e suas ligas'
] );


			
Cnae.create!( [
:id => 41,
:codigo => '0133499',
:descricao => 'Cultivo de frutas de lavoura permanente não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 410,
:codigo => '2532201',
:descricao => 'Produção de artefatos estampados de metal'
] );


			
Cnae.create!( [
:id => 411,
:codigo => '2532202',
:descricao => 'Metalurgia do pó'
] );


			
Cnae.create!( [
:id => 412,
:codigo => '2539001',
:descricao => 'Serviços de usinagem, tornearia e solda'
] );


			
Cnae.create!( [
:id => 413,
:codigo => '2539002',
:descricao => 'Serviços de tratamento e revestimento em metais'
] );


			
Cnae.create!( [
:id => 414,
:codigo => '2541100',
:descricao => 'Fabricação de artigos de cutelaria'
] );


			
Cnae.create!( [
:id => 415,
:codigo => '2542000',
:descricao => 'Fabricação de artigos de serralheria, exceto esquadrias'
] );


			
Cnae.create!( [
:id => 416,
:codigo => '2543800',
:descricao => 'Fabricação de ferramentas'
] );


			
Cnae.create!( [
:id => 417,
:codigo => '2550101',
:descricao => 'Fabricação de equipamento bélico pesado, exceto veículos militares de combate'
] );


			
Cnae.create!( [
:id => 418,
:codigo => '2550102',
:descricao => 'Fabricação de armas de fogo, outras armas e munições'
] );


			
Cnae.create!( [
:id => 419,
:codigo => '2591800',
:descricao => 'Fabricação de embalagens metálicas'
] );


			
Cnae.create!( [
:id => 42,
:codigo => '0134200',
:descricao => 'Cultivo de café'
] );


			
Cnae.create!( [
:id => 420,
:codigo => '2592601',
:descricao => 'Fabricação de produtos de trefilados de metal padronizados'
] );


			
Cnae.create!( [
:id => 421,
:codigo => '2592602',
:descricao => 'Fabricação de produtos de trefilados de metal, exceto padronizados'
] );


			
Cnae.create!( [
:id => 422,
:codigo => '2593400',
:descricao => 'Fabricação de artigos de metal para uso doméstico e pessoal'
] );


			
Cnae.create!( [
:id => 423,
:codigo => '2599301',
:descricao => 'Serviços de confecção de armações metálicas para a construção'
] );


			
Cnae.create!( [
:id => 424,
:codigo => '2599302',
:descricao => 'Serviço de corte e dobra de metais'
] );


			
Cnae.create!( [
:id => 425,
:codigo => '2599399',
:descricao => 'Fabricação de outros produtos de metal não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 426,
:codigo => '2610800',
:descricao => 'Fabricação de componentes eletrônicos'
] );


			
Cnae.create!( [
:id => 427,
:codigo => '2621300',
:descricao => 'Fabricação de equipamentos de informática'
] );


			
Cnae.create!( [
:id => 428,
:codigo => '2622100',
:descricao => 'Fabricação de periféricos para equipamentos de informática'
] );


			
Cnae.create!( [
:id => 429,
:codigo => '2631100',
:descricao => 'Fabricação de equipamentos transmissores de comunicação, peças e acessórios'
] );


			
Cnae.create!( [
:id => 43,
:codigo => '0135100',
:descricao => 'Cultivo de cacau'
] );


			
Cnae.create!( [
:id => 430,
:codigo => '2632900',
:descricao => 'Fabricação de aparelhos telefônicos e de outros equipamentos de comunicação, peças e acessórios'
] );


			
Cnae.create!( [
:id => 431,
:codigo => '2640000',
:descricao => 'Fabricação de aparelhos de recepção, reprodução, gravação e amplificação de áudio e vídeo'
] );


			
Cnae.create!( [
:id => 432,
:codigo => '2651500',
:descricao => 'Fabricação de aparelhos e equipamentos de medida, teste e controle'
] );


			
Cnae.create!( [
:id => 433,
:codigo => '2652300',
:descricao => 'Fabricação de cronômetros e relógios'
] );


			
Cnae.create!( [
:id => 434,
:codigo => '2660400',
:descricao => 'Fabricação de aparelhos eletromédicos e eletroterapêuticos e equipamentos de irradiação'
] );


			
Cnae.create!( [
:id => 435,
:codigo => '2670101',
:descricao => 'Fabricação de equipamentos e instrumentos ópticos, peças e acessórios'
] );


			
Cnae.create!( [
:id => 436,
:codigo => '2670102',
:descricao => 'Fabricação de aparelhos fotográficos e cinematográficos, peças e acessórios'
] );


			
Cnae.create!( [
:id => 437,
:codigo => '2680900',
:descricao => 'Fabricação de mídias virgens, magnéticas e ópticas'
] );


			
Cnae.create!( [
:id => 438,
:codigo => '2710401',
:descricao => 'Fabricação de geradores de corrente contínua e alternada, peças e acessórios'
] );


			
Cnae.create!( [
:id => 439,
:codigo => '2710402',
:descricao => 'Fabricação de transformadores, indutores, conversores, sincronizadores e semelhantes, peças e acessórios'
] );


			
Cnae.create!( [
:id => 44,
:codigo => '0139301',
:descricao => 'Cultivo de chá-da-índia'
] );


			
Cnae.create!( [
:id => 440,
:codigo => '2710403',
:descricao => 'Fabricação de motores elétricos, peças e acessórios'
] );


			
Cnae.create!( [
:id => 441,
:codigo => '2721000',
:descricao => 'Fabricação de pilhas, baterias e acumuladores elétricos, exceto para veículos automotores'
] );


			
Cnae.create!( [
:id => 442,
:codigo => '2722801',
:descricao => 'Fabricação de baterias e acumuladores para veículos automotores'
] );


			
Cnae.create!( [
:id => 443,
:codigo => '2722802',
:descricao => 'Recondicionamento de baterias e acumuladores para veículos automotores'
] );


			
Cnae.create!( [
:id => 444,
:codigo => '2731700',
:descricao => 'Fabricação de aparelhos e equipamentos para distribuição e controle de energia elétrica'
] );


			
Cnae.create!( [
:id => 445,
:codigo => '2732500',
:descricao => 'Fabricação de material elétrico para instalações em circuito de consumo'
] );


			
Cnae.create!( [
:id => 446,
:codigo => '2733300',
:descricao => 'Fabricação de fios, cabos e condutores elétricos isolados'
] );


			
Cnae.create!( [
:id => 447,
:codigo => '2740601',
:descricao => 'Fabricação de lâmpadas'
] );


			
Cnae.create!( [
:id => 448,
:codigo => '2740602',
:descricao => 'Fabricação de luminárias e outros equipamentos de iluminação'
] );


			
Cnae.create!( [
:id => 449,
:codigo => '2751100',
:descricao => 'Fabricação de fogões, refrigeradores e máquinas de lavar e secar para uso doméstico, peças e acessórios'
] );


			
Cnae.create!( [
:id => 45,
:codigo => '0139302',
:descricao => 'Cultivo de erva-mate'
] );


			
Cnae.create!( [
:id => 450,
:codigo => '2759701',
:descricao => 'Fabricação de aparelhos elétricos de uso pessoal, peças e acessórios'
] );


			
Cnae.create!( [
:id => 451,
:codigo => '2759799',
:descricao => 'Fabricação de outros aparelhos eletrodomésticos não especificados anteriormente, peças e acessórios'
] );


			
Cnae.create!( [
:id => 452,
:codigo => '2790201',
:descricao => 'Fabricação de eletrodos, contatos e outros artigos de carvão e grafita para uso elétrico, eletroímãs e isoladores'
] );


			
Cnae.create!( [
:id => 453,
:codigo => '2790202',
:descricao => 'Fabricação de equipamentos para sinalização e alarme'
] );


			
Cnae.create!( [
:id => 454,
:codigo => '2790299',
:descricao => 'Fabricação de outros equipamentos e aparelhos elétricos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 455,
:codigo => '2811900',
:descricao => 'Fabricação de motores e turbinas, peças e acessórios, exceto para aviões e veículos rodoviários'
] );


			
Cnae.create!( [
:id => 456,
:codigo => '2812700',
:descricao => 'Fabricação de equipamentos hidráulicos e pneumáticos, peças e acessórios, exceto válvulas'
] );


			
Cnae.create!( [
:id => 457,
:codigo => '2813500',
:descricao => 'Fabricação de válvulas, registros e dispositivos semelhantes, peças e acessórios'
] );


			
Cnae.create!( [
:id => 458,
:codigo => '2814301',
:descricao => 'Fabricação de compressores para uso industrial, peças e acessórios'
] );


			
Cnae.create!( [
:id => 459,
:codigo => '2814302',
:descricao => 'Fabricação de compressores para uso não-industrial, peças e acessórios'
] );


			
Cnae.create!( [
:id => 46,
:codigo => '0139303',
:descricao => 'Cultivo de pimenta-do-reino'
] );


			
Cnae.create!( [
:id => 460,
:codigo => '2815101',
:descricao => 'Fabricação de rolamentos para fins industriais'
] );


			
Cnae.create!( [
:id => 461,
:codigo => '2815102',
:descricao => 'Fabricação de equipamentos de transmissão para fins industriais, exceto rolamentos'
] );


			
Cnae.create!( [
:id => 462,
:codigo => '2821601',
:descricao => 'Fabricação de fornos industriais, aparelhos e equipamentos não-elétricos para instalações térmicas, peças e acessórios'
] );


			
Cnae.create!( [
:id => 463,
:codigo => '2821602',
:descricao => 'Fabricação de estufas e fornos elétricos para fins industriais, peças e acessórios'
] );


			
Cnae.create!( [
:id => 464,
:codigo => '2822401',
:descricao => 'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de pessoas, peças e acessórios'
] );


			
Cnae.create!( [
:id => 465,
:codigo => '2822402',
:descricao => 'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas, peças e acessórios'
] );


			
Cnae.create!( [
:id => 466,
:codigo => '2823200',
:descricao => 'Fabricação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial, peças e acessórios'
] );


			
Cnae.create!( [
:id => 467,
:codigo => '2824101',
:descricao => 'Fabricação de aparelhos e equipamentos de ar condicionado para uso industrial'
] );


			
Cnae.create!( [
:id => 468,
:codigo => '2824102',
:descricao => 'Fabricação de aparelhos e equipamentos de ar condicionado para uso não-industrial'
] );


			
Cnae.create!( [
:id => 469,
:codigo => '2825900',
:descricao => 'Fabricação de máquinas e equipamentos para saneamento básico e ambiental, peças e acessórios'
] );


			
Cnae.create!( [
:id => 47,
:codigo => '0139304',
:descricao => 'Cultivo de plantas para condimento, exceto pimenta-do-reino'
] );


			
Cnae.create!( [
:id => 470,
:codigo => '2829101',
:descricao => 'Fabricação de máquinas de escrever, calcular e outros equipamentos não-eletrônicos para escritório, peças e acessórios'
] );


			
Cnae.create!( [
:id => 471,
:codigo => '2829199',
:descricao => 'Fabricação de outras máquinas e equipamentos de uso geral não especificados anteriormente, peças e acessórios'
] );


			
Cnae.create!( [
:id => 472,
:codigo => '2831300',
:descricao => 'Fabricação de tratores agrícolas, peças e acessórios'
] );


			
Cnae.create!( [
:id => 473,
:codigo => '2832100',
:descricao => 'Fabricação de equipamentos para irrigação agrícola, peças e acessórios'
] );


			
Cnae.create!( [
:id => 474,
:codigo => '2833000',
:descricao => 'Fabricação de máquinas e equipamentos para a agricultura e pecuária, peças e acessórios, exceto para irrigação'
] );


			
Cnae.create!( [
:id => 475,
:codigo => '2840200',
:descricao => 'Fabricação de máquinas-ferramenta, peças e acessórios'
] );


			
Cnae.create!( [
:id => 476,
:codigo => '2851800',
:descricao => 'Fabricação de máquinas e equipamentos para a prospecção e extração de petróleo, peças e acessórios'
] );


			
Cnae.create!( [
:id => 477,
:codigo => '2852600',
:descricao => 'Fabricação de outras máquinas e equipamentos para uso na extração mineral, peças e acessórios, exceto na extração de petróleo'
] );


			
Cnae.create!( [
:id => 478,
:codigo => '2853400',
:descricao => 'Fabricação de tratores, peças e acessórios, exceto agrícolas'
] );


			
Cnae.create!( [
:id => 479,
:codigo => '2854200',
:descricao => 'Fabricação de máquinas e equipamentos para terraplenagem, pavimentação e construção, peças e acessórios, exceto tratores'
] );


			
Cnae.create!( [
:id => 48,
:codigo => '0139305',
:descricao => 'Cultivo de dendê'
] );


			
Cnae.create!( [
:id => 480,
:codigo => '2861500',
:descricao => 'Fabricação de máquinas para a indústria metalúrgica, peças e acessórios, exceto máquinas-ferramenta'
] );


			
Cnae.create!( [
:id => 481,
:codigo => '2862300',
:descricao => 'Fabricação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo, peças e acessórios'
] );


			
Cnae.create!( [
:id => 482,
:codigo => '2863100',
:descricao => 'Fabricação de máquinas e equipamentos para a indústria têxtil, peças e acessórios'
] );


			
Cnae.create!( [
:id => 483,
:codigo => '2864000',
:descricao => 'Fabricação de máquinas e equipamentos para as indústrias do vestuário, do couro e de calçados, peças e acessórios'
] );


			
Cnae.create!( [
:id => 484,
:codigo => '2865800',
:descricao => 'Fabricação de máquinas e equipamentos para as indústrias de celulose, papel e papelão e artefatos, peças e acessórios'
] );


			
Cnae.create!( [
:id => 485,
:codigo => '2866600',
:descricao => 'Fabricação de máquinas e equipamentos para a indústria do plástico, peças e acessórios'
] );


			
Cnae.create!( [
:id => 486,
:codigo => '2869100',
:descricao => 'Fabricação de máquinas e equipamentos para uso industrial específico não especificados anteriormente, peças e acessórios'
] );


			
Cnae.create!( [
:id => 487,
:codigo => '2910701',
:descricao => 'Fabricação de automóveis, camionetas e utilitários'
] );


			
Cnae.create!( [
:id => 488,
:codigo => '2910702',
:descricao => 'Fabricação de chassis com motor para automóveis, camionetas e utilitários'
] );


			
Cnae.create!( [
:id => 489,
:codigo => '2910703',
:descricao => 'Fabricação de motores para automóveis, camionetas e utilitários'
] );


			
Cnae.create!( [
:id => 49,
:codigo => '0139306',
:descricao => 'Cultivo de seringueira'
] );


			
Cnae.create!( [
:id => 490,
:codigo => '2920401',
:descricao => 'Fabricação de caminhões e ônibus'
] );


			
Cnae.create!( [
:id => 491,
:codigo => '2920402',
:descricao => 'Fabricação de motores para caminhões e ônibus'
] );


			
Cnae.create!( [
:id => 492,
:codigo => '2930101',
:descricao => 'Fabricação de cabines, carrocerias e reboques para caminhões'
] );


			
Cnae.create!( [
:id => 493,
:codigo => '2930102',
:descricao => 'Fabricação de carrocerias para ônibus'
] );


			
Cnae.create!( [
:id => 494,
:codigo => '2930103',
:descricao => 'Fabricação de cabines, carrocerias e reboques para outros veículos automotores, exceto caminhões e ônibus'
] );


			
Cnae.create!( [
:id => 495,
:codigo => '2941700',
:descricao => 'Fabricação de peças e acessórios para o sistema motor de veículos automotores'
] );


			
Cnae.create!( [
:id => 496,
:codigo => '2942500',
:descricao => 'Fabricação de peças e acessórios para os sistemas de marcha e transmissão de veículos automotores'
] );


			
Cnae.create!( [
:id => 497,
:codigo => '2943300',
:descricao => 'Fabricação de peças e acessórios para o sistema de freios de veículos automotores'
] );


			
Cnae.create!( [
:id => 498,
:codigo => '2944100',
:descricao => 'Fabricação de peças e acessórios para o sistema de direção e suspensão de veículos automotores'
] );


			
Cnae.create!( [
:id => 499,
:codigo => '2945000',
:descricao => 'Fabricação de material elétrico e eletrônico para veículos automotores, exceto baterias'
] );


			
Cnae.create!( [
:id => 5,
:codigo => '0112101',
:descricao => 'Cultivo de algodão herbáceo'
] );


			
Cnae.create!( [
:id => 50,
:codigo => '0139399',
:descricao => 'Cultivo de outras plantas de lavoura permanente não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 500,
:codigo => '2949201',
:descricao => 'Fabricação de bancos e estofados para veículos automotores'
] );


			
Cnae.create!( [
:id => 501,
:codigo => '2949299',
:descricao => 'Fabricação de outras peças e acessórios para veículos automotores não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 502,
:codigo => '2950600',
:descricao => 'Recondicionamento e recuperação de motores para veículos automotores'
] );


			
Cnae.create!( [
:id => 503,
:codigo => '3011301',
:descricao => 'Construção de embarcações de grande porte'
] );


			
Cnae.create!( [
:id => 504,
:codigo => '3011302',
:descricao => 'Construção de embarcações para uso comercial e para usos especiais, exceto de grande porte'
] );


			
Cnae.create!( [
:id => 505,
:codigo => '3012100',
:descricao => 'Construção de embarcações para esporte e lazer'
] );


			
Cnae.create!( [
:id => 506,
:codigo => '3031800',
:descricao => 'Fabricação de locomotivas, vagões e outros materiais rodantes'
] );


			
Cnae.create!( [
:id => 507,
:codigo => '3032600',
:descricao => 'Fabricação de peças e acessórios para veículos ferroviários'
] );


			
Cnae.create!( [
:id => 508,
:codigo => '3041500',
:descricao => 'Fabricação de aeronaves'
] );


			
Cnae.create!( [
:id => 509,
:codigo => '3042300',
:descricao => 'Fabricação de turbinas, motores e outros componentes e peças para aeronaves'
] );


			
Cnae.create!( [
:id => 51,
:codigo => '0141501',
:descricao => 'Produção de sementes certificadas, exceto de forrageiras para pasto'
] );


			
Cnae.create!( [
:id => 510,
:codigo => '3050400',
:descricao => 'Fabricação de veículos militares de combate'
] );


			
Cnae.create!( [
:id => 511,
:codigo => '3091101',
:descricao => 'Fabricação de motocicletas'
] );


			
Cnae.create!( [
:id => 512,
:codigo => '3091102',
:descricao => 'Fabricação de peças e acessórios para motocicletas'
] );


			
Cnae.create!( [
:id => 513,
:codigo => '3092000',
:descricao => 'Fabricação de bicicletas e triciclos não-motorizados, peças e acessórios'
] );


			
Cnae.create!( [
:id => 514,
:codigo => '3099700',
:descricao => 'Fabricação de equipamentos de transporte não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 515,
:codigo => '3101200',
:descricao => 'Fabricação de móveis com predominância de madeira'
] );


			
Cnae.create!( [
:id => 516,
:codigo => '3102100',
:descricao => 'Fabricação de móveis com predominância de metal'
] );


			
Cnae.create!( [
:id => 517,
:codigo => '3103900',
:descricao => 'Fabricação de móveis de outros materiais, exceto madeira e metal'
] );


			
Cnae.create!( [
:id => 518,
:codigo => '3104700',
:descricao => 'Fabricação de colchões'
] );


			
Cnae.create!( [
:id => 519,
:codigo => '3211601',
:descricao => 'Lapidação de gemas'
] );


			
Cnae.create!( [
:id => 52,
:codigo => '0141502',
:descricao => 'Produção de sementes certificadas de forrageiras para formação de pasto'
] );


			
Cnae.create!( [
:id => 520,
:codigo => '3211602',
:descricao => 'Fabricação de artefatos de joalheria e ourivesaria'
] );


			
Cnae.create!( [
:id => 521,
:codigo => '3211603',
:descricao => 'Cunhagem de moedas e medalhas'
] );


			
Cnae.create!( [
:id => 522,
:codigo => '3212400',
:descricao => 'Fabricação de bijuterias e artefatos semelhantes'
] );


			
Cnae.create!( [
:id => 523,
:codigo => '3220500',
:descricao => 'Fabricação de instrumentos musicais, peças e acessórios'
] );


			
Cnae.create!( [
:id => 524,
:codigo => '3230200',
:descricao => 'Fabricação de artefatos para pesca e esporte'
] );


			
Cnae.create!( [
:id => 525,
:codigo => '3240001',
:descricao => 'Fabricação de jogos eletrônicos'
] );


			
Cnae.create!( [
:id => 526,
:codigo => '3240002',
:descricao => 'Fabricação de mesas de bilhar, de sinuca e acessórios não associada à locação'
] );


			
Cnae.create!( [
:id => 527,
:codigo => '3240003',
:descricao => 'Fabricação de mesas de bilhar, de sinuca e acessórios associada à locação'
] );


			
Cnae.create!( [
:id => 528,
:codigo => '3240099',
:descricao => 'Fabricação de outros brinquedos e jogos recreativos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 529,
:codigo => '3250701',
:descricao => 'Fabricação de instrumentos não-eletrônicos e utensílios para uso médico, cirúrgico, odontológico e de laboratório'
] );


			
Cnae.create!( [
:id => 53,
:codigo => '0142300',
:descricao => 'Produção de mudas e outras formas de propagação vegetal, certificadas'
] );


			
Cnae.create!( [
:id => 530,
:codigo => '3250702',
:descricao => 'Fabricação de mobiliário para uso médico, cirúrgico, odontológico e de laboratório'
] );


			
Cnae.create!( [
:id => 531,
:codigo => '3250703',
:descricao => 'Fabricação de aparelhos e utensílios para correção de defeitos físicos e aparelhos ortopédicos em geral sob encomenda'
] );


			
Cnae.create!( [
:id => 532,
:codigo => '3250704',
:descricao => 'Fabricação de aparelhos e utensílios para correção de defeitos físicos e aparelhos ortopédicos em geral, exceto sob encomenda'
] );

Cnae.create!( [
:id => 533,
:codigo => '3250705',
:descricao => 'Fabricação de materiais para medicina e odontologia'
] );


			
Cnae.create!( [
:id => 534,
:codigo => '3250706',
:descricao => 'Serviços de prótese dentária'
] );


			
Cnae.create!( [
:id => 535,
:codigo => '3250707',
:descricao => 'Fabricação de artigos ópticos'
] );


			
Cnae.create!( [
:id => 536,
:codigo => '3250709',
:descricao => 'Serviço de laboratório óptico'
] );


			
Cnae.create!( [
:id => 537,
:codigo => '3291400',
:descricao => 'Fabricação de escovas, pincéis e vassouras'
] );


			
Cnae.create!( [
:id => 538,
:codigo => '3292201',
:descricao => 'Fabricação de roupas de proteção e segurança e resistentes a fogo'
] );


			
Cnae.create!( [
:id => 539,
:codigo => '3292202',
:descricao => 'Fabricação de equipamentos e acessórios para segurança pessoal e profissional'
] );


			
Cnae.create!( [
:id => 54,
:codigo => '0151201',
:descricao => 'Criação de bovinos para corte'
] );


			
Cnae.create!( [
:id => 540,
:codigo => '3299001',
:descricao => 'Fabricação de guarda-chuvas e similares'
] );


			
Cnae.create!( [
:id => 541,
:codigo => '3299002',
:descricao => 'Fabricação de canetas, lápis e outros artigos para escritório'
] );


			
Cnae.create!( [
:id => 542,
:codigo => '3299003',
:descricao => 'Fabricação de letras, letreiros e placas de qualquer material, exceto luminosos'
] );


			
Cnae.create!( [
:id => 543,
:codigo => '3299004',
:descricao => 'Fabricação de painéis e letreiros luminosos'
] );


			
Cnae.create!( [
:id => 544,
:codigo => '3299005',
:descricao => 'Fabricação de aviamentos para costura'
] );


			
Cnae.create!( [
:id => 545,
:codigo => '3299006',
:descricao => 'Fabricação de velas, inclusive decorativas'
] );


			
Cnae.create!( [
:id => 546,
:codigo => '3299099',
:descricao => 'Fabricação de produtos diversos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 547,
:codigo => '3312102',
:descricao => 'Manutenção e reparação de aparelhos e instrumentos de medida, teste e controle'
] );


			
Cnae.create!( [
:id => 548,
:codigo => '3312103',
:descricao => 'Manutenção e reparação de aparelhos eletromédicos e eletroterapêuticos e equipamentos de irradiação'
] );


			
Cnae.create!( [
:id => 549,
:codigo => '3312104',
:descricao => 'Manutenção e reparação de equipamentos e instrumentos ópticos'
] );


			
Cnae.create!( [
:id => 55,
:codigo => '0151202',
:descricao => 'Criação de bovinos para leite'
] );


			
Cnae.create!( [
:id => 550,
:codigo => '3313901',
:descricao => 'Manutenção e reparação de geradores, transformadores e motores elétricos'
] );


			
Cnae.create!( [
:id => 551,
:codigo => '3313902',
:descricao => 'Manutenção e reparação de baterias e acumuladores elétricos, exceto para veículos'
] );


			
Cnae.create!( [
:id => 552,
:codigo => '3313999',
:descricao => 'Manutenção e reparação de máquinas, aparelhos e materiais elétricos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 553,
:codigo => '3314701',
:descricao => 'Manutenção e reparação de máquinas motrizes não-elétricas'
] );


			
Cnae.create!( [
:id => 554,
:codigo => '3314702',
:descricao => 'Manutenção e reparação de equipamentos hidráulicos e pneumáticos, exceto válvulas'
] );


			
Cnae.create!( [
:id => 555,
:codigo => '3314703',
:descricao => 'Manutenção e reparação de válvulas industriais'
] );


			
Cnae.create!( [
:id => 556,
:codigo => '3314704',
:descricao => 'Manutenção e reparação de compressores'
] );


			
Cnae.create!( [
:id => 557,
:codigo => '3314705',
:descricao => 'Manutenção e reparação de equipamentos de transmissão para fins industriais'
] );


			
Cnae.create!( [
:id => 558,
:codigo => '3314706',
:descricao => 'Manutenção e reparação de máquinas, aparelhos e equipamentos para instalações térmicas'
] );


			
Cnae.create!( [
:id => 559,
:codigo => '3314707',
:descricao => 'Manutenção e reparação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial'
] );


			
Cnae.create!( [
:id => 56,
:codigo => '0151203',
:descricao => 'Criação de bovinos, exceto para corte e leite'
] );


			
Cnae.create!( [
:id => 560,
:codigo => '3314708',
:descricao => 'Manutenção e reparação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas'
] );


			
Cnae.create!( [
:id => 561,
:codigo => '3314709',
:descricao => 'Manutenção e reparação de máquinas de escrever, calcular e de outros equipamentos não-eletrônicos para escritório'
] );


			
Cnae.create!( [
:id => 562,
:codigo => '3314710',
:descricao => 'Manutenção e reparação de máquinas e equipamentos para uso geral não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 563,
:codigo => '3314711',
:descricao => 'Manutenção e reparação de máquinas e equipamentos para agricultura e pecuária'
] );


			
Cnae.create!( [
:id => 564,
:codigo => '3314712',
:descricao => 'Manutenção e reparação de tratores agrícolas'
] );


			
Cnae.create!( [
:id => 565,
:codigo => '3314713',
:descricao => 'Manutenção e reparação de máquinas-ferramenta'
] );


			
Cnae.create!( [
:id => 566,
:codigo => '3314714',
:descricao => 'Manutenção e reparação de máquinas e equipamentos para a prospecção e extração de petróleo'
] );


			
Cnae.create!( [
:id => 567,
:codigo => '3314715',
:descricao => 'Manutenção e reparação de máquinas e equipamentos para uso na extração mineral, exceto na extração de petróleo'
] );


			
Cnae.create!( [
:id => 568,
:codigo => '3314716',
:descricao => 'Manutenção e reparação de tratores, exceto agrícolas'
] );


			
Cnae.create!( [
:id => 569,
:codigo => '3314717',
:descricao => 'Manutenção e reparação de máquinas e equipamentos de terraplenagem, pavimentação e construção, exceto tratores'
] );


			
Cnae.create!( [
:id => 57,
:codigo => '0152101',
:descricao => 'Criação de bufalinos'
] );


			
Cnae.create!( [
:id => 570,
:codigo => '3314718',
:descricao => 'Manutenção e reparação de máquinas para a indústria metalúrgica, exceto máquinas-ferramenta'
] );


			
Cnae.create!( [
:id => 571,
:codigo => '3314719',
:descricao => 'Manutenção e reparação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo'
] );


			
Cnae.create!( [
:id => 572,
:codigo => '3314720',
:descricao => 'Manutenção e reparação de máquinas e equipamentos para a indústria têxtil, do vestuário, do couro e calçados'
] );


			
Cnae.create!( [
:id => 573,
:codigo => '3314721',
:descricao => 'Manutenção e reparação de máquinas e aparelhos para a indústria de celulose, papel e papelão e artefatos'
] );


			
Cnae.create!( [
:id => 574,
:codigo => '3314722',
:descricao => 'Manutenção e reparação de máquinas e aparelhos para a indústria do plástico'
] );


			
Cnae.create!( [
:id => 575,
:codigo => '3314799',
:descricao => 'Manutenção e reparação de outras máquinas e equipamentos para usos industriais não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 576,
:codigo => '3315500',
:descricao => 'Manutenção e reparação de veículos ferroviários'
] );


			
Cnae.create!( [
:id => 577,
:codigo => '3316301',
:descricao => 'Manutenção e reparação de aeronaves, exceto a manutenção na pista'
] );


			
Cnae.create!( [
:id => 578,
:codigo => '3316302',
:descricao => 'Manutenção de aeronaves na pista'
] );


			
Cnae.create!( [
:id => 579,
:codigo => '3317101',
:descricao => 'Manutenção e reparação de embarcações e estruturas flutuantes'
] );


			
Cnae.create!( [
:id => 58,
:codigo => '0152102',
:descricao => 'Criação de eqüinos'
] );


			
Cnae.create!( [
:id => 580,
:codigo => '3317102',
:descricao => 'Manutenção e reparação de embarcações para esporte e lazer'
] );


			
Cnae.create!( [
:id => 581,
:codigo => '3319800',
:descricao => 'Manutenção e reparação de equipamentos e produtos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 582,
:codigo => '3321000',
:descricao => 'Instalação de máquinas e equipamentos industriais'
] );


			
Cnae.create!( [
:id => 583,
:codigo => '3329501',
:descricao => 'Serviços de montagem de móveis de qualquer material'
] );


			
Cnae.create!( [
:id => 584,
:codigo => '3329599',
:descricao => 'Instalação de outros equipamentos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 585,
:codigo => '3511501',
:descricao => 'Geração de energia elétrica'
] );


			
Cnae.create!( [
:id => 586,
:codigo => '3511502',
:descricao => 'Atividades de coordenação e controle da operação da geração e transmissão de energia elétrica'
] );


			
Cnae.create!( [
:id => 587,
:codigo => '3512300',
:descricao => 'Transmissão de energia elétrica'
] );


			
Cnae.create!( [
:id => 588,
:codigo => '3513100',
:descricao => 'Comércio atacadista de energia elétrica'
] );


			
Cnae.create!( [
:id => 589,
:codigo => '3514000',
:descricao => 'Distribuição de energia elétrica'
] );


			
Cnae.create!( [
:id => 59,
:codigo => '0152103',
:descricao => 'Criação de asininos e muares'
] );


			
Cnae.create!( [
:id => 590,
:codigo => '3520401',
:descricao => 'Produção de gás; processamento de gás natural'
] );


			
Cnae.create!( [
:id => 591,
:codigo => '3520402',
:descricao => 'Distribuição de combustíveis gasosos por redes urbanas'
] );


			
Cnae.create!( [
:id => 592,
:codigo => '3530100',
:descricao => 'Produção e distribuição de vapor, água quente e ar condicionado'
] );


			
Cnae.create!( [
:id => 593,
:codigo => '3600601',
:descricao => 'Captação, tratamento e distribuição de água'
] );


			
Cnae.create!( [
:id => 594,
:codigo => '3600602',
:descricao => 'Distribuição de água por caminhões'
] );


			
Cnae.create!( [
:id => 595,
:codigo => '3701100',
:descricao => 'Gestão de redes de esgoto'
] );


			
Cnae.create!( [
:id => 596,
:codigo => '3702900',
:descricao => 'Atividades relacionadas a esgoto, exceto a gestão de redes'
] );


			
Cnae.create!( [
:id => 597,
:codigo => '3811400',
:descricao => 'Coleta de resíduos não-perigosos'
] );


			
Cnae.create!( [
:id => 598,
:codigo => '3812200',
:descricao => 'Coleta de resíduos perigosos'
] );


			
Cnae.create!( [
:id => 599,
:codigo => '3821100',
:descricao => 'Tratamento e disposição de resíduos não-perigosos'
] );


			
Cnae.create!( [
:id => 6,
:codigo => '0112102',
:descricao => 'Cultivo de juta'
] );


			
Cnae.create!( [
:id => 60,
:codigo => '0153901',
:descricao => 'Criação de caprinos'
] );


			
Cnae.create!( [
:id => 600,
:codigo => '3822000',
:descricao => 'Tratamento e disposição de resíduos perigosos'
] );


			
Cnae.create!( [
:id => 601,
:codigo => '3831901',
:descricao => 'Recuperação de sucatas de alumínio'
] );


			
Cnae.create!( [
:id => 602,
:codigo => '3831999',
:descricao => 'Recuperação de materiais metálicos, exceto alumínio'
] );


			
Cnae.create!( [
:id => 603,
:codigo => '3832700',
:descricao => 'Recuperação de materiais plásticos'
] );


			
Cnae.create!( [
:id => 604,
:codigo => '3839401',
:descricao => 'Usinas de compostagem'
] );


			
Cnae.create!( [
:id => 605,
:codigo => '3839499',
:descricao => 'Recuperação de materiais não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 606,
:codigo => '3900500',
:descricao => 'Descontaminação e outros serviços de gestão de resíduos'
] );


			
Cnae.create!( [
:id => 607,
:codigo => '4110700',
:descricao => 'Incorporação de empreendimentos imobiliários'
] );


			
Cnae.create!( [
:id => 608,
:codigo => '4120400',
:descricao => 'Construção de edifícios'
] );


			
Cnae.create!( [
:id => 609,
:codigo => '4211101',
:descricao => 'Construção de rodovias e ferrovias'
] );


			
Cnae.create!( [
:id => 61,
:codigo => '0153902',
:descricao => 'Criação de ovinos, inclusive para produção de lã'
] );


			
Cnae.create!( [
:id => 610,
:codigo => '4211102',
:descricao => 'Pintura para sinalização em pistas rodoviárias e aeroportos'
] );


			
Cnae.create!( [
:id => 611,
:codigo => '4212000',
:descricao => 'Construção de obras-de-arte especiais'
] );


			
Cnae.create!( [
:id => 612,
:codigo => '4213800',
:descricao => 'Obras de urbanização - ruas, praças e calçadas'
] );


			
Cnae.create!( [
:id => 613,
:codigo => '4221901',
:descricao => 'Construção de barragens e represas para geração de energia elétrica'
] );


			
Cnae.create!( [
:id => 614,
:codigo => '4221902',
:descricao => 'Construção de estações e redes de distribuição de energia elétrica'
] );


			
Cnae.create!( [
:id => 615,
:codigo => '4221903',
:descricao => 'Manutenção de redes de distribuição de energia elétrica'
] );


			
Cnae.create!( [
:id => 616,
:codigo => '4221904',
:descricao => 'Construção de estações e redes de telecomunicações'
] );


			
Cnae.create!( [
:id => 617,
:codigo => '4221905',
:descricao => 'Manutenção de estações e redes de telecomunicações'
] );


			
Cnae.create!( [
:id => 618,
:codigo => '4222701',
:descricao => 'Construção de redes de abastecimento de água, coleta de esgoto e construções correlatas, exceto obras de irrigação'
] );


			
Cnae.create!( [
:id => 619,
:codigo => '4222702',
:descricao => 'Obras de irrigação'
] );


			
Cnae.create!( [
:id => 62,
:codigo => '0154700',
:descricao => 'Criação de suínos'
] );


			
Cnae.create!( [
:id => 620,
:codigo => '4223500',
:descricao => 'Construção de redes de transportes por dutos, exceto para água e esgoto'
] );


			
Cnae.create!( [
:id => 621,
:codigo => '4291000',
:descricao => 'Obras portuárias, marítimas e fluviais'
] );


			
Cnae.create!( [
:id => 622,
:codigo => '4292801',
:descricao => 'Montagem de estruturas metálicas'
] );


			
Cnae.create!( [
:id => 623,
:codigo => '4292802',
:descricao => 'Obras de montagem industrial'
] );


			
Cnae.create!( [
:id => 624,
:codigo => '4299501',
:descricao => 'Construção de instalações esportivas e recreativas'
] );


			
Cnae.create!( [
:id => 625,
:codigo => '4299599',
:descricao => 'Outras obras de engenharia civil não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 626,
:codigo => '4311801',
:descricao => 'Demolição de edifícios e outras estruturas'
] );


			
Cnae.create!( [
:id => 627,
:codigo => '4311802',
:descricao => 'Preparação de canteiro e limpeza de terreno'
] );


			
Cnae.create!( [
:id => 628,
:codigo => '4312600',
:descricao => 'Perfurações e sondagens'
] );


			
Cnae.create!( [
:id => 629,
:codigo => '4313400',
:descricao => 'Obras de terraplenagem'
] );


			
Cnae.create!( [
:id => 63,
:codigo => '0155501',
:descricao => 'Criação de frangos para corte'
] );


			
Cnae.create!( [
:id => 630,
:codigo => '4319300',
:descricao => 'Serviços de preparação do terreno não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 631,
:codigo => '4321500',
:descricao => 'Instalação e manutenção elétrica'
] );


			
Cnae.create!( [
:id => 632,
:codigo => '4322301',
:descricao => 'Instalações hidráulicas, sanitárias e de gás'
] );


			
Cnae.create!( [
:id => 633,
:codigo => '4322302',
:descricao => 'Instalação e manutenção de sistemas centrais de ar condicionado, de ventilação e refrigeração'
] );


			
Cnae.create!( [
:id => 634,
:codigo => '4322303',
:descricao => 'Instalações de sistema de prevenção contra incêndio'
] );


			
Cnae.create!( [
:id => 635,
:codigo => '4329101',
:descricao => 'Instalação de painéis publicitários'
] );


			
Cnae.create!( [
:id => 636,
:codigo => '4329102',
:descricao => 'Instalação de equipamentos para orientação à navegação marítima, fluvial e lacustre'
] );


			
Cnae.create!( [
:id => 637,
:codigo => '4329103',
:descricao => 'Instalação, manutenção e reparação de elevadores, escadas e esteiras rolantes'
] );


			
Cnae.create!( [
:id => 638,
:codigo => '4329104',
:descricao => 'Montagem e instalação de sistemas e equipamentos de iluminação e sinalização em vias públicas, portos e aeroportos'
] );


			
Cnae.create!( [
:id => 639,
:codigo => '4329105',
:descricao => 'Tratamentos térmicos, acústicos ou de vibração'
] );


			
Cnae.create!( [
:id => 64,
:codigo => '0155502',
:descricao => 'Produção de pintos de um dia'
] );


			
Cnae.create!( [
:id => 640,
:codigo => '4329199',
:descricao => 'Outras obras de instalações em construções não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 641,
:codigo => '4330401',
:descricao => 'Impermeabilização em obras de engenharia civil'
] );


			
Cnae.create!( [
:id => 642,
:codigo => '4330402',
:descricao => 'Instalação de portas, janelas, tetos, divisórias e armários embutidos de qualquer material'
] );


			
Cnae.create!( [
:id => 643,
:codigo => '4330403',
:descricao => 'Obras de acabamento em gesso e estuque'
] );


			
Cnae.create!( [
:id => 644,
:codigo => '4330404',
:descricao => 'Serviços de pintura de edifícios em geral'
] );


			
Cnae.create!( [
:id => 645,
:codigo => '4330405',
:descricao => 'Aplicação de revestimentos e de resinas em interiores e exteriores'
] );


			
Cnae.create!( [
:id => 646,
:codigo => '4330499',
:descricao => 'Outras obras de acabamento da construção'
] );


			
Cnae.create!( [
:id => 647,
:codigo => '4391600',
:descricao => 'Obras de fundações'
] );


			
Cnae.create!( [
:id => 648,
:codigo => '4399101',
:descricao => 'Administração de obras'
] );


			
Cnae.create!( [
:id => 649,
:codigo => '4399102',
:descricao => 'Montagem e desmontagem de andaimes e outras estruturas temporárias'
] );


			
Cnae.create!( [
:id => 65,
:codigo => '0155503',
:descricao => 'Criação de outros galináceos, exceto para corte'
] );


			
Cnae.create!( [
:id => 650,
:codigo => '4399103',
:descricao => 'Obras de alvenaria'
] );


			
Cnae.create!( [
:id => 651,
:codigo => '4399104',
:descricao => 'Serviços de operação e fornecimento de equipamentos para transporte e elevação de cargas e pessoas para uso em obras'
] );


			
Cnae.create!( [
:id => 652,
:codigo => '4399105',
:descricao => 'Perfuração e construção de poços de água'
] );


			
Cnae.create!( [
:id => 653,
:codigo => '4399199',
:descricao => 'Serviços especializados para construção não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 654,
:codigo => '4511101',
:descricao => 'Comércio a varejo de automóveis, camionetas e utilitários novos'
] );


			
Cnae.create!( [
:id => 655,
:codigo => '4511102',
:descricao => 'Comércio a varejo de automóveis, camionetas e utilitários usados'
] );


			
Cnae.create!( [
:id => 656,
:codigo => '4511103',
:descricao => 'Comércio por atacado de automóveis, camionetas e utilitários novos e usados'
] );


			
Cnae.create!( [
:id => 657,
:codigo => '4511104',
:descricao => 'Comércio por atacado de caminhões novos e usados'
] );


			
Cnae.create!( [
:id => 658,
:codigo => '4511105',
:descricao => 'Comércio por atacado de reboques e semi-reboques novos e usados'
] );


			
Cnae.create!( [
:id => 659,
:codigo => '4511106',
:descricao => 'Comércio por atacado de ônibus e microônibus novos e usados'
] );


			
Cnae.create!( [
:id => 66,
:codigo => '0155504',
:descricao => 'Criação de aves, exceto galináceos'
] );


			
Cnae.create!( [
:id => 660,
:codigo => '4512901',
:descricao => 'Representantes comerciais e agentes do comércio de veículos automotores'
] );


			
Cnae.create!( [
:id => 661,
:codigo => '4512902',
:descricao => 'Comércio sob consignação de veículos automotores'
] );


			
Cnae.create!( [
:id => 662,
:codigo => '4520001',
:descricao => 'Serviços de manutenção e reparação mecânica de veículos automotores'
] );


			
Cnae.create!( [
:id => 663,
:codigo => '4520002',
:descricao => 'Serviços de lanternagem ou funilaria e pintura de veículos automotores'
] );


			
Cnae.create!( [
:id => 664,
:codigo => '4520003',
:descricao => 'Serviços de manutenção e reparação elétrica de veículos automotores'
] );


			
Cnae.create!( [
:id => 665,
:codigo => '4520004',
:descricao => 'Serviços de alinhamento e balanceamento de veículos automotores'
] );


			
Cnae.create!( [
:id => 666,
:codigo => '4520005',
:descricao => 'Serviços de lavagem, lubrificação e polimento de veículos automotores'
] );


			
Cnae.create!( [
:id => 667,
:codigo => '4520006',
:descricao => 'Serviços de borracharia para veículos automotores'
] );


			
Cnae.create!( [
:id => 668,
:codigo => '4520007',
:descricao => 'Serviços de instalação, manutenção e reparação de acessórios para veículos automotores'
] );


			
Cnae.create!( [
:id => 669,
:codigo => '4520008',
:descricao => 'Serviços de capotaria'
] );


			
Cnae.create!( [
:id => 67,
:codigo => '0155505',
:descricao => 'Produção de ovos'
] );


			
Cnae.create!( [
:id => 670,
:codigo => '4530701',
:descricao => 'Comércio por atacado de peças e acessórios novos para veículos automotores'
] );


			
Cnae.create!( [
:id => 671,
:codigo => '4530702',
:descricao => 'Comércio por atacado de pneumáticos e câmaras-de-ar'
] );


			
Cnae.create!( [
:id => 672,
:codigo => '4530703',
:descricao => 'Comércio a varejo de peças e acessórios novos para veículos automotores'
] );


			
Cnae.create!( [
:id => 673,
:codigo => '4530704',
:descricao => 'Comércio a varejo de peças e acessórios usados para veículos automotores'
] );


			
Cnae.create!( [
:id => 674,
:codigo => '4530705',
:descricao => 'Comércio a varejo de pneumáticos e câmaras-de-ar'
] );


			
Cnae.create!( [
:id => 675,
:codigo => '4530706',
:descricao => 'Representantes comerciais e agentes do comércio de peças e acessórios novos e usados para veículos automotores'
] );


			
Cnae.create!( [
:id => 676,
:codigo => '4541201',
:descricao => 'Comércio por atacado de motocicletas e motonetas'
] );


			
Cnae.create!( [
:id => 677,
:codigo => '4541202',
:descricao => 'Comércio por atacado de peças e acessórios para motocicletas e motonetas'
] );


			
Cnae.create!( [
:id => 678,
:codigo => '4541203',
:descricao => 'Comércio a varejo de motocicletas e motonetas novas'
] );


			
Cnae.create!( [
:id => 679,
:codigo => '4541204',
:descricao => 'Comércio a varejo de motocicletas e motonetas usadas'
] );


			
Cnae.create!( [
:id => 68,
:codigo => '0159801',
:descricao => 'Apicultura'
] );


			
Cnae.create!( [
:id => 680,
:codigo => '4541205',
:descricao => 'Comércio a varejo de peças e acessórios para motocicletas e motonetas'
] );


			
Cnae.create!( [
:id => 681,
:codigo => '4542101',
:descricao => 'Representantes comerciais e agentes do comércio de motocicletas e motonetas, peças e acessórios'
] );


			
Cnae.create!( [
:id => 682,
:codigo => '4542102',
:descricao => 'Comércio sob consignação de motocicletas e motonetas'
] );


			
Cnae.create!( [
:id => 683,
:codigo => '4543900',
:descricao => 'Manutenção e reparação de motocicletas e motonetas'
] );


			
Cnae.create!( [
:id => 684,
:codigo => '4611700',
:descricao => 'Representantes comerciais e agentes do comércio de matérias-primas agrícolas e animais vivos'
] );


			
Cnae.create!( [
:id => 685,
:codigo => '4612500',
:descricao => 'Representantes comerciais e agentes do comércio de combustíveis, minerais, produtos siderúrgicos e químicos'
] );


			
Cnae.create!( [
:id => 686,
:codigo => '4613300',
:descricao => 'Representantes comerciais e agentes do comércio de madeira, material de construção e ferragens'
] );


			
Cnae.create!( [
:id => 687,
:codigo => '4614100',
:descricao => 'Representantes comerciais e agentes do comércio de máquinas, equipamentos, embarcações e aeronaves'
] );


			
Cnae.create!( [
:id => 688,
:codigo => '4615000',
:descricao => 'Representantes comerciais e agentes do comércio de eletrodomésticos, móveis e artigos de uso doméstico'
] );


			
Cnae.create!( [
:id => 689,
:codigo => '4616800',
:descricao => 'Representantes comerciais e agentes do comércio de têxteis, vestuário, calçados e artigos de viagem'
] );


			
Cnae.create!( [
:id => 69,
:codigo => '0159802',
:descricao => 'Criação de animais de estimação'
] );


			
Cnae.create!( [
:id => 690,
:codigo => '4617600',
:descricao => 'Representantes comerciais e agentes do comércio de produtos alimentícios, bebidas e fumo'
] );


			
Cnae.create!( [
:id => 691,
:codigo => '4618401',
:descricao => 'Representantes comerciais e agentes do comércio de medicamentos, cosméticos e produtos de perfumaria'
] );


			
Cnae.create!( [
:id => 692,
:codigo => '4618402',
:descricao => 'Representantes comerciais e agentes do comércio de instrumentos e materiais odonto-médico-hospitalares'
] );


			
Cnae.create!( [
:id => 693,
:codigo => '4618403',
:descricao => 'Representantes comerciais e agentes do comércio de jornais, revistas e outras publicações'
] );


			
Cnae.create!( [
:id => 694,
:codigo => '4618499',
:descricao => 'Outros representantes comerciais e agentes do comércio especializado em produtos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 695,
:codigo => '4619200',
:descricao => 'Representantes comerciais e agentes do comércio de mercadorias em geral não especializado'
] );


			
Cnae.create!( [
:id => 696,
:codigo => '4621400',
:descricao => 'Comércio atacadista de café em grão'
] );


			
Cnae.create!( [
:id => 697,
:codigo => '4622200',
:descricao => 'Comércio atacadista de soja'
] );


			
Cnae.create!( [
:id => 698,
:codigo => '4623101',
:descricao => 'Comércio atacadista de animais vivos'
] );


			
Cnae.create!( [
:id => 699,
:codigo => '4623102',
:descricao => 'Comércio atacadista de couros, lãs, peles e outros subprodutos não-comestíveis de origem animal'
] );


			
Cnae.create!( [
:id => 7,
:codigo => '0112199',
:descricao => 'Cultivo de outras fibras de lavoura temporária não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 70,
:codigo => '0159803',
:descricao => 'Criação de escargô'
] );


			
Cnae.create!( [
:id => 700,
:codigo => '4623103',
:descricao => 'Comércio atacadista de algodão'
] );


			
Cnae.create!( [
:id => 701,
:codigo => '4623104',
:descricao => 'Comércio atacadista de fumo em folha não beneficiado'
] );


			
Cnae.create!( [
:id => 702,
:codigo => '4623105',
:descricao => 'Comércio atacadista de cacau'
] );


			
Cnae.create!( [
:id => 703,
:codigo => '4623106',
:descricao => 'Comércio atacadista de sementes, flores, plantas e gramas'
] );


			
Cnae.create!( [
:id => 704,
:codigo => '4623107',
:descricao => 'Comércio atacadista de sisal'
] );


			
Cnae.create!( [
:id => 705,
:codigo => '4623108',
:descricao => 'Comércio atacadista de matérias-primas agrícolas com atividade de fracionamento e acondicionamento associada'
] );


			
Cnae.create!( [
:id => 706,
:codigo => '4623109',
:descricao => 'Comércio atacadista de alimentos para animais'
] );


			
Cnae.create!( [
:id => 707,
:codigo => '4623199',
:descricao => 'Comércio atacadista de matérias-primas agrícolas não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 708,
:codigo => '4631100',
:descricao => 'Comércio atacadista de leite e laticínios'
] );


			
Cnae.create!( [
:id => 709,
:codigo => '4632001',
:descricao => 'Comércio atacadista de cereais e leguminosas beneficiados'
] );


			
Cnae.create!( [
:id => 71,
:codigo => '0159804',
:descricao => 'Criação de bicho-da-seda'
] );


			
Cnae.create!( [
:id => 710,
:codigo => '4632002',
:descricao => 'Comércio atacadista de farinhas, amidos e féculas'
] );


			
Cnae.create!( [
:id => 711,
:codigo => '4632003',
:descricao => 'Comércio atacadista de cereais e leguminosas beneficiados, farinhas, amidos e féculas, com atividade de fracionamento e acondicionamento associada'
] );


			
Cnae.create!( [
:id => 712,
:codigo => '4633801',
:descricao => 'Comércio atacadista de frutas, verduras, raízes, tubérculos, hortaliças e legumes frescos'
] );


			
Cnae.create!( [
:id => 713,
:codigo => '4633802',
:descricao => 'Comércio atacadista de aves vivas e ovos'
] );


			
Cnae.create!( [
:id => 714,
:codigo => '4633803',
:descricao => 'Comércio atacadista de coelhos e outros pequenos animais vivos para alimentação'
] );


			
Cnae.create!( [
:id => 715,
:codigo => '4634601',
:descricao => 'Comércio atacadista de carnes bovinas e suínas e derivados'
] );


			
Cnae.create!( [
:id => 716,
:codigo => '4634602',
:descricao => 'Comércio atacadista de aves abatidas e derivados'
] );


			
Cnae.create!( [
:id => 717,
:codigo => '4634603',
:descricao => 'Comércio atacadista de pescados e frutos do mar'
] );


			
Cnae.create!( [
:id => 718,
:codigo => '4634699',
:descricao => 'Comércio atacadista de carnes e derivados de outros animais'
] );


			
Cnae.create!( [
:id => 719,
:codigo => '4635401',
:descricao => 'Comércio atacadista de água mineral'
] );


			
Cnae.create!( [
:id => 72,
:codigo => '0159899',
:descricao => 'Criação de outros animais não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 720,
:codigo => '4635402',
:descricao => 'Comércio atacadista de cerveja, chope e refrigerante'
] );


			
Cnae.create!( [
:id => 721,
:codigo => '4635403',
:descricao => 'Comércio atacadista de bebidas com atividade de fracionamento e acondicionamento associada'
] );


			
Cnae.create!( [
:id => 722,
:codigo => '4635499',
:descricao => 'Comércio atacadista de bebidas não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 723,
:codigo => '4636201',
:descricao => 'Comércio atacadista de fumo beneficiado'
] );


			
Cnae.create!( [
:id => 724,
:codigo => '4636202',
:descricao => 'Comércio atacadista de cigarros, cigarrilhas e charutos'
] );


			
Cnae.create!( [
:id => 725,
:codigo => '4637101',
:descricao => 'Comércio atacadista de café torrado, moído e solúvel'
] );


			
Cnae.create!( [
:id => 726,
:codigo => '4637102',
:descricao => 'Comércio atacadista de açúcar'
] );


			
Cnae.create!( [
:id => 727,
:codigo => '4637103',
:descricao => 'Comércio atacadista de óleos e gorduras'
] );


			
Cnae.create!( [
:id => 728,
:codigo => '4637104',
:descricao => 'Comércio atacadista de pães, bolos, biscoitos e similares'
] );


			
Cnae.create!( [
:id => 729,
:codigo => '4637105',
:descricao => 'Comércio atacadista de massas alimentícias'
] );


			
Cnae.create!( [
:id => 73,
:codigo => '0161001',
:descricao => 'Serviço de pulverização e controle de pragas agrícolas'
] );


			
Cnae.create!( [
:id => 730,
:codigo => '4637106',
:descricao => 'Comércio atacadista de sorvetes'
] );


			
Cnae.create!( [
:id => 731,
:codigo => '4637107',
:descricao => 'Comércio atacadista de chocolates, confeitos, balas, bombons e semelhantes'
] );


			
Cnae.create!( [
:id => 732,
:codigo => '4637199',
:descricao => 'Comércio atacadista especializado em outros produtos alimentícios não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 733,
:codigo => '4639701',
:descricao => 'Comércio atacadista de produtos alimentícios em geral'
] );

Cnae.create!( [
:id => 735,
:codigo => '4641901',
:descricao => 'Comércio atacadista de tecidos'
] );


			
Cnae.create!( [
:id => 736,
:codigo => '4641902',
:descricao => 'Comércio atacadista de artigos de cama, mesa e banho'
] );


			
Cnae.create!( [
:id => 737,
:codigo => '4641903',
:descricao => 'Comércio atacadista de artigos de armarinho'
] );


			
Cnae.create!( [
:id => 738,
:codigo => '4642701',
:descricao => 'Comércio atacadista de artigos do vestuário e acessórios, exceto profissionais e de segurança'
] );


			
Cnae.create!( [
:id => 739,
:codigo => '4642702',
:descricao => 'Comércio atacadista de roupas e acessórios para uso profissional e de segurança do trabalho'
] );


			
Cnae.create!( [
:id => 74,
:codigo => '0161002',
:descricao => 'Serviço de poda de árvores para lavouras'
] );


			
Cnae.create!( [
:id => 740,
:codigo => '4643501',
:descricao => 'Comércio atacadista de calçados'
] );


			
Cnae.create!( [
:id => 741,
:codigo => '4643502',
:descricao => 'Comércio atacadista de bolsas, malas e artigos de viagem'
] );


			
Cnae.create!( [
:id => 742,
:codigo => '4644301',
:descricao => 'Comércio atacadista de medicamentos e drogas de uso humano'
] );


			
Cnae.create!( [
:id => 743,
:codigo => '4644302',
:descricao => 'Comércio atacadista de medicamentos e drogas de uso veterinário'
] );


			
Cnae.create!( [
:id => 744,
:codigo => '4645101',
:descricao => 'Comércio atacadista de instrumentos e materiais para uso médico, cirúrgico, hospitalar e de laboratórios'
] );


			
Cnae.create!( [
:id => 745,
:codigo => '4645102',
:descricao => 'Comércio atacadista de próteses e artigos de ortopedia'
] );


			
Cnae.create!( [
:id => 746,
:codigo => '4645103',
:descricao => 'Comércio atacadista de produtos odontológicos'
] );


			
Cnae.create!( [
:id => 747,
:codigo => '4646001',
:descricao => 'Comércio atacadista de cosméticos e produtos de perfumaria'
] );


			
Cnae.create!( [
:id => 748,
:codigo => '4646002',
:descricao => 'Comércio atacadista de produtos de higiene pessoal'
] );


			
Cnae.create!( [
:id => 749,
:codigo => '4647801',
:descricao => 'Comércio atacadista de artigos de escritório e de papelaria'
] );


			
Cnae.create!( [
:id => 75,
:codigo => '0161003',
:descricao => 'Serviço de preparação de terreno, cultivo e colheita'
] );


			
Cnae.create!( [
:id => 750,
:codigo => '4647802',
:descricao => 'Comércio atacadista de livros, jornais e outras publicações'
] );


			
Cnae.create!( [
:id => 751,
:codigo => '4649401',
:descricao => 'Comércio atacadista de equipamentos elétricos de uso pessoal e doméstico'
] );


			
Cnae.create!( [
:id => 752,
:codigo => '4649402',
:descricao => 'Comércio atacadista de aparelhos eletrônicos de uso pessoal e doméstico'
] );


			
Cnae.create!( [
:id => 753,
:codigo => '4649403',
:descricao => 'Comércio atacadista de bicicletas, triciclos e outros veículos recreativos'
] );


			
Cnae.create!( [
:id => 754,
:codigo => '4649404',
:descricao => 'Comércio atacadista de móveis e artigos de colchoaria'
] );


			
Cnae.create!( [
:id => 755,
:codigo => '4649405',
:descricao => 'Comércio atacadista de artigos de tapeçaria; persianas e cortinas'
] );


			
Cnae.create!( [
:id => 756,
:codigo => '4649406',
:descricao => 'Comércio atacadista de lustres, luminárias e abajures'
] );


			
Cnae.create!( [
:id => 757,
:codigo => '4649407',
:descricao => 'Comércio atacadista de filmes, CDs, DVDs, fitas e discos'
] );


			
Cnae.create!( [
:id => 758,
:codigo => '4649408',
:descricao => 'Comércio atacadista de produtos de higiene, limpeza e conservação domiciliar'
] );


			
Cnae.create!( [
:id => 759,
:codigo => '4649409',
:descricao => 'Comércio atacadista de produtos de higiene, limpeza e conservação domiciliar, com atividade de fracionamento e acondicionamento associada'
] );


			
Cnae.create!( [
:id => 76,
:codigo => '0161099',
:descricao => 'Atividades de apoio à agricultura não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 760,
:codigo => '4649410',
:descricao => 'Comércio atacadista de jóias, relógios e bijuterias, inclusive pedras preciosas e semipreciosas lapidadas'
] );


			
Cnae.create!( [
:id => 761,
:codigo => '4649499',
:descricao => 'Comércio atacadista de outros equipamentos e artigos de uso pessoal e doméstico não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 762,
:codigo => '4651601',
:descricao => 'Comércio atacadista de equipamentos de informática'
] );


			
Cnae.create!( [
:id => 763,
:codigo => '4651602',
:descricao => 'Comércio atacadista de suprimentos para informática'
] );


			
Cnae.create!( [
:id => 764,
:codigo => '4652400',
:descricao => 'Comércio atacadista de componentes eletrônicos e equipamentos de telefonia e comunicação'
] );


			
Cnae.create!( [
:id => 765,
:codigo => '4661300',
:descricao => 'Comércio atacadista de máquinas, aparelhos e equipamentos para uso agropecuário; partes e peças'
] );


			
Cnae.create!( [
:id => 766,
:codigo => '4662100',
:descricao => 'Comércio atacadista de máquinas, equipamentos para terraplenagem, mineração e construção; partes e peças'
] );


			
Cnae.create!( [
:id => 767,
:codigo => '4663000',
:descricao => 'Comércio atacadista de máquinas e equipamentos para uso industrial; partes e peças'
] );


			
Cnae.create!( [
:id => 768,
:codigo => '4664800',
:descricao => 'Comércio atacadista de máquinas, aparelhos e equipamentos para uso odonto-médico-hospitalar; partes e peças'
] );


			
Cnae.create!( [
:id => 769,
:codigo => '4665600',
:descricao => 'Comércio atacadista de máquinas e equipamentos para uso comercial; partes e peças'
] );


			
Cnae.create!( [
:id => 77,
:codigo => '0162801',
:descricao => 'Serviço de inseminação artificial em animais'
] );


			
Cnae.create!( [
:id => 770,
:codigo => '4669901',
:descricao => 'Comércio atacadista de bombas e compressores; partes e peças'
] );


			
Cnae.create!( [
:id => 771,
:codigo => '4669999',
:descricao => 'Comércio atacadista de outras máquinas e equipamentos não especificados anteriormente; partes e peças'
] );


			
Cnae.create!( [
:id => 772,
:codigo => '4671100',
:descricao => 'Comércio atacadista de madeira e produtos derivados'
] );


			
Cnae.create!( [
:id => 773,
:codigo => '4672900',
:descricao => 'Comércio atacadista de ferragens e ferramentas'
] );


			
Cnae.create!( [
:id => 774,
:codigo => '4673700',
:descricao => 'Comércio atacadista de material elétrico'
] );


			
Cnae.create!( [
:id => 775,
:codigo => '4674500',
:descricao => 'Comércio atacadista de cimento'
] );


			
Cnae.create!( [
:id => 776,
:codigo => '4679601',
:descricao => 'Comércio atacadista de tintas, vernizes e similares'
] );


			
Cnae.create!( [
:id => 777,
:codigo => '4679602',
:descricao => 'Comércio atacadista de mármores e granitos'
] );


			
Cnae.create!( [
:id => 778,
:codigo => '4679603',
:descricao => 'Comércio atacadista de vidros, espelhos e vitrais'
] );


			
Cnae.create!( [
:id => 779,
:codigo => '4679604',
:descricao => 'Comércio atacadista especializado de materiais de construção não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 78,
:codigo => '0162802',
:descricao => 'Serviço de tosquiamento de ovinos'
] );


			
Cnae.create!( [
:id => 780,
:codigo => '4679699',
:descricao => 'Comércio atacadista de materiais de construção em geral'
] );


			
Cnae.create!( [
:id => 781,
:codigo => '4681801',
:descricao => 'Comércio atacadista de álcool carburante, biodiesel, gasolina e demais derivados de petróleo, exceto lubrificantes, não realizado por transportador retalhista (TRR)'
] );


			
Cnae.create!( [
:id => 782,
:codigo => '4681802',
:descricao => 'Comércio atacadista de combustíveis realizado por transportador retalhista (TRR)'
] );


			
Cnae.create!( [
:id => 783,
:codigo => '4681803',
:descricao => 'Comércio atacadista de combustíveis de origem vegetal, exceto álcool carburante'
] );


			
Cnae.create!( [
:id => 784,
:codigo => '4681804',
:descricao => 'Comércio atacadista de combustíveis de origem mineral em bruto'
] );


			
Cnae.create!( [
:id => 785,
:codigo => '4681805',
:descricao => 'Comércio atacadista de lubrificantes'
] );


			
Cnae.create!( [
:id => 786,
:codigo => '4682600',
:descricao => 'Comércio atacadista de gás liqüefeito de petróleo (GLP)'
] );


			
Cnae.create!( [
:id => 787,
:codigo => '4683400',
:descricao => 'Comércio atacadista de defensivos agrícolas, adubos, fertilizantes e corretivos do solo'
] );


			
Cnae.create!( [
:id => 788,
:codigo => '4684201',
:descricao => 'Comércio atacadista de resinas e elastômeros'
] );


			
Cnae.create!( [
:id => 789,
:codigo => '4684202',
:descricao => 'Comércio atacadista de solventes'
] );


			
Cnae.create!( [
:id => 79,
:codigo => '0162803',
:descricao => 'Serviço de manejo de animais'
] );


			
Cnae.create!( [
:id => 790,
:codigo => '4684299',
:descricao => 'Comércio atacadista de outros produtos químicos e petroquímicos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 791,
:codigo => '4685100',
:descricao => 'Comércio atacadista de produtos siderúrgicos e metalúrgicos, exceto para construção'
] );


			
Cnae.create!( [
:id => 792,
:codigo => '4686901',
:descricao => 'Comércio atacadista de papel e papelão em bruto'
] );


			
Cnae.create!( [
:id => 793,
:codigo => '4686902',
:descricao => 'Comércio atacadista de embalagens'
] );


			
Cnae.create!( [
:id => 794,
:codigo => '4687701',
:descricao => 'Comércio atacadista de resíduos de papel e papelão'
] );


			
Cnae.create!( [
:id => 795,
:codigo => '4687702',
:descricao => 'Comércio atacadista de resíduos e sucatas não-metálicos, exceto de papel e papelão'
] );


			
Cnae.create!( [
:id => 796,
:codigo => '4687703',
:descricao => 'Comércio atacadista de resíduos e sucatas metálicos'
] );


			
Cnae.create!( [
:id => 797,
:codigo => '4689301',
:descricao => 'Comércio atacadista de produtos da extração mineral, exceto combustíveis'
] );


			
Cnae.create!( [
:id => 798,
:codigo => '4689302',
:descricao => 'Comércio atacadista de fios e fibras beneficiados'
] );


			
Cnae.create!( [
:id => 799,
:codigo => '4689399',
:descricao => 'Comércio atacadista especializado em outros produtos intermediários não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 8,
:codigo => '0113000',
:descricao => 'Cultivo de cana-de-açúcar'
] );


			
Cnae.create!( [
:id => 80,
:codigo => '0162899',
:descricao => 'Atividades de apoio à pecuária não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 800,
:codigo => '4691500',
:descricao => 'Comércio atacadista de mercadorias em geral, com predominância de produtos alimentícios'
] );


			
Cnae.create!( [
:id => 801,
:codigo => '4692300',
:descricao => 'Comércio atacadista de mercadorias em geral, com predominância de insumos agropecuários'
] );


			
Cnae.create!( [
:id => 802,
:codigo => '4693100',
:descricao => 'Comércio atacadista de mercadorias em geral, sem predominância de alimentos ou de insumos agropecuários'
] );


			
Cnae.create!( [
:id => 803,
:codigo => '4711301',
:descricao => 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios - hipermercados'
] );


			
Cnae.create!( [
:id => 804,
:codigo => '4711302',
:descricao => 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios - supermercados'
] );


			
Cnae.create!( [
:id => 805,
:codigo => '4712100',
:descricao => 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios - minimercados, mercearias e armazéns'
] );


			
Cnae.create!( [
:id => 806,
:codigo => '4713001',
:descricao => 'Lojas de departamentos ou magazines'
] );


			
Cnae.create!( [
:id => 807,
:codigo => '4713002',
:descricao => 'Lojas de variedades, exceto lojas de departamentos ou magazines'
] );


			
Cnae.create!( [
:id => 808,
:codigo => '4713003',
:descricao => 'Lojas duty free de aeroportos internacionais'
] );


			
Cnae.create!( [
:id => 809,
:codigo => '4721102',
:descricao => 'Padaria e confeitaria com predominância de revenda'
] );


			
Cnae.create!( [
:id => 81,
:codigo => '0163600',
:descricao => 'Atividades de pós-colheita'
] );


			
Cnae.create!( [
:id => 810,
:codigo => '4721103',
:descricao => 'Comércio varejista de laticínios e frios'
] );


			
Cnae.create!( [
:id => 811,
:codigo => '4721104',
:descricao => 'Comércio varejista de doces, balas, bombons e semelhantes'
] );


			
Cnae.create!( [
:id => 812,
:codigo => '4722901',
:descricao => 'Comércio varejista de carnes - açougues'
] );


			
Cnae.create!( [
:id => 813,
:codigo => '4722902',
:descricao => 'Peixaria'
] );


			
Cnae.create!( [
:id => 814,
:codigo => '4723700',
:descricao => 'Comércio varejista de bebidas'
] );


			
Cnae.create!( [
:id => 815,
:codigo => '4724500',
:descricao => 'Comércio varejista de hortifrutigranjeiros'
] );


			
Cnae.create!( [
:id => 816,
:codigo => '4729601',
:descricao => 'Tabacaria'
] );


			
Cnae.create!( [
:id => 817,
:codigo => '4729602',
:descricao => 'Comércio varejista de mercadorias em lojas de conveniência'
] );


			
Cnae.create!( [
:id => 818,
:codigo => '4729699',
:descricao => 'Comércio varejista de produtos alimentícios em geral ou especializado em produtos alimentícios não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 819,
:codigo => '4731800',
:descricao => 'Comércio varejista de combustíveis para veículos automotores'
] );


			
Cnae.create!( [
:id => 82,
:codigo => '0170900',
:descricao => 'Caça e serviços relacionados'
] );


			
Cnae.create!( [
:id => 820,
:codigo => '4732600',
:descricao => 'Comércio varejista de lubrificantes'
] );


			
Cnae.create!( [
:id => 821,
:codigo => '4741500',
:descricao => 'Comércio varejista de tintas e materiais para pintura'
] );


			
Cnae.create!( [
:id => 822,
:codigo => '4742300',
:descricao => 'Comércio varejista de material elétrico'
] );


			
Cnae.create!( [
:id => 823,
:codigo => '4743100',
:descricao => 'Comércio varejista de vidros'
] );


			
Cnae.create!( [
:id => 824,
:codigo => '4744001',
:descricao => 'Comércio varejista de ferragens e ferramentas'
] );


			
Cnae.create!( [
:id => 825,
:codigo => '4744002',
:descricao => 'Comércio varejista de madeira e artefatos'
] );


			
Cnae.create!( [
:id => 826,
:codigo => '4744003',
:descricao => 'Comércio varejista de materiais hidráulicos'
] );


			
Cnae.create!( [
:id => 827,
:codigo => '4744004',
:descricao => 'Comércio varejista de cal, areia, pedra britada, tijolos e telhas'
] );


			
Cnae.create!( [
:id => 828,
:codigo => '4744005',
:descricao => 'Comércio varejista de materiais de construção não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 829,
:codigo => '4744006',
:descricao => 'Comércio varejista de pedras para revestimento'
] );


			
Cnae.create!( [
:id => 83,
:codigo => '0210101',
:descricao => 'Cultivo de eucalipto'
] );


			
Cnae.create!( [
:id => 830,
:codigo => '4744099',
:descricao => 'Comércio varejista de materiais de construção em geral'
] );


			
Cnae.create!( [
:id => 831,
:codigo => '4751201',
:descricao => 'Comércio varejista especializado de equipamentos e suprimentos de informática'
] );


			
Cnae.create!( [
:id => 832,
:codigo => '4751202',
:descricao => 'Recarga de cartuchos para equipamentos de informática'
] );


			
Cnae.create!( [
:id => 833,
:codigo => '4752100',
:descricao => 'Comércio varejista especializado de equipamentos de telefonia e comunicação'
] );


			
Cnae.create!( [
:id => 834,
:codigo => '4753900',
:descricao => 'Comércio varejista especializado de eletrodomésticos e equipamentos de áudio e vídeo'
] );


			
Cnae.create!( [
:id => 835,
:codigo => '4754701',
:descricao => 'Comércio varejista de móveis'
] );


			
Cnae.create!( [
:id => 836,
:codigo => '4754702',
:descricao => 'Comércio varejista de artigos de colchoaria'
] );


			
Cnae.create!( [
:id => 837,
:codigo => '4754703',
:descricao => 'Comércio varejista de artigos de iluminação'
] );


			
Cnae.create!( [
:id => 838,
:codigo => '4755501',
:descricao => 'Comércio varejista de tecidos'
] );


			
Cnae.create!( [
:id => 839,
:codigo => '4755502',
:descricao => 'Comercio varejista de artigos de armarinho'
] );


			
Cnae.create!( [
:id => 84,
:codigo => '0210102',
:descricao => 'Cultivo de acácia-negra'
] );


			
Cnae.create!( [
:id => 840,
:codigo => '4755503',
:descricao => 'Comercio varejista de artigos de cama, mesa e banho'
] );


			
Cnae.create!( [
:id => 841,
:codigo => '4756300',
:descricao => 'Comércio varejista especializado de instrumentos musicais e acessórios'
] );


			
Cnae.create!( [
:id => 842,
:codigo => '4757100',
:descricao => 'Comércio varejista especializado de peças e acessórios para aparelhos eletroeletrônicos para uso doméstico, exceto informática e comunicação'
] );


			
Cnae.create!( [
:id => 843,
:codigo => '4759801',
:descricao => 'Comércio varejista de artigos de tapeçaria, cortinas e persianas'
] );


			
Cnae.create!( [
:id => 844,
:codigo => '4759899',
:descricao => 'Comércio varejista de outros artigos de uso doméstico não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 845,
:codigo => '4761001',
:descricao => 'Comércio varejista de livros'
] );


			
Cnae.create!( [
:id => 846,
:codigo => '4761002',
:descricao => 'Comércio varejista de jornais e revistas'
] );


			
Cnae.create!( [
:id => 847,
:codigo => '4761003',
:descricao => 'Comércio varejista de artigos de papelaria'
] );


			
Cnae.create!( [
:id => 848,
:codigo => '4762800',
:descricao => 'Comércio varejista de discos, CDs, DVDs e fitas'
] );


			
Cnae.create!( [
:id => 849,
:codigo => '4763601',
:descricao => 'Comércio varejista de brinquedos e artigos recreativos'
] );


			
Cnae.create!( [
:id => 85,
:codigo => '0210103',
:descricao => 'Cultivo de pinus'
] );


			
Cnae.create!( [
:id => 850,
:codigo => '4763602',
:descricao => 'Comércio varejista de artigos esportivos'
] );


			
Cnae.create!( [
:id => 851,
:codigo => '4763603',
:descricao => 'Comércio varejista de bicicletas e triciclos; peças e acessórios'
] );


			
Cnae.create!( [
:id => 852,
:codigo => '4763604',
:descricao => 'Comércio varejista de artigos de caça, pesca e camping'
] );


			
Cnae.create!( [
:id => 853,
:codigo => '4763605',
:descricao => 'Comércio varejista de embarcações e outros veículos recreativos; peças e acessórios'
] );


			
Cnae.create!( [
:id => 854,
:codigo => '4771701',
:descricao => 'Comércio varejista de produtos farmacêuticos, sem manipulação de fórmulas'
] );


			
Cnae.create!( [
:id => 855,
:codigo => '4771702',
:descricao => 'Comércio varejista de produtos farmacêuticos, com manipulação de fórmulas'
] );


			
Cnae.create!( [
:id => 856,
:codigo => '4771703',
:descricao => 'Comércio varejista de produtos farmacêuticos homeopáticos'
] );


			
Cnae.create!( [
:id => 857,
:codigo => '4771704',
:descricao => 'Comércio varejista de medicamentos veterinários'
] );


			
Cnae.create!( [
:id => 858,
:codigo => '4772500',
:descricao => 'Comércio varejista de cosméticos, produtos de perfumaria e de higiene pessoal'
] );


			
Cnae.create!( [
:id => 859,
:codigo => '4773300',
:descricao => 'Comércio varejista de artigos médicos e ortopédicos'
] );


			
Cnae.create!( [
:id => 86,
:codigo => '0210104',
:descricao => 'Cultivo de teca'
] );


			
Cnae.create!( [
:id => 860,
:codigo => '4774100',
:descricao => 'Comércio varejista de artigos de óptica'
] );


			
Cnae.create!( [
:id => 861,
:codigo => '4781400',
:descricao => 'Comércio varejista de artigos do vestuário e acessórios'
] );


			
Cnae.create!( [
:id => 862,
:codigo => '4782201',
:descricao => 'Comércio varejista de calçados'
] );


			
Cnae.create!( [
:id => 863,
:codigo => '4782202',
:descricao => 'Comércio varejista de artigos de viagem'
] );


			
Cnae.create!( [
:id => 864,
:codigo => '4783101',
:descricao => 'Comércio varejista de artigos de joalheria'
] );


			
Cnae.create!( [
:id => 865,
:codigo => '4783102',
:descricao => 'Comércio varejista de artigos de relojoaria'
] );


			
Cnae.create!( [
:id => 866,
:codigo => '4784900',
:descricao => 'Comércio varejista de gás liqüefeito de petróleo (GLP)'
] );


			
Cnae.create!( [
:id => 867,
:codigo => '4785701',
:descricao => 'Comércio varejista de antigüidades'
] );


			
Cnae.create!( [
:id => 868,
:codigo => '4785799',
:descricao => 'Comércio varejista de outros artigos usados'
] );


			
Cnae.create!( [
:id => 869,
:codigo => '4789001',
:descricao => 'Comércio varejista de suvenires, bijuterias e artesanatos'
] );


			
Cnae.create!( [
:id => 87,
:codigo => '0210105',
:descricao => 'Cultivo de espécies madeireiras, exceto eucalipto, acácia-negra, pinus e teca'
] );


			
Cnae.create!( [
:id => 870,
:codigo => '4789002',
:descricao => 'Comércio varejista de plantas e flores naturais'
] );


			
Cnae.create!( [
:id => 871,
:codigo => '4789003',
:descricao => 'Comércio varejista de objetos de arte'
] );


			
Cnae.create!( [
:id => 872,
:codigo => '4789004',
:descricao => 'Comércio varejista de animais vivos e de artigos e alimentos para animais de estimação'
] );


			
Cnae.create!( [
:id => 873,
:codigo => '4789005',
:descricao => 'Comércio varejista de produtos saneantes domissanitários'
] );


			
Cnae.create!( [
:id => 874,
:codigo => '4789006',
:descricao => 'Comércio varejista de fogos de artifício e artigos pirotécnicos'
] );


			
Cnae.create!( [
:id => 875,
:codigo => '4789007',
:descricao => 'Comércio varejista de equipamentos para escritório'
] );


			
Cnae.create!( [
:id => 876,
:codigo => '4789008',
:descricao => 'Comércio varejista de artigos fotográficos e para filmagem'
] );


			
Cnae.create!( [
:id => 877,
:codigo => '4789009',
:descricao => 'Comércio varejista de armas e munições'
] );


			
Cnae.create!( [
:id => 878,
:codigo => '4789099',
:descricao => 'Comércio varejista de outros produtos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 879,
:codigo => '4911600',
:descricao => 'Transporte ferroviário de carga'
] );


			
Cnae.create!( [
:id => 88,
:codigo => '0210106',
:descricao => 'Cultivo de mudas em viveiros florestais'
] );


			
Cnae.create!( [
:id => 880,
:codigo => '4912401',
:descricao => 'Transporte ferroviário de passageiros intermunicipal e interestadual'
] );


			
Cnae.create!( [
:id => 881,
:codigo => '4912402',
:descricao => 'Transporte ferroviário de passageiros municipal e em região metropolitana'
] );


			
Cnae.create!( [
:id => 882,
:codigo => '4912403',
:descricao => 'Transporte metroviário'
] );


			
Cnae.create!( [
:id => 883,
:codigo => '4921301',
:descricao => 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, municipal'
] );


			
Cnae.create!( [
:id => 884,
:codigo => '4921302',
:descricao => 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal em região metropolitana'
] );


			
Cnae.create!( [
:id => 885,
:codigo => '4922101',
:descricao => 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal, exceto em região metropolitana'
] );


			
Cnae.create!( [
:id => 886,
:codigo => '4922102',
:descricao => 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, interestadual'
] );


			
Cnae.create!( [
:id => 887,
:codigo => '4922103',
:descricao => 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, internacional'
] );


			
Cnae.create!( [
:id => 888,
:codigo => '4923001',
:descricao => 'Serviço de táxi'
] );


			
Cnae.create!( [
:id => 889,
:codigo => '4923002',
:descricao => 'Serviço de transporte de passageiros - locação de automóveis com motorista'
] );


			
Cnae.create!( [
:id => 89,
:codigo => '0210107',
:descricao => 'Extração de madeira em florestas plantadas'
] );


			
Cnae.create!( [
:id => 890,
:codigo => '4924800',
:descricao => 'Transporte escolar'
] );


			
Cnae.create!( [
:id => 891,
:codigo => '4929901',
:descricao => 'Transporte rodoviário coletivo de passageiros, sob regime de fretamento, municipal'
] );


			
Cnae.create!( [
:id => 892,
:codigo => '4929902',
:descricao => 'Transporte rodoviário coletivo de passageiros, sob regime de fretamento, intermunicipal, interestadual e internacional'
] );


			
Cnae.create!( [
:id => 893,
:codigo => '4929903',
:descricao => 'Organização de excursões em veículos rodoviários próprios, municipal'
] );


			
Cnae.create!( [
:id => 894,
:codigo => '4929904',
:descricao => 'Organização de excursões em veículos rodoviários próprios, intermunicipal, interestadual e internacional'
] );


			
Cnae.create!( [
:id => 895,
:codigo => '4929999',
:descricao => 'Outros transportes rodoviários de passageiros não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 896,
:codigo => '4930201',
:descricao => 'Transporte rodoviário de carga, exceto produtos perigosos e mudanças, municipal'
] );


			
Cnae.create!( [
:id => 897,
:codigo => '4930202',
:descricao => 'Transporte rodoviário de carga, exceto produtos perigosos e mudanças, intermunicipal, interestadual e internacional'
] );


			
Cnae.create!( [
:id => 898,
:codigo => '4930203',
:descricao => 'Transporte rodoviário de produtos perigosos'
] );


			
Cnae.create!( [
:id => 899,
:codigo => '4930204',
:descricao => 'Transporte rodoviário de mudanças'
] );


			
Cnae.create!( [
:id => 9,
:codigo => '0114800',
:descricao => 'Cultivo de fumo'
] );


			
Cnae.create!( [
:id => 90,
:codigo => '0210108',
:descricao => 'Produção de carvão vegetal - florestas plantadas'
] );


			
Cnae.create!( [
:id => 900,
:codigo => '4940000',
:descricao => 'Transporte dutoviário'
] );


			
Cnae.create!( [
:id => 901,
:codigo => '4950700',
:descricao => 'Trens turísticos, teleféricos e similares'
] );


			
Cnae.create!( [
:id => 902,
:codigo => '5011401',
:descricao => 'Transporte marítimo de cabotagem - Carga'
] );


			
Cnae.create!( [
:id => 903,
:codigo => '5011402',
:descricao => 'Transporte marítimo de cabotagem - passageiros'
] );


			
Cnae.create!( [
:id => 904,
:codigo => '5012201',
:descricao => 'Transporte marítimo de longo curso - Carga'
] );


			
Cnae.create!( [
:id => 905,
:codigo => '5012202',
:descricao => 'Transporte marítimo de longo curso - Passageiros'
] );


			
Cnae.create!( [
:id => 906,
:codigo => '5021101',
:descricao => 'Transporte por navegação interior de carga, municipal, exceto travessia'
] );


			
Cnae.create!( [
:id => 907,
:codigo => '5021102',
:descricao => 'Transporte por navegação interior de carga, intermunicipal, interestadual e internacional, exceto travessia'
] );


			
Cnae.create!( [
:id => 908,
:codigo => '5022001',
:descricao => 'Transporte por navegação interior de passageiros em linhas regulares, municipal, exceto travessia'
] );


			
Cnae.create!( [
:id => 909,
:codigo => '5022002',
:descricao => 'Transporte por navegação interior de passageiros em linhas regulares, intermunicipal, interestadual e internacional, exceto travessia'
] );


			
Cnae.create!( [
:id => 91,
:codigo => '0210109',
:descricao => 'Produção de casca de acácia-negra - florestas plantadas'
] );


			
Cnae.create!( [
:id => 910,
:codigo => '5030101',
:descricao => 'Navegação de apoio marítimo'
] );


			
Cnae.create!( [
:id => 911,
:codigo => '5030102',
:descricao => 'Navegação de apoio portuário'
] );


			
Cnae.create!( [
:id => 912,
:codigo => '5091201',
:descricao => 'Transporte por navegação de travessia, municipal'
] );


			
Cnae.create!( [
:id => 913,
:codigo => '5091202',
:descricao => 'Transporte por navegação de travessia, intermunicipal'
] );


			
Cnae.create!( [
:id => 914,
:codigo => '5099801',
:descricao => 'Transporte aquaviário para passeios turísticos'
] );


			
Cnae.create!( [
:id => 915,
:codigo => '5099899',
:descricao => 'Outros transportes aquaviários não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 916,
:codigo => '5111100',
:descricao => 'Transporte aéreo de passageiros regular'
] );


			
Cnae.create!( [
:id => 917,
:codigo => '5112901',
:descricao => 'Serviço de táxi aéreo e locação de aeronaves com tripulação'
] );


			
Cnae.create!( [
:id => 918,
:codigo => '5112999',
:descricao => 'Outros serviços de transporte aéreo de passageiros não-regular'
] );


			
Cnae.create!( [
:id => 919,
:codigo => '5120000',
:descricao => 'Transporte aéreo de carga'
] );


			
Cnae.create!( [
:id => 92,
:codigo => '0210199',
:descricao => 'Produção de produtos não-madeireiros não especificados anteriormente em florestas plantadas'
] );


			
Cnae.create!( [
:id => 920,
:codigo => '5130700',
:descricao => 'Transporte espacial'
] );


			
Cnae.create!( [
:id => 921,
:codigo => '5211701',
:descricao => 'Armazéns gerais - emissão de warrant'
] );


			
Cnae.create!( [
:id => 922,
:codigo => '5211702',
:descricao => 'Guarda-móveis'
] );


			
Cnae.create!( [
:id => 923,
:codigo => '5211799',
:descricao => 'Depósitos de mercadorias para terceiros, exceto armazéns gerais e guarda-móveis'
] );


			
Cnae.create!( [
:id => 924,
:codigo => '5212500',
:descricao => 'Carga e descarga'
] );


			
Cnae.create!( [
:id => 925,
:codigo => '5221400',
:descricao => 'Concessionárias de rodovias, pontes, túneis e serviços relacionados'
] );


			
Cnae.create!( [
:id => 926,
:codigo => '5222200',
:descricao => 'Terminais rodoviários e ferroviários'
] );


			
Cnae.create!( [
:id => 927,
:codigo => '5223100',
:descricao => 'Estacionamento de veículos'
] );


			
Cnae.create!( [
:id => 928,
:codigo => '5229001',
:descricao => 'Serviços de apoio ao transporte por táxi, inclusive centrais de chamada'
] );


			
Cnae.create!( [
:id => 929,
:codigo => '5229002',
:descricao => 'Serviços de reboque de veículos'
] );


			
Cnae.create!( [
:id => 93,
:codigo => '0220901',
:descricao => 'Extração de madeira em florestas nativas'
] );


			
Cnae.create!( [
:id => 930,
:codigo => '5229099',
:descricao => 'Outras atividades auxiliares dos transportes terrestres não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 931,
:codigo => '5231101',
:descricao => 'Administração da infra-estrutura portuária'
] );


			
Cnae.create!( [
:id => 932,
:codigo => '5231102',
:descricao => 'Operações de terminais'
] );


			
Cnae.create!( [
:id => 933,
:codigo => '5232000',
:descricao => 'Atividades de agenciamento marítimo'
] );


			
Cnae.create!( [
:id => 934,
:codigo => '5239700',
:descricao => 'Atividades auxiliares dos transportes aquaviários não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 935,
:codigo => '5240101',
:descricao => 'Operação dos aeroportos e campos de aterrissagem'
] );


			
Cnae.create!( [
:id => 936,
:codigo => '5240199',
:descricao => 'Atividades auxiliares dos transportes aéreos, exceto operação dos aeroportos e campos de aterrissagem'
] );


			
Cnae.create!( [
:id => 937,
:codigo => '5250801',
:descricao => 'Comissaria de despachos'
] );


			
Cnae.create!( [
:id => 938,
:codigo => '5250802',
:descricao => 'Atividades de despachantes aduaneiros'
] );


			
Cnae.create!( [
:id => 939,
:codigo => '5250803',
:descricao => 'Agenciamento de cargas, exceto para o transporte marítimo'
] );


			
Cnae.create!( [
:id => 94,
:codigo => '0220902',
:descricao => 'Produção de carvão vegetal - florestas nativas'
] );


			
Cnae.create!( [
:id => 940,
:codigo => '5250804',
:descricao => 'Organização logística do transporte de carga'
] );


			
Cnae.create!( [
:id => 941,
:codigo => '5250805',
:descricao => 'Operador de transporte multimodal - OTM'
] );


			
Cnae.create!( [
:id => 942,
:codigo => '5310501',
:descricao => 'Atividades do Correio Nacional'
] );


			
Cnae.create!( [
:id => 943,
:codigo => '5310502',
:descricao => 'Atividades de franqueadas e permissionárias do Correio Nacional'
] );


			
Cnae.create!( [
:id => 944,
:codigo => '5320201',
:descricao => 'Serviços de malote não realizados pelo Correio Nacional'
] );


			
Cnae.create!( [
:id => 945,
:codigo => '5320202',
:descricao => 'Serviços de entrega rápida'
] );


			
Cnae.create!( [
:id => 946,
:codigo => '5510801',
:descricao => 'Hotéis'
] );


			
Cnae.create!( [
:id => 947,
:codigo => '5510802',
:descricao => 'Apart-hotéis'
] );


			
Cnae.create!( [
:id => 948,
:codigo => '5510803',
:descricao => 'Motéis'
] );


			
Cnae.create!( [
:id => 949,
:codigo => '5590601',
:descricao => 'Albergues, exceto assistenciais'
] );


			
Cnae.create!( [
:id => 95,
:codigo => '0220903',
:descricao => 'Coleta de castanha-do-pará em florestas nativas'
] );


			
Cnae.create!( [
:id => 950,
:codigo => '5590602',
:descricao => 'Campings'
] );


			
Cnae.create!( [
:id => 951,
:codigo => '5590603',
:descricao => 'Pensões (alojamento)'
] );


			
Cnae.create!( [
:id => 952,
:codigo => '5590699',
:descricao => 'Outros alojamentos não especificados anteriormente'
] );


			
Cnae.create!( [
:id => 953,
:codigo => '5611201',
:descricao => 'Restaurantes e similares'
] );


			
Cnae.create!( [
:id => 954,
:codigo => '5611202',
:descricao => 'Bares e outros estabelecimentos especializados em servir bebidas'
] );


			
Cnae.create!( [
:id => 955,
:codigo => '5611203',
:descricao => 'Lanchonetes, casas de chá, de sucos e similares'
] );


			
Cnae.create!( [
:id => 956,
:codigo => '5612100',
:descricao => 'Serviços ambulantes de alimentação'
] );


			
Cnae.create!( [
:id => 957,
:codigo => '5620101',
:descricao => 'Fornecimento de alimentos preparados preponderantemente para empresas'
] );


			
Cnae.create!( [
:id => 958,
:codigo => '5620102',
:descricao => 'Serviços de alimentação para eventos e recepções - bufê'
] );


			
Cnae.create!( [
:id => 959,
:codigo => '5620103',
:descricao => 'Cantinas - serviços de alimentação privativos'
] );


			
Cnae.create!( [
:id => 96,
:codigo => '0220904',
:descricao => 'Coleta de látex em florestas nativas'
] );


			
Cnae.create!( [
:id => 960,
:codigo => '5620104',
:descricao => 'Fornecimento de alimentos preparados preponderantemente para consumo domiciliar'
] );


			
Cnae.create!( [
:id => 961,
:codigo => '5811500',
:descricao => 'Edição de livros'
] );


			
Cnae.create!( [
:id => 962,
:codigo => '5812300',
:descricao => 'Edição de jornais'
] );


			
Cnae.create!( [
:id => 963,
:codigo => '5813100',
:descricao => 'Edição de revistas'
] );


			
Cnae.create!( [
:id => 964,
:codigo => '5819100',
:descricao => 'Edição de cadastros, listas e outros produtos gráficos'
] );


			
Cnae.create!( [
:id => 965,
:codigo => '5821200',
:descricao => 'Edição integrada à impressão de livros'
] );


			
Cnae.create!( [
:id => 966,
:codigo => '5822100',
:descricao => 'Edição integrada à impressão de jornais'
] );


			
Cnae.create!( [
:id => 967,
:codigo => '5823900',
:descricao => 'Edição integrada à impressão de revistas'
] );


			
Cnae.create!( [
:id => 968,
:codigo => '5829800',
:descricao => 'Edição integrada à impressão de cadastros, listas e outros produtos gráficos'
] );


			
Cnae.create!( [
:id => 969,
:codigo => '5911101',
:descricao => 'Estúdios cinematográficos'
] );


			
Cnae.create!( [
:id => 97,
:codigo => '0220905',
:descricao => 'Coleta de palmito em florestas nativas'
] );


			
Cnae.create!( [
:id => 970,
:codigo => '5911102',
:descricao => 'Produção de filmes para publicidade'
] );


			
Cnae.create!( [
:id => 971,
:codigo => '5911199',
:descricao => 'Atividades de produção cinematográfica, de vídeos e de programas de televisão não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 972,
:codigo => '5912001',
:descricao => 'Serviços de dublagem'
] );


			
Cnae.create!( [
:id => 973,
:codigo => '5912002',
:descricao => 'Serviços de mixagem sonora em produção audiovisual'
] );


			
Cnae.create!( [
:id => 974,
:codigo => '5912099',
:descricao => 'Atividades de pós-produção cinematográfica, de vídeos e de programas de televisão não especificadas anteriormente'
] );


			
Cnae.create!( [
:id => 975,
:codigo => '5913800',
:descricao => 'Distribuição cinematográfica, de vídeo e de programas de televisão'
] );


			
Cnae.create!( [
:id => 976,
:codigo => '5914600',
:descricao => 'Atividades de exibição cinematográfica'
] );


			
Cnae.create!( [
:id => 977,
:codigo => '5920100',
:descricao => 'Atividades de gravação de som e de edição de música'
] );


			
Cnae.create!( [
:id => 978,
:codigo => '6010100',
:descricao => 'Atividades de rádio'
] );


			
Cnae.create!( [
:id => 979,
:codigo => '6021700',
:descricao => 'Atividades de televisão aberta'
] );


			
Cnae.create!( [
:id => 98,
:codigo => '0220906',
:descricao => 'Conservação de florestas nativas'
] );


			
Cnae.create!( [
:id => 980,
:codigo => '6022501',
:descricao => 'Programadoras'
] );


			
Cnae.create!( [
:id => 981,
:codigo => '6022502',
:descricao => 'Atividades relacionadas à televisão por assinatura, exceto programadoras'
] );


			
Cnae.create!( [
:id => 982,
:codigo => '6110801',
:descricao => 'Serviços de telefonia fixa comutada - STFC'
] );


			
Cnae.create!( [
:id => 983,
:codigo => '6110802',
:descricao => 'Serviços de redes de transporte de telecomunicações - SRTT'
] );	
Cnae.create!( [
:id => 984,
:codigo => '6110803',
:descricao => 'Serviços de comunicação multimídia - SCM'
] );
Cnae.create!( [
:id => 985,
:codigo => '6110899',
:descricao => 'Serviços de telecomunicações por fio não especificados anteriormente'
] );	
Cnae.create!( [
:id => 986,
:codigo => '6120501',
:descricao => 'Telefonia móvel celular'
] );
Cnae.create!( [
:id => 987,
:codigo => '6120502',
:descricao => 'Serviço móvel especializado - SME'
] );
Cnae.create!( [
:id => 988,
:codigo => '6120599',
:descricao => 'Serviços de telecomunicações sem fio não especificados anteriormente'
] );
Cnae.create!( [
:id => 989,
:codigo => '6130200',
:descricao => 'Telecomunicações por satélite'
] );	
Cnae.create!( [
:id => 99,
:codigo => '0220999',
:descricao => 'Coleta de produtos não-madeireiros não especificados anteriormente em florestas nativas'
] );
Cnae.create!( [
:id => 990,
:codigo => '6141800',
:descricao => 'Operadoras de televisão por assinatura por cabo'
] );
Cnae.create!( [
:id => 991,
:codigo => '6142600',
:descricao => 'Operadoras de televisão por assinatura por microondas'
] );
Cnae.create!( [
:id => 992,
:codigo => '6143400',
:descricao => 'Operadoras de televisão por assinatura por satélite'
] );	
Cnae.create!( [
:id => 993,
:codigo => '6190601',
:descricao => 'Provedores de acesso às redes de comunicações'
] );
Cnae.create!( [
:id => 994,
:codigo => '6190602',
:descricao => 'Provedores de voz sobre protocolo internet - VOIP'
] );
Cnae.create!( [
:id => 995,
:codigo => '6190699',
:descricao => 'Outras atividades de telecomunicações não especificadas anteriormente'
] );
Cnae.create!( [
:id => 996,
:codigo => '6201500',
:descricao => 'Desenvolvimento de programas de computador sob encomenda'
] );
Cnae.create!( [
:id => 997,
:codigo => '6202300',
:descricao => 'Desenvolvimento e licenciamento de programas de computador customizáveis'
] );	
Cnae.create!( [
:id => 998,
:codigo => '6203100',
:descricao => 'Desenvolvimento e licenciamento de programas de computador não-customizáveis'
] );
Cnae.create!( [
:id => 999,
:codigo => '6204000',
:descricao => 'Consultoria em tecnologia da informação'
] );

p "CNAES Criados!"

p "Adicionado #{Usuario.count} CNAES"
p "Adicionado #{Cnae.count} CNAES"
p "Adicionado #{Banco.count} Bancos"
p "Adicionado #{Cargo.count} Cargos"
p "Adicionado #{Unidade.count} Países"
p "Adicionado #{Estado.count} Estados"
p "Adicionado #{Cidade.count} Cidades"
