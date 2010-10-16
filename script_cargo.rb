def calcula_notas_mpu(cargo, nota)

  um_por_um_sem_virgulas = cargo.split("/").to_s.split(",")
  itera = 1
  x = 0
  nomes = []
  notas_objetivas = []
  notas_discursivas_sujas = []
  notas_discursivas_limpas = []
  notas_finais = []
  @resultado = 0

  while itera < um_por_um_sem_virgulas.size do
    nomes << um_por_um_sem_virgulas[itera]
    notas_objetivas << um_por_um_sem_virgulas[itera + 1]
    notas_discursivas_sujas << um_por_um_sem_virgulas[itera + 2]
    itera += 3
  end

  discursivas = notas_discursivas_sujas.to_s.split(' ')

  while x < discursivas.size do
    notas_discursivas_limpas << discursivas[x]
    x = x + 2
  end

  for h in (0...notas_discursivas_limpas.size) do
    notas_finais << notas_discursivas_limpas[h].to_f + notas_objetivas[h].to_f
  end

  for g in (0...notas_finais.size)
    if notas_finais[g] >= nota
      if notas_discursivas_limpas[g].to_f >= 5
        puts notas_finais[g].to_s + nomes[g].to_s
        @resultado += 1
      end
    end
  end

end

cargo52 = "10580246, Adalberto dos Santos Botelho Junior, 64.50, 0.70 / 10035051, Adelson Poubel de Souza, 64.50, 0.00 / 10925651, Adhemar Cesar Ferreira Thomaz,
85.50, 1.30 / 10658689, Adilson Goncalves Soares Junior, 68.00, 2.00 / 10208961, Adilson Ricardo da Silva, 105.00, 2.22 / 10816655, Adonias Mazolli e
Oliveira, 61.50, 0.92 / 10747403, Adriano da Nova Brandao Francisco, 63.00, 3.46 / 10937737, Adriano da Silva Lourenço, 67.50, 2.96 / 10853616, Alan
Pacheco Rodrigues Figueiredo, 72.00, 3.15 / 10343499, Alberto Batista da Silva, 63.00, 2.88 / 10683115, Alberto de Fontes Tavares Neto, 82.50, 7.36 /
10223386, Albino Pereira Lima, 72.50, 1.16 / 10431700, Alessandra de Souza Nascimento, 78.50, 5.92 / 11170173, Alessandro Leal da Silva Caiafa, 63.00,
3.48 / 10757732, Alessandro Soares Vivone, 61.50, 2.31 / 10377665, Alex Sandro de Jesus Ribeiro, 63.00, 0.00 / 10894289, Alexander Pereira Valerio, 61.50,
3.70 / 10092993, Alexandre Henrique, 73.50, 5.80 / 11039823, Alexandre Rolim Siqueira, 64.50, 6.64 / 10752738, Alexandre Tomas Martins, 61.50, 2.60 /
10531771, Allan de Oliveira Ciodaro, 64.50, 0.00 / 10082342, Alzira Clea de Mattos Longo, 63.00, 1.51 / 10637997, Amanda da Cruz Monteiro, 76.00, 0.00 /
10349025, Amanda Gandolpho de Barros, 61.50, 4.99 / 10426050, Ana Luiza Borgongino de Freitas Santos e Silva, 84.00, 2.70 / 10369773, Anderson Alves
Ferreira, 67.50, 3.10 / 10563139, Anderson Luiz B Assumpcao, 69.50, 7.50 / 11104528, Anderson Luiz Bonfim Silva, 78.00, 2.50 / 10236754, Anderson Luiz
Figueiredo de Carvalho, 64.50, 6.43 / 10648649, Anderson Mourao, 69.50, 2.85 / 10678625, Anderson Rafael Vilhena Barbosa, 96.00, 5.60 / 10143479,
Andre Campos da Silva, 72.00, 2.98 / 10622341, Andre de Araujo Marques, 76.50, 5.53 / 10719258, Andre Luis Augusto Pimenta, 65.50, 3.26 / 10945274,
Andre Luis Bonello, 65.00, 0.06 / 10871570, Andre Luiz de Figueiredo Tavora, 67.50, 5.34 / 10435460, Andre Luiz Silva Germano, 88.00, 4.38 / 11186773,
Andrea Rigoni Carmo, 69.00, 5.23 / 10999099, Andrei Morglan de Brito Araujo, 82.50, 1.50 / 11149798, Andreia Burck de Sant Anna, 72.00, 4.82 / 10008762,
Andressa da Silveira, 72.00, 1.44 / 10631944, Andrezza de Oliveira Ramos, 75.00, 1.97 / 10763290, Angelo Marcelo Alcantara da Silva, 84.50, 3.09 /
10511880, Antonio Carlos da Silveira Rezende, 85.50, 4.61 / 10096895, Antonio Carlos de Oliveira Carvalho, 78.00, 0.00 / 10929055, Antonio Cesar de
Nazareth, 80.00, 2.93 / 11071489, Antonio Marcos Vidal Pereira, 61.50, 1.98 / 10187395, Antonio Oliveira Sanches, 78.00, 0.87 / 11121410, Augusto Murilo
Brazil Silva, 76.50, 6.15 / 10271628, Avilmar Rosa Wolf Von Arcosy, 81.00, 2.32 / 10266302, Beatriz Gonçalves Milanez Tantow, 63.00, 0.57 / 10183201,
Beatriz Menino Coelho da Silva, 64.50, 1.60 / 10310386, Beyle Victor Gomes da Silva, 61.50, 1.10 / 10230998, Bianca Paes Ramos Velasques, 62.50, 5.52 /
10089877, Breno Genu Lemos, 78.50, 5.10 / 10841684, Bruner Santos Leite, 70.50, 2.18 / 11146933, Brunno Alves dos Santos, 80.50, 2.12 / 11037336, Bruno
Alessandro da Silva Pires, 64.50, 2.72 / 10609644, Bruno Batista de Lima, 70.50, 1.64 / 10171064, Bruno Bernardes da Silva, 69.00, 3.37 / 10115940, Bruno
Bernardo Rufino, 61.50, 0.76 / 10197708, Bruno da Silva Diniz, 77.00, 3.02 / 10200222, Bruno da Silva Passos, 75.00, 1.46 / 11151183, Bruno Erthal de
Abreu, 93.00, 4.40 / 10265881, Bruno Gall Fernandes, 75.00, 2.63 / 10819258, Bruno Lima Rocha Barbosa, 83.00, 9.13 / 10795556, Bruno Lucas de Oliveira,
67.50, 0.95 / 10395028, Bruno Pimentel Rodrigues, 76.50, 0.74 / 11141744, Bruno Ribeiro da Costa Basim, 67.50, 0.00 / 11166608, Bruno Ricardo Behnken
Costa, 73.50, 3.00 / 10564680, Bruno Silva Ferreira, 61.00, 4.70 / 10091899, Caio Reigota Lameirinhas, 73.50, 2.48 / 10344121, Caio Yamamura Magalhaes,
73.50, 0.60 / 10670948, Camila Rocha de Jesus, 62.50, 0.00 / 10444050, Camila Targino Silva, 65.50, 3.88 / 10370518, Carlos Alexandre Moura da Rosa,
63.00, 2.87 / 10752130, Carlos Alexandre Oliveira Goncalves, 61.50, 1.88 / 10068347, Carlos Armando Fernandes, 63.00, 3.92 / 10319196, Carlos Augusto
Junior, 65.50, 3.40 / 10311364, Carlos Eduardo Coimbra Petinari de Oliveira, 87.00, 4.63 / 10380909, Carlos Eduardo Davila Garcia Isaias, 81.00, 4.70 /
10212053, Carlos Eduardo Souza de Morais, 64.50, 3.93 / 10876824, Carlos Felipe Cordeiro Barboza, 66.00, 3.38 / 10667490, Carlos Henrique Ferreira
Berdeville, 68.50, 2.67 / 10531133, Carlos Henrique Lopes, 63.00, 5.94 / 10435400, Carlos Henrique Pinto Kremer, 67.00, 2.85 / 10341885, Carlos Rafael
Simonelli Carracena de Castro Souza, 75.00, 7.46 / 11069383, Carlos Renato de Oliveira Gomes, 76.50, 2.87 / 10814829, Carlos Silva, 66.00, 0.00 / 10852480,
Carmen Maria Coimbra Manhaes, 65.00, 3.15 / 11038783, Carolina Alvim Vieira, 63.00, 3.28 / 10814538, Celio da Silva Chagas, 72.00, 2.25 / 10636576, Celso
Igreja Novaes Filho, 73.50, 0.00 / 10600205, Chaiana Layza do Nascimento Lima, 84.00, 2.14 / 11081578, Cherlen Vieira Ribeiro, 72.00, 6.28 / 10856338,
Christiano Picanco de Assis, 81.00, 1.86 / 10615718, Claudio Alves de Azevedo, 66.00, 0.10 / 10457261, Claudio Tadeu Reis Mendes Pinho, 81.00, 3.18 /
10071759, Cristiane da Silva Soares, 63.50, 1.85 / 10658672, Cristiane Stutz Pinto, 73.50, 6.63 / 10912645, Cristiano da Silva Vieira, 66.50, 3.47 / 10212054,
Daniel Andrade de Lima, 85.50, 0.89 / 10682034, Daniel Felipe Vieira Passos Alves de Souza, 65.00, 0.88 / 10697217, Daniel Generino Bezerra de Melo,
79.50, 2.97 / 10367701, Daniel Guimaraes dos Santos, 62.50, 4.46 / 10185715, Daniel Menezes de Lacerda, 76.00, 4.04 / 10110514, Daniel Oliveira Lopes,
63.00, 1.78 / 10756583, Danielle Borely Ferreira de Lima, 71.50, 6.11 / 10008089, Danilo Aragao Mamede, 66.00, 4.56 / 10495617, Davi Mello Alves, 79.50,
1.38 / 10899024, Davi Schiavini Jardim, 86.50, 3.25 / 10079424, Deullysses Dael de Oliveira e Silva, 67.50, 0.18 / 10268266, Diego Figueira Galhoes, 61.50,
3.46 / 10666724, Diego Gervazio de Azeredo Rangel, 64.50, 1.18 / 10247844, Diego Kovags Moreira, 78.00, 3.38 / 10122647, Dilson Menezes dos Santos,
87.50, 1.95 / 10833742, Dimitri El-jaick Bonifacio Costa, 80.50, 3.50 / 10102392, Dimitri Rodrigues, 75.00, 1.60 / 10020639, Diogo Bruno de Lima Silverio,
95.00, 1.29 / 10200728, Douglas Bittar Barbosa, 75.00, 2.32 / 10956095, Douglas Noronha de Souza, 63.50, 4.00 / 10218900, Eber Riguetti Celestino, 67.50,
2.80 / 10987885, Edson Henrice Junior, 75.00, 4.43 / 10894156, Eduardo Carion, 75.00, 0.37 / 11145851, Eduardo Moura da Silva, 69.50, 4.53 / 11088369,
Eliezer da Silva Pacheco, 69.00, 0.42 / 10762055, Elizabeth da Conceiçao Castelo Bernardo da Silva, 69.00, 1.40 / 10115182, Eneas Quintanilha Marinho da
Costa, 70.50, 1.28 / 10429763, Erick Oliveira de Mendonca, 70.00, 4.74 / 10025443, Etiene Barreto de Oliveira, 71.00, 0.00 / 10116776, Evandil Correia de
Souza, 62.00, 0.00 / 10408730, Evandro Azeredo do Nascimento, 73.50, 2.55 / 11135597, Evandro Dias, 77.00, 3.68 / 10105207, Evandro Vieira de Andrade,
69.00, 0.93 / 11022811, Everson Freitas Kalaf, 73.50, 2.22 / 10853221, Fabiana dos Santos Guimaraes, 79.50, 0.64 / 10907672, Fabiana Rachid Novaes do
Espirito Santo, 73.50, 1.20 / 10322032, Fabio Herminio Gandos, 64.50, 1.88 / 10185372, Fabio Joaquim Silva de Oliveira, 76.50, 2.89 / 10709859, Fabio Jose
Barbosa Cesar Martinho, 66.00, 4.06 / 10182801, Fabio Oliveira da Silva Macedo, 65.50, 6.19 / 10352485, Fabio Ramos Cordeiro, 85.00, 4.56 / 10832329,
Fagner Thomaz Batista, 67.50, 2.78 / 10474061, Felipe Araujo Eustaquio, 69.00, 5.23 / 10560090, Felipe Betzler de Oliveira Pontes, 70.50, 2.65 / 10743558,
Felipe Cardoso Doacre Mendes, 63.00, 1.48 / 10705405, Felipe Consonni Fraga, 67.50, 3.52 / 10600194, Felipe da Silva Ferreira, 64.50, 0.86 / 10026330,
Felipe da Silva Oliveira, 75.00, 6.03 / 10286090, Felipe Dias Silva, 64.50, 4.41 / 10277092, Felipe Formagini Brant, 77.00, 2.72 / 10740604, Felipe Guilherme
Pereira Junqueira, 68.50, 2.80 / 10459118, Felipe Hilel Rangel Barbosa, 75.00, 3.12 / 11099952, Felipe Luiz Vieira da Silva, 76.50, 7.93 / 10161397, Felipe
Monteiro Herdy, 99.00, 1.65 / 10247907, Felipe Pimentel Angeli, 66.50, 5.89 / 10308949, Felipe Ribas Coutinho, 61.50, 2.79 / 10098804, Fellipe Wood Leite
Barbosa, 68.00, 7.29 / 10076876, Fernanda Coelho Dias Martins, 61.50, 2.60 / 10179654, Fernanda Souza de Brito, 61.50, 1.18 / 10466444, Fernando
Augusto Santos de Miranda, 63.50, 2.50 / 10822093, Fernando Carvalho Rodovalho, 61.50, 1.51 / 10279421, Fernando da Costa Ribeiro, 65.00, 4.61 /
10476150, Fernando dos Santos Mattos, 61.50, 3.50 / 10293298, Filipe Alexsander Gomes de Souza, 61.50, 2.43 / 10470268, Filipe Cavalcanti Alcantara,
69.00, 3.55 / 10156324, Filipe de Abreu Saraiva, 99.50, 4.74 / 10326987, Filipe Martins Marques, 66.00, 0.80 / 10516534, Filipi da Fonseca Barroso, 67.50,
8.33 / 10203363, Fillipe Ribeiro Bernardes, 85.50, 2.40 / 10529736, Flaumer Lincoln dos Santos Tanaro, 64.50, 2.40 / 11121550, Flavio Allan Pereira Ribeiro,
63.00, 2.68 / 10712186, Flavio Lopes Coelho, 71.00, 5.33 / 10034253, Flavio Nogueira da Costa, 72.00, 2.33 / 10100257, Francisco de Assis Ferreira, 64.50,
3.44 / 10627173, Frank Belmiro Lima Guimaraes Faisca, 70.50, 3.86 / 10560594, Gabriel Nascimento Marcos da Rocha, 79.50, 1.40 / 10536019, Gabriele de
Almeida Silva, 69.00, 0.50 / 10689994, Germeson da Silva Barros, 63.00, 0.44 / 11147915, Gerson Bartholo de Alcantara, 61.50, 2.86 / 10505324, Gerson
Castro dos Santos, 71.00, 1.36 / 10296349, Gil Felipe da Silva, 66.00, 1.60 / 10146324, Gilberto Couto Filho, 69.00, 3.00 / 11171310, Gilson Alvino da Costa,
71.50, 3.10 / 11165501, Gilvan Cesar Pereira, 67.50, 2.15 / 10252335, Giovani Bringhenti Guilherme, 67.50, 4.87 / 10670465, Gleyson da Silveira Lima, 68.50,
5.55 / 10533881, Guilherme Godoy de Oliveira, 66.50, 3.46 / 10542237, Guilherme Silva Andrade, 71.50, 3.71 / 10363638, Gustavo de Souza D Almeida,
97.50, 2.83 / 11076920, Gustavo Ferreira da Rocha Pedro, 63.50, 3.30 / 10706729, Gustavo Moraes Souza, 86.50, 1.73 / 10360620, Gustavo Zogbi Soldon,
64.50, 2.22 / 10311451, Hannah Carolina de Lisboa David, 76.00, 1.92 / 10015512, Hardley Rezende Domingos Cordeiro, 68.00, 1.95 / 10754085, Hector
Backx de Oliveira, 69.00, 1.24 / 11176546, Helder Rubens Rene Marcel Dantier, 64.50, 4.11 / 10016678, Helio de Almeida Lopes, 79.50, 1.38 / 10826056,
Helio Lucio Torres Junior, 66.00, 5.41 / 10267155, Henrique Araujo Sena, 69.00, 1.00 / 10512800, Henrique Dornel da Silva, 74.00, 5.89 / 10694335, Herbert
Santos da Silva, 66.00, 2.00 / 10001126, Heverton Oliveira Rodrigues Pereira, 63.00, 3.12 / 10149476, Hudson de Souza Almeida, 72.00, 3.11 / 10148094,
Hudson Santos de Barros, 78.00, 2.17 / 10135005, Igor Abreu da Silva, 76.50, 2.15 / 10448070, Igor Medeiros de Paula, 61.50, 4.20 / 10044613, Ingrid
Guilherme Guedes, 69.00, 3.41 / 10254376, Italo Cruz de Brito, 64.00, 2.56 / 10431050, Ivandro Correa da Silva Filho, 87.00, 4.33 / 10932911, Jackson
Teixeira Gonçalves, 81.00, 2.56 / 10055454, Jadson Gomes da Silva, 69.00, 3.16 / 10618799, Jailson Cunha Carvalho, 66.00, 0.00 / 10599878, Jessica Alves
Rodrigues Macedo, 64.50, 6.38 / 10580095, Jessica Pereira da Silva, 61.50, 4.25 / 10522816, Joao Augusto Marrara Marzagao, 88.50, 1.47 / 10476383, Joao
de Deus Gomes Neto, 62.00, 3.60 / 10923973, Joao Gabriel Franco da Silva, 73.50, 1.38 / 11183461, Joao Gustavo Salles Goncalves, 70.50, 2.23 / 10320264,
Joao Luiz de Oliveira Domingos, 73.50, 1.08 / 10351142, Joao Paulo Pinheiro Teixeira, 64.50, 0.22 / 10510268, Jonatan de Aguiar Nazareth de Oliveira, 61.50,
0.10 / 11107592, Jonatas Gabriel Firmino, 69.00, 3.06 / 11146461, Jonathan Duraes de Oliveira, 67.50, 6.48 / 10189136, Jone Damasceno Silva, 69.00, 1.82 /
10917703, Jonnas Berriel Carvalho Junior, 66.50, 2.13 / 10747186, Jorge da Costa Silva Filho, 76.50, 1.24 / 10690200, Jorge Humberto da Silva Lins, 72.00,
3.53 / 10817431, Jorge Jorcelino Vaz, 73.50, 3.16 / 10195696, Jorge Luiz do Nascimento Junior, 67.50, 2.43 / 10438733, Jorge Roberto Alves Trindade, 78.00,
1.71 / 11074949, Jorge Victal Pires Matilde, 63.00, 1.37 / 10394665, Jose Alberto Amado Junior, 75.00, 1.61 / 10382362, Jose Carlos de Albuqerque, 82.50,
0.78 / 11073940, Jose Carmo de Azevedo Junior, 69.00, 2.43 / 10905208, Jose Luciano de Campos, 66.00, 5.28 / 10048843, Josemir de Barros Silva, 75.00,
7.27 / 10278418, Juliana Macedo Silva, 75.00, 2.24 / 11100501, Juliana Monteiro Borges, 64.50, 4.50 / 10461600, Julio Cesar Dias de Souza, 87.50, 5.47 /
10342357, Julio Cesar Lopes Cestario, 68.00, 4.56 / 10500472, Julio Cesar Peres de Queiroz, 68.00, 4.11 / 10107684, Kelvin de Paula Sobrinho, 61.50, 0.22 /
10037156, Kim Menezes Nunes, 66.00, 2.82 / 10674608, Klecius Aristeu Sao Jose de Menezes, 69.00, 4.20 / 11080338, Larissa da Silva Oliveira, 76.50, 3.25 /
10036285, Laudelino Rodrigues, 64.00, 2.29 / 10604667, Leandro Amorim Alves, 70.50, 1.23 / 10739498, Leandro Azevedo de Oliveira, 70.00, 2.59 /
10366326, Leandro Ferreira dos Santos, 61.00, 0.00 / 10168560, Leandro Oliveira de Souza, 76.00, 2.11 / 10739633, Leandro Sousa Azevedo, 69.00, 2.55 /
10477216, Lelio Felipe dos Santos Rodrigues, 79.50, 3.16 / 10822662, Leonardo Couto Chueri, 102.50, 5.63 / 10895904, Leonardo de Almeida Pinto, 63.00,
1.28 / 10584281, Leonardo F Rodrigues, 84.00, 2.42 / 10079880, Leonardo Fraga Rangel, 63.00, 2.21 / 10049181, Leonardo Goncalves Vieira, 65.00, 2.19 /
10605262, Leonardo Herculano de Carvalho, 69.00, 3.20 / 11042863, Leopoldo Estevam dos Santos Molica, 69.00, 9.79 / 10982609, Lessandro Rangel Dias
Ferreira, 67.50, 2.08 / 10078867, Lorram Carlos Felix, 67.00, 2.96 / 10509762, Luana Estevao dos Santos, 69.00, 0.89 / 10777221, Lucas Manhaes Sepulvida,
77.50, 2.15 / 10089154, Lucas Trindade Marques, 75.00, 4.06 / 10947393, Luciana Antunes Garcia Casilha, 64.50, 4.73 / 10620880, Luciana Santiago da Silva,
63.00, 4.70 / 10523589, Lucidio Ramos Martins, 62.00, 1.24 / 10976554, Luis Carlos Araujo Chavao, 63.00, 0.77 / 10094233, Luis Filipe de Oliveira Costa,
74.50, 1.65 / 10049823, Luis Marcelo Neves de Abreu, 85.50, 2.23 / 10245095, Luis Otavio Sousa Ramos, 66.00, 2.04 / 10148556, Luiz Augusto, 61.50, 0.19 /
10408894, Luiz Felipe da Rocha Goncalves, 70.50, 4.18 / 10313228, Luiz Felipe Soares Campello, 67.50, 1.67 / 11145423, Luiz Fernando Ferreira da Boa
Morte, 74.00, 2.16 / 10716632, Luiz Joed Cabral Coelho, 69.50, 1.12 / 11164102, Luiz Paulo Nogueira da Rocha, 66.00, 1.82 / 10105486, Luiz Thalles
Nogueira Pinto, 89.50, 2.20 / 10399184, Magno Antonio Martins Cardoso, 76.50, 0.65 / 10476579, Manoel Gomes Santana Junior, 64.50, 1.14 / 10415966,
Marcel Santos Oliveira, 63.00, 2.50 / 10559239, Marcella Tavares Sant Anna, 73.50, 1.39 / 10479462, Marcello de Campos Santana, 68.50, 3.78 / 10965327,
Marcelo Alberto de Souza Moreira, 73.50, 3.26 / 10226508, Marcelo Alexandre Martins da Conceiçao, 63.00, 1.96 / 11006763, Marcelo Barbosa Silva, 66.00,
2.87 / 10342071, Marcelo Calassara Reis, 69.00, 0.57 / 10337169, Marcelo Chaves Barcelos, 76.50, 3.80 / 10396827, Marcelo Couto Fernandes, 69.00, 3.00 /
11178692, Marcelo de Assis Costa, 74.50, 1.50 / 10674346, Marcelo Henrique Modesto de Oliveira, 61.50, 4.14 / 11124845, Marcelo Marchiotti Baptista,
62.50, 3.37 / 10265401, Marcelo Marcos Vieria, 88.50, 3.10 / 11155884, Marcelus Duarte Pereira, 66.50, 5.90 / 10158441, Marcilio Jose Macedo Junior,
85.50, 6.44 / 11076384, Marcio Leite de Assunçao, 82.00, 1.52 / 10605348, Marcio Luis de Figueiredo Nacif, 65.50, 2.63 / 11026190, Marcio Maia Wanderley
de Mattos, 83.00, 2.47 / 10248048, Marcio Martins dos Santos, 64.50, 2.28 / 11066914, Marcio Martins Loureiro, 69.00, 0.27 / 10218610, Marcio Rogerio de
Paula Silva Junior, 61.50, 2.10 / 10386112, Marco Antonio Borges Vieira, 79.50, 2.80 / 10598038, Marco Antonio de Paula, 64.50, 5.80 / 10980462, Marco
Aurelio Alencastro Pacheco, 65.50, 4.80 / 10921510, Marcos Alexandre Pereira, 79.50, 1.26 / 11138001, Marcos Augusto Pessoa, 67.50, 2.07 / 11156193,
Marcos Correa Cavalheiro, 66.00, 6.08 / 10891348, Marcos Costa da Silva, 73.50, 0.96 / 10826597, Marcos Onofre Malheiros, 63.00, 3.90 / 10345291,
Marcos Paulo Marques da Silva, 61.50, 0.00 / 10048976, Marcos Santos Tomaz, 69.00, 4.03 / 10618733, Marcos Schiller Ferreira Sylvestre, 67.50, 0.83 /
10617010, Marcos Vinicius Dunguel Nunes, 69.00, 3.49 / 10663974, Marcos Vinicius Sampaio Lyrio, 81.00, 2.26 / 10730062, Marcus Venicius Fernandes
Rodrigues Junior, 61.50, 1.35 / 10224642, Marcus Vinicius Carneiro Lima, 64.50, 1.34 / 11062338, Marcus Vinicius Pereira Costa, 72.00, 2.50 / 10374222,
Maria Cristina Gomes dos Reis, 69.00, 3.22 / 10803134, Maria Denise de Souza Gabriel, 63.00, 1.60 / 11111693, Mariana Magalhaes de Mattos Coelho,
81.00, 6.55 / 10895535, Mario Jose Ferreira Junior, 64.50, 2.80 / 10422130, Marvin Douglas dos Santos
Duarte, 63.00, 2.14 / 10428175, Mateus Amaral da Silva, 61.00, 1.95 / 10733819, Mateus Gregorio de Souza, 75.00, 1.16 / 10531564, Matheus Correia
Ferreira, 71.50, 2.27 / 10633129, Mauricio Roma Cavalcanti, 87.00, 2.50 / 11015701, Mauricio Sant Ana do Nascimento, 64.50, 2.62 / 10244410, Mauro
Antonio Franca, 61.50, 3.01 / 11072628, Mauro de Almeida Cesar, 72.00, 3.56 / 10209911, Max Barbosa da Silva, 66.00, 1.30 / 10166411, Michel Diniz da
Silva, 69.00, 3.00 / 10244787, Michele dos Santos Coura, 80.00, 3.20 / 10351277, Miguel Mendes Fontes, 64.50, 0.43 / 10536428, Moises Albert Galvao de
Oliveira, 64.50, 0.21 / 10793134, Nicolas Carmello de Lima, 94.50, 2.11 / 10739766, Nilton dos Santos, 73.50, 3.08 / 10122364, Nina Venancio Raminelli,
87.00, 4.23 / 10038474, Octacilio Rodrigues Neves, 66.00, 1.72 / 10450888, Oliveira Campos da Cunha Filho, 76.50, 0.73 / 10675246, Olivio dos Santos Neto,
66.00, 1.29 / 10683426, Paulo Augusto de Almeida Silva, 77.00, 2.07 / 10094323, Paulo Cesar Ancelmo Saramago, 64.50, 3.26 / 11129628, Paulo Cesar dos
Santos, 96.00, 1.78 / 10443753, Paulo Franco Alves, 61.50, 7.96 / 10077068, Paulo Henrique Kutwak, 72.00, 0.40 / 10540601, Paulo Henrique Ouverney
Bastos, 72.50, 3.57 / 11062247, Paulo Jose Moraes Castro, 78.00, 3.70 / 10410929, Paulo Marcelo da Cruz Doria, 62.50, 6.72 / 10307530, Paulo Robinson
Silva dos Santos, 63.00, 2.61 / 10941479, Pedro de Souza Leao Alonso Coelho, 63.00, 4.31 / 10962616, Pedro Paulo da Silva Ribeiro, 70.50, 1.22 / 10429243,
Phelipe Gomes Barbosa, 61.50, 0.66 / 10064315, Raama Costa Alves, 66.00, 2.81 / 11123328, Rafael Bernardino Garcia de Lima, 61.50, 4.60 / 10478793,
Rafael Brito Loureiro, 64.50, 1.92 / 10225319, Rafael Carlos de Oliveira, 76.50, 6.25 / 10511428, Rafael Carvalho Moutinho, 65.50, 4.02 / 11061526, Rafael
Carvalho Ramos, 84.50, 3.27 / 10037036, Rafael Couto Federice, 70.00, 0.86 / 10797256, Rafael Gerardo Rodrigues do Nascimento, 86.00, 1.58 / 10024710,
Rafael Lima Okuyama, 67.50, 2.50 / 10964972, Rafael Santana do Nascimento, 70.50, 3.17 / 11088767, Rafael Teles Teixeira Pinto, 72.00, 3.42 / 10442893,
Raphael Alves Correia da Silva, 61.50, 0.00 / 10935235, Raphael Gripp da Costa, 64.50, 1.17 / 10611861, Rayan Luz Ralile, 69.00, 1.39 / 10506776, Reginaldo
Verli de Oliveira, 63.50, 1.72 / 10838911, Rejane da Silva Barbosa, 69.00, 1.18 / 10446012, Renan Franco Rabelo, 64.00, 3.33 / 10402070, Renato Lopes
Rena, 105.00, 5.63 / 10429304, Renato Miguel de Moraes, 85.50, 3.45 / 10913569, Renato Nascimento Noronha, 70.00, 4.95 / 11121500, Renato Pereira de
Vasconcelos Junior, 63.00, 3.07 / 11157389, Ricardo Cortes Duarte, 72.00, 9.73 / 10872997, Ricardo de Souza Ferreira, 80.50, 1.52 / 10613685, Ricardo do
Carmo Moraes, 62.50, 4.97 / 10589304, Ricardo Fernando Guarana, 73.50, 4.15 / 10111587, Ricardo Henrique Borges de Moraes Junior, 74.00, 0.60 /
10844850, Ricardo Pereira Bahia, 75.00, 4.93 / 10671131, Ricardo Ramos da Cunha, 63.00, 0.95 / 10438383, Roberto Rodrigues Dalmeida, 61.50, 0.11 /
10059209, Robertson Rabelo Arvelos Dias, 68.50, 0.70 / 11158802, Robson Escossia Pereira, 64.50, 3.43 / 10400359, Robson Pereira Junior, 63.00, 5.47 /
10443825, Rodolpho Rodrigues Camara Nunes, 76.50, 1.08 / 10638520, Rodrgio Nunes Valentim, 76.50, 0.43 / 10796608, Rodrigo Alessandro Goncalves
Lobo, 62.50, 0.88 / 11070950, Rodrigo Aquino Santos Brito, 63.00, 0.00 / 10458501, Rodrigo Coimbra Bento Soares, 70.50, 4.89 / 10551097, Rodrigo Couto
de Souza, 78.00, 5.33 / 10520039, Rodrigo de Oliveira Costa, 63.00, 4.34 / 11068381, Rodrigo Garcia Grijo, 61.50, 0.00 / 10453753, Rodrigo Gonçalves
Barbosa, 70.00, 1.21 / 10982401, Rodrigo Hungria Mandu de Moura, 87.00, 3.95 / 10770790, Rodrigo Otavio Dejacy Oliveira da Conceiçao, 69.00, 3.90 /
10140016, Rodrigo Pessanha Chiesa, 81.00, 2.08 / 10550117, Rodrigo Pinheiro Martins, 61.50, 2.80 / 10932972, Rodrigo Prado Roque, 64.50, 1.58 /
10364367, Rodrigo Sampaio Cruz, 66.00, 4.40 / 10036910, Rogerio Augusto de Barros Gonçalves, 93.00, 1.93 / 10094694, Romulo Simoes da Silva, 69.00,
3.48 / 10973062, Ronald Davidson da Silva, 76.00, 3.12 / 11004338, Ronaldo Moreira Firpo de Andrade, 67.00, 2.34 / 10468032, Rudah Bazilio dos Santos,
66.00, 0.50 / 10783864, Ruy de Alverga Feital, 91.00, 1.43 / 10703459, Samuel Alves da Silva, 61.50, 2.27 / 10671384, Samuel Ribeiro de Miranda, 63.00,
0.58 / 10039418, Sandro da Silva Reis, 72.00, 3.04 / 10586963, Sebastiao Luiz da Silva Guerra, 61.50, 3.98 / 11127535, Sergio Moreira Baptista da Costa,
65.00, 1.70 / 10571152, Slavson Rodrigues da Silva, 70.00, 2.93 / 10618734, Stephan Melro Rego, 69.00, 2.57 / 10090139, Suzana Celeste Bulhoes Souto,
81.00, 2.83 / 10774677, Tais da Cunha Meirelles Silva, 64.50, 3.22 / 10090963, Tarsilla Helena Iacovino Paraiso, 70.00, 0.27 / 10851255, Taylor Rodrigues
Lopes, 83.50, 2.21 / 11105721, Thiago Bezerra de Lima, 64.00, 0.34 / 10316958, Thiago Catharino Ferreira, 70.50, 4.99 / 10062168, Thiago Cesar Eugenio de
Oliveira, 74.00, 3.58 / 10369795, Thiago Feijo Figueiredo, 62.50, 3.23 / 10893311, Thiago Guadelupe da Silva, 62.00, 2.73 / 10545022, Thiago Guimaraes
Tavares, 61.50, 1.38 / 10174890, Thiago Jorge Guilhernandes Cardozo, 70.50, 2.51 / 10929138, Thiago Luiz Ferreira da Silva, 76.00, 1.76 / 11183486, Thiago
Sandes Bastos, 66.50, 2.30 / 10834983, Tiago Cockles de Oliveira, 62.00, 1.03 / 10089718, Tiago de Miranda Gomes, 62.00, 2.65 / 10588186, Tiago Nazareth
da Silva Souza, 69.00, 1.42 / 11107774, Tiago Rodrigues Fidelis da Silva, 63.00, 5.25 / 11085217, Tiago Tosta Peres, 81.50, 6.37 / 11154134, Ualace Adriano
Leal Martins, 65.50, 2.06 / 10692196, Valdeir Gonsalves da Silva, 84.00, 1.20 / 11029664, Valeria Cristna Pacheco da Silva, 61.50, 0.63 / 10039247, Valterio
Motta Aragao, 69.00, 7.14 / 10565054, Vanderson Rodrigues Ferreira, 63.00, 5.10 / 10904124, Vanessa Miranda dos Santos, 62.50, 1.97 / 10697146, Vania
Pinto Ferreira, 64.50, 4.02 / 10357615, Victor Emmanuel Santos Andrade, 76.50, 1.20 / 10505888, Vinicius Augusto Ribeiro de Sa, 67.50, 6.33 / 10075715,
Vinicius Costa Ximenes, 112.50, 4.83 / 10397684, Vinicius Gonzaga da Silva, 67.50, 2.76 / 10276202, Vinicius Martins Lino, 72.00, 1.28 / 10892022, Virgilio
Constantino Pereira, 66.00, 2.96 / 10803841, Vitor Adolfo da Silva Araujo, 70.50, 1.87 / 11122643, Vitor da Silva Mattos, 67.50, 2.74 / 10435281, Viviane
Rose Val Porto Ribeiro, 61.50, 2.02 / 10486261, Wagner Martins Passos, 61.50, 2.02 / 10025372, Wagner Silva Correa, 64.50, 4.07 / 11013112, Waldenor
Rodrigues dos Santos Junior, 67.50, 3.07 / 11132644, Washington Batista Rodrigues Martins, 64.50, 4.72 / 10068152, Wellington Liquieri Ribeiro, 64.00, 5.14
/ 10360979, Wellington Santos Ferreira, 75.00, 0.00 / 11156981, Werlen Drago Araujo, 67.50, 0.30 / 10714820, William Alexandre Peixoto de Magalhaes,
89.50, 4.20 / 10122965, Willian Teixeira Mairynck, 62.50, 1.15 / 10241132, Wilson Alves de Labriola Neto, 66.00, 0.23 / 11081796, Wilson Henriques de
Souza, 67.50, 3.03 / 10240438, Yindi Fialho Torres, 81.50, 2.76 / 10030737, Zailton Correia Santana, 64.00, 2.73 / 10312661, Marianna Siqueira Reis, 99.50, 6.32"

cargo25 = "11171846, Adriana Cristina de Oliveira, 76.00, 4.83 / 10686680, Adriana de Almeida Fonseca, 88.50, 8.97 / 11061778, Alberto Akira Kono, 67.50, 1.55 /
10272915, Alberto de Fontes Tavares Neto, 97.50, 4.53 / 11177484, Alessandro Monteiro Caldas, 91.00, 9.15 / 10940085, Alex Campos Leite, 74.00, 9.78 /
10858088, Alex Luiz da Silva Souza, 67.50, 1.81 / 11109250, Alexandre Alves de Oliveira, 69.00, 0.35 / 11105082, Alexandre Guerreiro Sequeira Alves
Figueiroa, 77.50, 4.38 / 10510843, Alexandre Oliveira de Mattos, 73.50, 3.13 / 10954553, Ana Carolina Innecco Cantuaria de Araujo, 84.00, 5.73 / 11173260,
Ana Cristina Dacri Wernz, 72.50, 4.43 / 10736692, Ana Paula Martins de Almeida Barizon, 76.50, 2.64 / 10726430, Anderson Araujo Lima, 75.00, 6.63 /
10890052, Anderson Correa Hastenreiter, 66.00, 2.05 / 10954100, Anderson George Dias Ferreira, 78.00, 1.60 / 10080215, Anderson Ignacio Nunes, 69.00,
3.16 / 10158758, Anderson Marinho, 73.50, 4.55 / 10639010, Andre Caetano Ferreira Nunes, 87.50, 0.00 / 10724784, Andre Luis Sousa da Silva, 84.00, 2.88 /
10085945, Andre Rodrigues Ribeiro, 90.00, 4.99 / 11018804, Andreia Carneiro Teixeira Dias Pereira, 88.50, 3.83 / 10133977, Andreia Gomes dos Santos,
80.50, 6.06 / 10031506, Arthur Luiz Gonçalves da Costa, 69.50, 4.35 / 11104257, Bianca Alonso Cardoso, 68.00, 1.13 / 10222557, Breno Santos Rocha, 87.00,
4.93 / 10166261, Bruno Alexandre Sieczko Guzzo, 66.50, 6.14 / 10846689, Bruno Cardoso Cantisano, 79.50, 6.19 / 10743891, Bruno Erthal de Abreu, 92.00,
4.99 / 11027327, Bruno Machado Carneiro, 72.00, 3.50 / 10001631, Bruno Silva de Carvalho, 78.00, 4.18 / 10627073, Carlos Antonio Alves Hespanhol, 74.50,
5.48 / 10768635, Carlos Antonio Sari Moreira da Silva, 81.50, 4.23 / 10935527, Carlos Eduardo Sampaio de Andrade, 65.50, 3.91 / 10614823, Carlos Magno
de Oliveira Moreira, 75.00, 2.87 / 10539040, Carolina Oliveira de Souza, 78.00, 4.61 / 11039148, Celso Couto Mathias, 77.50, 2.90 / 11028540, Celso de
Oliveira Pacheco Junior, 75.00, 0.00 / 11120428, Celso Icaro Grijo Costa Tavares, 76.00, 4.20 / 10334157, Christiano Picanco de Assis, 81.00, 9.52 / 10439790,
Claudia Cristina Paranhos Cruz, 70.50, 2.43 / 10167519, Daniel Lopes Alves, 72.50, 0.00 / 10538029, Daniel Santos de Carvalho, 82.50, 6.67 / 10554820,
Denis Franco Martins, 69.00, 3.13 / 11080277, Diana Ferreira Mussi, 71.00, 6.93 / 11051332, Diego Costa Xavier, 75.00, 2.80 / 11008468, Diego Oliveira
Araujo, 76.50, 4.85 / 10834550, Dimitri El-jaick Bonifacio Costa, 67.50, 5.73 / 11180671, Dineu Henrique Borba Netto Assis, 82.50, 4.46 / 10015485, Diogo
Bruno de Lima Silverio, 79.00, 4.56 / 11069778, Diogo Krejci de Souza, 82.50, 5.37 / 10464930, Diogo Silveira Mendonça, 75.00, 4.51 / 11039450, Djalma
Gonçalves Silva Junior, 72.00, 1.03 / 10440453, Doglas Maccari, 68.50, 2.44 / 10192757, Edmilson Barcelos Rocha, 74.00, 4.28 / 11132712, Eduardo Correa
Lima, 74.00, 3.79 / 10327178, Eduardo Luis Guardin Bastos, 66.00, 3.50 / 11174177, Eliandra dos Santos Silva da Motta, 67.50, 5.54 / 10473202, Eliza Chaves
Franca, 68.50, 7.53 / 10624521, Elton Alves Costa, 70.50, 3.60 / 10777087, Elton Lima da Silva, 66.00, 3.48 / 10732744, Emerson Dalton Borges, 66.00, 3.05 /
10106584, Enio Pires de Abreu, 73.50, 3.23 / 11095434, Erica de Andrade e Santos, 69.00, 4.13 / 10088431, Evandro Maroni Gonçalves, 78.50, 8.60 /
10654267, Fabiano de Azevedo Portella, 65.50, 7.00 / 11092177, Fabiano de Moura, 87.00, 5.88 / 10860118, Fabio Barreto Nunes, 79.50, 4.36 / 10482776,
Fabio da Silva Gregorio, 90.00, 3.24 / 10761076, Fabio Murilo Canongia Santino, 96.00, 1.83 / 10877449, Fabio Peclat Amorim da Silva, 83.00, 2.55 /
10591994, Fabio Rafael Ladislei de Souza, 73.00, 4.89 / 10542185, Felipe Santana Gerbasi, 74.50, 2.62 / 10181439, Fernando Antonio Pinhati Junior, 80.50,
5.47 / 11137949, Fernando Marcos Camargo Dias, 70.50, 4.40 / 10156207, Filipe de Abreu Saraiva, 85.50, 0.00 / 10603679, Flavio Moretti, 82.50, 8.30 /
10921175, Flavio Nogueira da Costa, 66.00, 5.53 / 11155024, George Colber Souza Costa, 73.50, 6.77 / 10677661, Giovanni Abner de Brito Junior, 94.50, 4.89
/ 10195272, Glauce Helena Santos Larangeira, 67.50, 2.72 / 11163024, Guilherme Barbosa Filgueiras, 90.50, 3.27 / 10197373, Helena Marques Alves, 81.00,
3.69 / 10088425, Igor Machado de Castro, 79.50, 7.53 / 10958284, Isabella Franco Ricci, 66.00, 2.72 / 10954375, Ivana Rodrigues Cavalcante, 78.50, 4.47 /
10686885, Ives Avila, 75.00, 0.00 / 10002451, Jardel dos Anjos Alves, 72.50, 4.60 / 11152939, Jeronimo Sirotheau de Almeida Eichler, 75.00, 2.92 /
11054143, Jesiel Carlos Knup, 66.50, 2.63 / 10826741, Joao Bosco Lamarca Vitral, 91.50, 9.26 / 11144482, Johnny Jacques Garcia Victorio, 75.00, 0.00 /
10731058, Jomar da Silva, 88.50, 5.47 / 10868301, Jonatas Emidio de Souza, 65.50, 1.80 / 10566137, Jones de Oliveira Avelino, 67.50, 8.28 / 11175411, Jorge
Gervasio Pereira, 75.00, 0.48 / 11029168, Jorge Murilo Soares Ferreira, 70.50, 3.10 / 10790255, Jorge Novitsky Neto, 74.50, 1.90 / 10338940, Jose Alberto
Amado Junior, 72.00, 4.66 / 10520307, Jose Carlos Duarte Couto, 81.00, 5.17 / 10361011, Jose Luis Pinheiro Gomes, 82.50, 4.30 / 10924976, Jose Orete do
Nascimento, 69.50, 4.91 / 10346937, Jose Paulo Augusto dos Santos Silva, 67.50, 5.95 / 10455846, Jose Renato Costa do Nascimento, 77.00, 7.66 /
10599547, Jose Roberto Pereira Gomes, 76.50, 0.00 / 10752053, Jose Vicente Freitas Serra, 65.50, 5.65 / 10310496, Josemar Dias Ferreira, 91.00, 6.20 /
11012896, Juliano Ferreira Caldas, 72.00, 2.18 / 10927455, Juliano Melo de Souza, 70.50, 1.60 / 10618090, Julio Cesar de Oliveira Pires, 79.50, 8.07 /
10110171, Julio Cesar Gomes de Souza de Morais, 66.00, 3.88 / 10188361, Junia Almeida Matos Boechat, 67.50, 4.39 / 11110655, Karina Lima e Silva Rolao,
73.50, 7.23 / 10433621, Leandro de Souza Cruz Ferreira, 67.00, 2.14 / 10307171, Leandro Nascimento Castro, 71.00, 0.00 / 10097466, Leila Marta Cruz,
78.00, 2.00 / 10917685, Leomar dos Santos Marques, 69.50, 0.00 / 11121006, Leonardo de França Pereira, 70.50, 1.79 / 10688942, Leonardo de Oliveira
Conceiçao, 88.00, 4.50 / 10550348, Leonardo de Rezende Chrudina, 75.00, 4.83 / 10682644, Leonardo Manhaes Gomes, 70.50, 4.55 / 11046865, Leonardo
Moraes dos Santos, 88.50, 5.01 / 10162698, Leonardo Mosqueira de Carvalho, 83.00, 9.52 / 10490664, Libene Fernandes de Sousa Junior, 78.50, 4.29 /
10152456, Lidvaldo Jose dos Santos, 68.00, 3.57 / 10888224, Lilian Maria Raimundo, 81.00, 3.81 / 10493277, Livia Descoffier, 96.00, 4.90 / 10586482,
Losangeles Chote de Sousa, 68.00, 3.09 / 11070708, Louise Aline Machado de Paula, 69.00, 5.20 / 11151376, Luana Marinho da Silva Lima, 70.50, 1.63 /
10335312, Lucio Angelo de Mello Pereira, 73.50, 2.50 / 11138425, Luis Cesar da Silva Pereira, 66.00, 0.00 / 10737715, Luiz Antonio Garcia Simoes, 71.50,
4.25 / 10664354, Luiz Claudio Otero Santos, 67.50, 3.19 / 10581389, Luiz Fernando de Sousa Vieira Fraga, 68.50, 4.90 / 10470827, Luiz Fernando Fernandes
de Albuquerque, 85.50, 3.27 / 11138784, Luiz Fernando Robert Neto, 69.50, 5.70 / 10974038, Marcelo Berge Pessanha, 75.00, 4.37 / 10575902, Marcelo
Couto Fernandes, 82.50, 3.60 / 10888185, Marcelo Francelino Staudt, 72.00, 0.00 / 10535598, Marcelo Jacob Estrella Akersztejn, 103.50, 5.81 / 10741929,
Marcelo Jose Magalhaes de Melo Neto, 91.00, 7.32 / 10681535, Marcelo Ribeiro dos Santos, 66.00, 1.66 / 10860265, Marcelo Rodrigues de Oliveira, 66.00,
2.30 / 11064799, Marcelo Vinicius Ludgero de Pinho, 69.00, 2.30 / 11175003, Marcia Jaqueline de Sousa Tonon, 78.50, 0.00 / 10508211, Marcia Martins de
Faria Bravo, 68.00, 3.82 / 10280856, Marcio Alessandro do Val, 67.00, 4.24 / 10524070, Marcio dos Anjos Santos, 82.50, 5.07 / 10395855, Marco Aurelio
Alves Cunha, 74.00, 6.68 / 10586326, Marcos Abbehusen Miguel, 74.00, 2.57 / 10112466, Marcos Vinicio Almeida Nunes, 72.00, 1.50 / 10454962, Marcos
Vinicius de Nadai, 86.00, 4.59 / 10204141, Marcos Vinicius Migon Archanjo, 67.50, 3.43 / 11143721, Marcos Wilson Klem da Motta, 72.00, 2.32 / 10856432,
Marcus Vinicius Carvalho da Silva, 72.50, 4.36 / 10876414, Margarete Silva Araujo, 76.50, 4.73 / 11092840, Margareth Peclat Teixeira, 68.50, 3.00 /
10210780, Maria da Graca Maia Avelar, 78.00, 1.90 / 10131058, Marianna Siqueira Reis, 88.50, 5.73 / 10138955, Mario Ferreira Fernandes, 69.00, 1.70 /
10499416, Massao Oliveira Iwanaga, 67.50, 4.23 / 10268701, Mauricio Carneiro da Cunha Geraldelli, 81.50, 4.90 / 10663202, Mauricio Roma Cavalcanti,
67.50, 0.00 / 10615325, Maximillian Nogueira, 79.50, 2.26 / 10351476, Michel El-chaer Saddock de Sa, 87.00, 9.48 / 10346414, Miguel Gabriel Prazeres de
Carvalho, 88.50, 3.90 / 10357857, Monica Andrade dos Santos, 67.50, 4.23 / 10379154, Monique Teixeira Ferreira, 87.00, 5.77 / 11104550, Nilton Alvarenga
Junior, 82.50, 4.25 / 10706693, Orlando dos Reis Junior, 72.00, 1.44 / 11003345, Paulo Andre Santos Leite Tavares, 72.50, 3.19 / 10622108, Pedro de
Almeida de Abreu Elvas, 72.00, 1.82 / 10269360, Pedro Henrique Ribeiro da Silva, 84.00, 5.73 / 10575583, Pedro Miguel Esposito, 71.50, 4.37 / 11051986,
Peron Rezende de Sousa, 71.00, 2.40 / 10516896, Rafael de Oliveira Vieira, 87.00, 3.81 / 10781996, Rafael do Espirito Santo, 70.00, 7.20 / 10247150, Rafael
dos Santos Alves, 73.50, 6.26 / 10508815, Rafael Nogueira Santos, 70.50, 3.98 / 10786841, Raphael Correa de Carvalho, 75.50, 2.71 / 10246604, Raphael do
Nascimento Martins, 71.50, 4.90 / 10165313, Regina Cely Machado da Costa, 68.50, 2.50 / 10849406, Renata Souto Furtado, 66.00, 5.10 / 11174826, Renato
da Silva Louro, 72.00, 0.00 / 10831949, Renato Gallart de Menezes, 72.00, 0.00 / 10583466, Renato Gonçalves Gerk, 81.50, 2.65 / 10215868, Renato Lopes
Rena, 91.50, 6.25 / 10750329, Renato Peixoto de Abreu, 77.50, 3.71 / 10613436, Renato Warwar Silva, 71.50, 3.25 / 10536170, Ricardo Bicalho Souto, 69.00,
3.25 / 10767568, Richard Martins de Assis, 67.50, 1.34 / 10357607, Robson Mattos Guimaraes, 66.50, 2.47 / 10532437, Rodrigo Achilles Pereira, 82.50, 4.00
/ 10618985, Rodrigo da Silva Adur, 66.00, 3.64 / 10976132, Rodrigo Hungria Mandu de Moura, 87.00, 5.86 / 10628421, Rodrigo Jose Pires Mariano, 73.00,
2.47 / 10216661, Rodrigo Lemos Coelho, 72.00, 3.89 / 10070751, Rodrigo Ribeiro Affonso Alves, 81.00, 4.37 / 11110226, Sandra Maria da Silva dos Santos,
70.00, 4.52 / 10433921, Savio Jose de Carvalho Habib, 72.00, 5.50 / 11074315, Sergio Minc Fasca, 79.50, 4.23 / 10660121, Silvio Almeida Souza da S, 72.00,
2.46 / 10161218, Silvio Jose Franco Arraes de Alencar, 78.00, 0.00 / 10237583, Solange da Silva Figueiredo, 68.00, 6.04 / 10780525, Solange Loyola Godoy,
88.50, 3.87 / 10314495, Solange Silva de Abreu, 72.00, 3.50 / 10271856, Stela Nazareth Alves, 75.00, 6.23 / 10618494, Teresa Cristina Braga, 72.00, 9.10 /
10351152, Thais de Moura Cardoso, 75.00, 3.41 / 10163786, Thais Ribeiro Storino, 67.00, 6.04 / 10900984, Thaissa Diirr Pinto de Medeiros, 80.00, 3.60 /
10865589, Thiago Crispino Santos, 75.50, 4.47 / 10166802, Thomas Albert da Silva, 88.50, 4.01 / 10248500, Tiago Tosta Peres, 67.50, 4.00 / 10628750,
Valeriana Gomes Roncero, 69.00, 3.26 / 10088968, Vando Ribeiro de Araujo, 75.00, 6.20 / 10515143, Vanessa do Nascimento Viana, 66.00, 0.00 / 10849673,
Vanessa Maria Costa Lopez, 86.50, 7.00 / 10347554, Vera Lucia de Brito Naylor, 71.50, 1.88 / 10476362, Veronica Tosta Mil Homens, 73.50, 0.60 / 10170327,
Victor Caetano Preuss Sthel Wardi, 68.50, 1.30 / 10683295, Victor Vidigal Ribeiro, 78.00, 4.65 / 10788127, Vinicius da Silva Reis, 81.00, 5.36 / 10599735,
Vinicius Nazare Morgado, 75.50, 9.87 / 10941000, Vitor Carvalho Neves, 93.00, 4.63 / 10894184, Viviane Viana Lopes, 67.50, 6.40 / 10668378, Wagner Luis
Carvalhosa de Mello, 81.00, 2.24 / 11132329, Waldyr Argento Junior, 75.00, 1.50 / 10187382, Wallace Silverio Lopes, 81.00, 3.41 / 10558894, Wander
Guimaraes da Costa, 87.00, 3.09 / 11008366, William Silveira Russo, 80.00, 2.14 / 10300453, Wilson Antonio Santanna, 67.50, 2.80."

nota52 = 105.82
nota25 = 94.23

puts "Cargo 52: \n"
puts calcula_notas_mpu(cargo52, nota52)
puts "Sua Colocação: " + @resultado.to_s
puts "\n\n\n\n"

puts "Cargo 25: \n"
puts calcula_notas_mpu(cargo25, nota25)
puts "Sua Colocação: " + @resultado.to_s
puts "\n\n\n\n"

