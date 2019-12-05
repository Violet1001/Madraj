-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Tempo de geração: 05-Dez-2019 às 14:00
-- Versão do servidor: 8.0.18
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mandraj`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estadio`
--

DROP TABLE IF EXISTS `estadio`;
CREATE TABLE IF NOT EXISTS `estadio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_time` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nome_estadio` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lotacao` int(11) NOT NULL,
  `descricao` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_time` (`nome_time`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estadio`
--

INSERT INTO `estadio` (`id`, `nome_time`, `nome_estadio`, `lotacao`, `descricao`) VALUES
(1, 'Athletico Paranaense', 'Arena da Baixada', 42370, 'Conhecido como Arena da Baixada, o espaço foi o primeiro palco do futebol brasileiro a adotar o naming rights com o título de Kyocera Arena entre 2005 e 1º de abril de 2008 e com a escolha de Curitiba para ser uma das sedes da Copa do Mundo de 2014, a Arena, entre 2012 e 2014, foi reformada, com a ampliação de capacidade de modo a atender os padrões exigidos pela FIFA, passando a ter 42.370 lugares (capacidade de operação conforme CNEF/CBF 2014 é idêntica à capacidade oficial).\r\n\r\nLocalizado no bairro do Água Verde, tem como forte diferencial sua localização, próximo ao centro da capital paranaense. A história do estádio do Atlético começou no início do século XX, quando em 1914, Joaquim Américo Guimarães, então presidente do Internacional (clube que originaria o Clube Atlético Paranaense), comandou a construção do estádio Baixada da Água Verde. O Atlético surgiu dez anos depois, herdando o patrimônio e batizando o estádio com o nome do principal responsável por seu surgimento.\r\n\r\nEm 1934, o estádio foi batizado, oficialmente, com o nome do fundador do International Foot-Ball Club, Joaquim Américo Guimarães.'),
(2, 'Atlético Mineiro', 'Independência', 23018, 'Em 1947, o prefeito Otacílio Negrão de Lima escolheu um terreno no bairro Oswaldo Cruz (atual Horto) para construir o estádio que sediaria os jogos de Belo Horizonte na Copa do Mundo FIFA de 1950.\r\n\r\nEm 18 de junho de 1950, uma semana antes da inauguração, o time do Sete de Setembro testou e aprovou o gramado.\r\n\r\nSua inauguração ocorreu no dia 25 de junho de 1950, com o jogo Iugoslávia 3 a 0 Suíça.[3] Quatro dias depois, o Independência foi palco de Estados Unidos 1 a 0 Inglaterra, partida considerada a maior zebra da história das Copas do Mundo. O último jogo foi Uruguai 8 a 0 Bolívia em 2 de Julho, na única partida do Uruguai na primeira fase - o time eventualmente ganharia a Copa diante da Seleção Brasileira em um Maracanã lotado. '),
(3, 'Avaí', 'Ressacada', 17826, 'O Estádio Aderbal Ramos da Silva, popularmente conhecido como Estádio da Ressacada, de propriedade do Avaí Futebol Clube, é um estádio de futebol localizado em Florianópolis, capital do estado brasileiro de Santa Catarina. Foi inaugurado em 15 de novembro de 1983, e sua iluminação, em 31 de maio de 1986. Seu recorde de público é de 32.226 (25.735 pagantes) na final do campeonato catarinense de 1988.\r\n\r\nDesde sua inauguração em 1983 até o ano de 2001, o estádio teve capacidade oficial para públicos superiores a 20 mil espectadores, recebendo todos os seus principais recordes de público durante este período. A partir de 2002 o estádio teve sua capacidade amplamente reduzida pela nova gestão, passando a receber lotações com borderôs reduzidos até o ano de 2009. Com as reformas do estádio finalizadas em 2010, a Ressacada tem atualmente, capacidade para 17.800 torcedores.\r\n\r\nCom uma única via de acesso, distante de grandes centros e de bairros populosos, a Ressacada tem reconhecidamente um dos piores acessos a um estádio no país. Em grandes jogos, o trânsito fica muito complicado e é comum ver inclusive torcedores chegando perto do intervalo da partida. Esta dificuldade crônica de locomoção valoriza ainda mais os feitos da nação avaiana em dias de jogos com casa cheia.[4]\r\n\r\nA Ressacada já foi palco de três jogos da Seleção Brasileira e nove finais de campeonatos oficiais, todas vencidas pelo Avaí Futebol Clube. '),
(4, 'Bahia', 'Arena Fonte Nova', 50025, 'A Arena Fonte Nova é um estádio de futebol localizado em Salvador, no estado brasileiro da Bahia, reconstruído no mesmo local do antigo Estádio Octávio Mangabeira.[12] O nome oficial do equipamento é Complexo Esportivo Cultural Octávio Mangabeira.[13] Entretanto, por questões de patrocínios de nome ganhou a denominação Itaipava Arena Fonte Nova, ao mesmo tempo que manteve o apelido do antigo estádio que substituiu, também sendo conhecido popularmente como Fonte Nova.[7][14][15]\r\n\r\nPara a construção, a antiga estrutura foi implodida em 29 de agosto de 2010 para dar lugar à Arena Fonte Nova, projeto de sede baiana para a Copa do Mundo FIFA de 2014. No início do mês de janeiro de 2013 atingiu 90% das obras concluídas, tendo sido o quarto estádio mais avançado dentre os doze que sediaram a Copa das Confederações de 2013 e a Copa do Mundo de 2014.[16][17] E em março, alcançou 99% das obras concluídas.[18][19] O estádio foi oficialmente inaugurado no dia 5 de abril com presença da então presidente Dilma Rousseff.[5][20][21] O primeiro jogo da arena foi o clássico Ba-Vi, ocorrido dois dias depois, onde o Vitória se sagrou vencedor por 5 a 1.[6][22][23][24] Renato Cajá, jogador do rubro-negro baiano, entrou para a história ao marcar o primeiro gol após a inauguração.\r\n\r\nUtiliza o mesmo modelo de gestão multiuso de sucesso na Europa, o da Johan Cruijff Arena, um dos maiores centros de lazer do mundo, casa do Ajax e parceiro na operação da nova arena baiana.[25] O estádio tem capacidade oficial para 47.907 pessoas em três níveis de arquibancadas com assentos cobertos, camarotes, vista para o estádio e para o Dique do Tororó e 2 mil vagas de estacionamento. Sua estrutura abriga também sala de imprensa, quiosques, elevadores, sanitários e centro de negócios que funciona independentemente dos jogos.[26] Além de partidas de futebol, a Arena Fonte Nova permite a realização de outros eventos como apresentações musicais, congressos e encontros de negócios.[27][28] Sua estrutura verticalizada, com três anéis de arquibancada, coloca o público mais próximo do espetáculo promovendo um maior envolvimento e favorecendo a acústica.[7] '),
(5, 'Botafogo', 'Nilson Santos', 44661, ' Estádio Olímpico Nilton Santos, antes denominado Estádio Olímpico João Havelange[4] e popularmente conhecido como Engenhão, é um estádio poliesportivo localizado no antigo terreno da Rede Ferroviária Federal, no bairro do Engenho de Dentro, na cidade do Rio de Janeiro e pertencente a Prefeitura Municipal do Rio de Janeiro, cedido ao Botafogo de Futebol e Regatas, seu arrendatário. O estádio foi inaugurado em 30 de junho de 2007. A partir de 2015, a pedido do Botafogo, gestor do estádio, o nome fantasia do local foi alterado para Estádio Nilton Santos.[5][6] A homologação do pedido feito pelo Botafogo no final de janeiro de 2015 aconteceu por meio de despacho publicado na edição de 10 de fevereiro de 2015 no Diário Oficial do Município. No texto, o prefeito Eduardo Paes afirmou ser \"uma justa homenagem ao atleta e ídolo Nilton Santos\".[7]\r\n\r\nEm 2010, a diretoria do Botafogo utilizou o nome fantasia \"Stadium Rio\",[8] na tentativa de facilitar uma eventual comercialização dos naming rights do estádio, o que no fim não ocorreu, devido à sua interdição em 2013.[9]\r\n\r\nConstruído no governo Cesar Maia e de propriedade municipal, mas arrendado pelo Botafogo F.R. no ano de sua inauguração até 2027, com possibilidade de prorrogação por mais 2 anos, portanto até 2029, por conta do período de interdição [10], o local foi levantado para sediar as competições de atletismo e futebol dos Jogos Pan-americanos de 2007.\r\n\r\nAtualmente, tem capacidade total para mais de 44 mil pessoas sentadas,[11] tendo sido considerado o estádio mais moderno e o mais bonito da América Latina à época de sua construção.[12]\r\n\r\nEm janeiro de 2017, o prefeito Marcelo Crivella rebatizou oficialmente o nome do estádio como Nilton Santos. A mudança foi publicada no Diário Oficial do município.[13] '),
(6, 'Ceará', 'Arena Castelão', 63903, 'O Estádio Governador Plácido Castelo, também conhecido como Arena Castelão, ou simplesmente Castelão, é um estádio de futebol brasileiro localizado em Fortaleza, Ceará, e inaugurado em 1973. Sua capacidade atual é de até 63.903 espectadores. Está entre os 60 maiores estádios do mundo, é o quarto maior do Brasil e o maior do Norte/Nordeste.[4] É o primeiro estádio da América do Sul a obter a certificação ambiental Leed.[5]\r\n\r\nO estádio foi reformado em 2002, e totalmente remodelado em 2012, em decorrência da Copa do Mundo FIFA de 2014, evento do qual foi uma das sedes, recebendo seis jogos,[6] entre eles um jogo das oitavas de final, um das quartas de final e dois jogos da Seleção Brasileira.[7]\r\n\r\nJá foi palco de grandes eventos esportivos e culturais, como jogos da Seleção Brasileira e a recepção ao Papa João Paulo II em 1980, em sua passagem pela capital do estado. Entre competições nacionais de futebol, foi sede das finais do Campeonato Brasileiro Série B de 2002, da Copa dos Campeões de 2002[8], da Copa do Brasil de 1994 e da Copa do Nordeste de 2014 e de 2015.\r\n\r\nEm 2013, foi uma das sedes da Copa das Confederações;[9] em 2014, recebeu jogos da Copa do Mundo [10] e, em 2016, foi um dos centros de treinamento para os Olimpíadas de 2016 [11] como parte integrante do Centro de Formação Olímpica do Nordeste, um dos maiores centros de formação esportiva de alto nível do país.[12][13] '),
(7, 'Chapecoense', 'Arena Condá', 20089, 'A Arena Condá é um estádio de futebol localizado no Centro do município de Chapecó, Santa Catarina, Brasil. De propriedade do município de Chapecó, é a casa da Associação Chapecoense de Futebol que também exerce o papel de mandante do estádio. Foi inaugurado em 6 de fevereiro de 1980, quando ainda denominava-se Estádio Regional índio Condá. O estádio tinha capacidade para 15 000 pessoas e teve seu maior público registrado na final do Campeonato Catarinense de 2007 onde 15 621 torcedores assistiram o jogo. A partida inaugural foi entre a Chapecoense e o Internacional, sendo que o primeiro jogador a marcar um gol foi Bira, que defendia as cores do Internacional.\r\n\r\nCom a grande ascensão da Chapecoense nas competições estaduais e nacionais, e com as instalações um tanto quanto precárias, houve a necessidade da remodelação e expansão do estádio. Em 2008, o Estádio Regional Índio Condá foi remodelado, com a demolição de suas alas e a construção de novas alas. Esse processo se deu por etapas. A primeira etapa foi finalizada em 2009 e a última em 2014. Em maio de 2009, o Estádio Regional Índio Condá passou a ser denominado Arena Condá com a criação da Lei Municipal nº 5.560, de 28 de maio de 2009.\r\n\r\nA princípio não será mexido na ala oeste (cadeiras), ficando inalterada em relação ao estado anterior do inicio da reforma. A capacidade anterior do estádio era de cerca de 15 000 pessoas, após a expansão passou a comportar mais de 20 000 pessoas. '),
(8, 'Corinthians', 'Arena Corinthians', 47605, 'Arena Corinthians,[7][8] popularmente conhecida como Itaquerão,[9][10][11][12] é um estádio de futebol localizado no distrito de Itaquera, na Zona Leste do município de São Paulo, Brasil. De propriedade do Sport Club Corinthians Paulista, sua capacidade é de 45 000 lugares, sendo o 14º maior estádio do Brasil. O Ministério do Esporte lançou o Sistema Brasileiro de Classificação de Estádios (Sisbrace), que propõe a melhoria em conforto, segurança, acessibilidade e condições sanitárias e de higiene dos estádios do país, tendo a Arena Corinthians recebido avaliação máxima com cinco bolas[13], além de ganhar também o prêmio de melhor projeto de arquitetura do país no ano de 2011.[14]\r\n\r\nA arena foi inaugurada oficialmente em 18 de maio de 2014 em uma partida entre a equipe do Corinthians e o Figueirense, com derrota do time paulista pelo placar de 1 a 0, na Série A do Brasileiro daquela temporada. Poucas semanas depois de sua inauguração oficial, sediou a cerimônia de abertura da Copa do Mundo FIFA de 2014, que incluiu a partida entre Brasil e Croácia, e outros cinco duelos do torneio, entre os quais uma semifinal. Devido a exigência da FIFA de pelo menos 60 mil lugares para o jogo inaugural da Copa do Mundo, foram incluídos mais 19 800 assentos temporários ao estádio exclusivamente para atender a exigência.[15][16][17] Com o fim do Mundial de 2014, o Corinthians determinou a retirada das estruturas temporárias.[18][19]\r\n\r\nConstruído pela Odebrecht entre 2011 e 2014, a obra tinha previsão de custo inicial em 820 milhões de reais[20], mas seu preço final atingiu quase 1,2 bilhão de reais, incluindo uma isenção tributária de 420 milhões de reais por parte da prefeitura do município de São Paulo.[21] Além dos vastos recursos financeiros utilizados em sua construção, a arena também recebeu críticas pelas circunstâncias em que foi escolhida como o estádio oficial da Copa do Mundo e pelas condições de trabalho dos operários que participaram da obra. A Arena Corinthians atingiu a marca de 4 milhões de torcedores(as) no seu 124º jogo, tendo média de 32 308 pagantes por partida e arrecadou o montante superior a 234 milhões de reais.[22] '),
(9, 'Cruzeiro', 'Mineirão', 61846, 'O Estádio Governador Magalhães Pinto, mais conhecido como Mineirão, é um estádio de futebol localizado em Belo Horizonte, Minas Gerais, onde o Cruzeiro Esporte Clube manda seus jogos, por isso também chamado de Toca da Raposa 3[7][8][9] por seus torcedores. Inaugurado em 1965, é o quinto maior estádio do Brasil, já tendo sediado cinco finais da Copa Libertadores, uma Copa Intercontinental e escolhido como uma das sedes da Copa do Mundo FIFA de 2014. Em 2003, foi tombado pelo Conselho Deliberativo do Patrimônio Cultural do Município de Belo Horizonte.[10]\r\n\r\nEm junho de 2014, tornou-se primeiro estádio brasileiro e o segundo do mundo a conquistar a categoria máxima de certificação ambiental Leadership in Energy and Environmental Design, concedida pelo Green Building Council Institute.[11]\r\n\r\nO Mineirão ficou marcado como o palco da maior derrota da Seleção Brasileira de Futebol, uma goleada de 7 x 1 da Alemanha na semifinal da Copa do Mundo FIFA de 2014, que ficou conhecida como Mineiraço.[12]\r\n\r\nO estádio é parte do Conjunto Arquitetônico da Pampulha, projetado por Oscar Niemeyer sob encomenda do prefeito Juscelino Kubitschek e construído entre 1942 e 1944. Em 17 de julho de 2016, o local passou a ser considerado um Patrimônio da Humanidade após reunião de membros da Unesco em Istambul, na Turquia.[13] '),
(10, 'CSA', 'Arena Rei Pelé', 19105, 'Estádio Rei Pelé, popularmente conhecido como Trapichão, é um estádio de futebol localizado na cidade de Maceió, capital do estado de Alagoas. Foi inaugurado no dia 25 de outubro de 1970 com o jogo amistoso entre Seleção Alagoana e Santos e é utilizado habitualmente pelas equipes alagoanas do CRB e do CSA. Pelé atuou neste jogo e o primeiro gol do Trapichão foi de autoria do santista Douglas. O jogo foi ganho pelo Santos por 5 a 0, com um público pagante de 40.215 pessoas e o público total de 42.326 espectadores. Atualmente o estádio tem capacidade para 14.636 pessoas[3]. '),
(11, 'Flamengo', 'Maracanã', 78838, 'Estádio Jornalista Mário Filho, mais conhecido como Maracanã, ou ainda Maraca, é um estádio de futebol localizado na Zona Norte da cidade brasileira do Rio de Janeiro.[6] Foi inaugurado em 1950, durante o mandato do então General de Divisão e Prefeito do Distrito Federal do Rio de Janeiro Marechal Ângelo Mendes de Moraes, tendo sido utilizado na Copa do Mundo de Futebol daquele ano.\r\n\r\nDesde então, o Maracanã foi palco de grandes momentos do futebol brasileiro e mundial, como o milésimo gol de Pelé, finais do Campeonato Brasileiro, Carioca de Futebol, Taça Libertadores da América e do primeiro Campeonato Mundial de Clubes da FIFA, além de competições internacionais e partidas da Seleção Brasileira.\r\n\r\nO estádio foi um dos locais de competição dos Jogos Pan-Americanos de 2007, recebendo o futebol, as cerimônias de abertura e de encerramento. Sediou futebol e as cerimônias de abertura e encerramento dos Jogos Olímpicos de 2016, que foram realizados na cidade do Rio de Janeiro.[7] Foi também o palco das partidas finais da Copa das Confederações de 2013 e da Copa do Mundo FIFA de 2014.[8]\r\n\r\nAo longo do tempo, no entanto, o estádio passou a assumir caráter de espaço multiúso ao receber outros eventos como espetáculos e partidas de outros esportes, como o voleibol em uma oportunidade. Após diversas obras de modernização, a capacidade do estádio é de 78 838 espectadores, sendo o maior estádio do Brasil. '),
(12, 'Fluminense', 'Maracanã', 78838, 'Estádio Jornalista Mário Filho, mais conhecido como Maracanã, ou ainda Maraca, é um estádio de futebol localizado na Zona Norte da cidade brasileira do Rio de Janeiro.[6] Foi inaugurado em 1950, durante o mandato do então General de Divisão e Prefeito do Distrito Federal do Rio de Janeiro Marechal Ângelo Mendes de Moraes, tendo sido utilizado na Copa do Mundo de Futebol daquele ano.\r\n\r\nDesde então, o Maracanã foi palco de grandes momentos do futebol brasileiro e mundial, como o milésimo gol de Pelé, finais do Campeonato Brasileiro, Carioca de Futebol, Taça Libertadores da América e do primeiro Campeonato Mundial de Clubes da FIFA, além de competições internacionais e partidas da Seleção Brasileira.\r\n\r\nO estádio foi um dos locais de competição dos Jogos Pan-Americanos de 2007, recebendo o futebol, as cerimônias de abertura e de encerramento. Sediou futebol e as cerimônias de abertura e encerramento dos Jogos Olímpicos de 2016, que foram realizados na cidade do Rio de Janeiro.[7] Foi também o palco das partidas finais da Copa das Confederações de 2013 e da Copa do Mundo FIFA de 2014.[8]\r\n\r\nAo longo do tempo, no entanto, o estádio passou a assumir caráter de espaço multiúso ao receber outros eventos como espetáculos e partidas de outros esportes, como o voleibol em uma oportunidade. Após diversas obras de modernização, a capacidade do estádio é de 78 838 espectadores, sendo o maior estádio do Brasil. '),
(13, 'Fortaleza', 'Arena Castelão', 63903, 'O Estádio Governador Plácido Castelo, também conhecido como Arena Castelão, ou simplesmente Castelão, é um estádio de futebol brasileiro localizado em Fortaleza, Ceará, e inaugurado em 1973. Sua capacidade atual é de até 63.903 espectadores. Está entre os 60 maiores estádios do mundo, é o quarto maior do Brasil e o maior do Norte/Nordeste.[4] É o primeiro estádio da América do Sul a obter a certificação ambiental Leed.[5]\r\n\r\nO estádio foi reformado em 2002, e totalmente remodelado em 2012, em decorrência da Copa do Mundo FIFA de 2014, evento do qual foi uma das sedes, recebendo seis jogos,[6] entre eles um jogo das oitavas de final, um das quartas de final e dois jogos da Seleção Brasileira.[7]\r\n\r\nJá foi palco de grandes eventos esportivos e culturais, como jogos da Seleção Brasileira e a recepção ao Papa João Paulo II em 1980, em sua passagem pela capital do estado. Entre competições nacionais de futebol, foi sede das finais do Campeonato Brasileiro Série B de 2002, da Copa dos Campeões de 2002[8], da Copa do Brasil de 1994 e da Copa do Nordeste de 2014 e de 2015.\r\n\r\nEm 2013, foi uma das sedes da Copa das Confederações;[9] em 2014, recebeu jogos da Copa do Mundo [10] e, em 2016, foi um dos centros de treinamento para os Olimpíadas de 2016 [11] como parte integrante do Centro de Formação Olímpica do Nordeste, um dos maiores centros de formação esportiva de alto nível do país.[12][13] '),
(14, 'Goiás', 'Serra Dourada', 42000, 'O Estádio Serra Dourada é um estádio desportivo localizado em Goiânia, Goiás, Brasil.\r\n\r\nNo estádio realizam-se as partidas dos principais times de futebol da cidade – Goiás, Atlético, Vila Nova e Goiânia, além de outros eventos em geral, tais como shows musicais, como em maio de 2013 que recebeu o Beatle Paul MacCartney que se apresentou para mais de 40 mil pessoas.\r\n\r\nFoi projetado por Paulo Mendes da Rocha, arquiteto vencedor do Prémio Pritzker de 2006. A sua inauguração ocorreu em 9 de março de 1975. Era o sétimo maior estádio do país, hoje é o vigésimo primeiro .Possui um amplo estacionamento para carros, com uma capacidade estimada de 10 mil vagas. A área do estádio é cercada por importantes vias de trânsito, como a rodovia BR-153, Avenida Fued José Sebba. '),
(15, 'Grêmio', 'Arena do Grêmio', 55662, 'Arena do Grêmio é um estádio de futebol localizado no bairro Humaitá, Porto Alegre, Rio Grande do Sul. Sua capacidade oficial é para 60.540 lugares, sendo o 7º maior estádio do Brasil. No Sisbrace, sistema de avaliação de estádios de futebol do Ministério do Esporte do Brasil, a Arena do Grêmio recebeu classificação máxima em todos os aspectos.[4] No mesmo ano da inauguração, foi eleito o \"Estádio do Ano\", pelo site \"StadiumDB\", ficando a frente de outras arenas como o Estádio Nacional de Varsóvia.[5]\r\n\r\nA arena foi inaugurada oficialmente em 8 de dezembro de 2012, com uma cerimônia que contou com a presença do grupo americano Blue Man Group, e um jogo amistoso entre o Grêmio e o Hamburgo, que terminou com o placar de 2–1 para o Grêmio. Mesmo sendo um dos estádios mais modernos do Brasil, não foi relacionado como sede da Copa do Mundo FIFA de 2014, realizada no país. Em 2019 a Arena do Grêmio foi uma das sedes da Copa América de 2019 onde foram realizadas cinco partidas entre elas a semi final entre Chile 0 x 3 Perú. 16'),
(16, 'Internacional', 'Beira-Rio', 50128, 'O Estádio José Pinheiro Borda, conhecido como Gigante da Beira-Rio ou simplesmente Beira-Rio, é um estádio de futebol localizado às margens do lago Guaíba na cidade de Porto Alegre, Brasil. Pertencente ao Sport Club Internacional, sua capacidade oficial é para 50 128 torcedores, sendo o 10º maior estádio do Brasil.[5][6] O Beira-Rio foi inaugurado oficialmente em 6 de abril de 1969 numa partida amistosa entre a equipe do Internacional e o Benfica, de Portugal, para um público de mais de 100 mil pessoas. O jogo acabou em 2 a 1 para o time brasileiro, uma vitória histórica contra uma das melhores equipes da época, e que contava, entre outros craques, com Eusébio.[7]\r\n\r\nDesde então, o Beira-Rio foi palco de grandes momentos do futebol brasileiro e mundial, como finais do Campeonato Brasileiro, da Copa Libertadores da América, da Copa Sul-Americana, da Copa do Brasil e cinco jogos da Copa do Mundo FIFA de 2014, além de competições internacionais e partidas da Seleção Brasileira.\r\n\r\nO Beira-Rio passou por um grande processo de modernização visando à Copa do Mundo de 2014. As obras do projeto denominado \'\'Gigante para Sempre\'\' começaram em março de 2012 e duraram cerca de dois anos. Neste período, a casa dos colorados foi adaptada às exigências e padrões internacionais do futebol estipulados pela FIFA, tornando-se mais confortável e segura.[8]\r\n\r\nO estádio adaptou-se às mais recentes exigências e padrões internacionais do futebol, pronto para sediar qualquer jogo nacional ou internacional, com um complexo esportivo sustentável. A casa do Internacional recebeu cinco partidas da Copa do Mundo de 2014. Foi batizado em homenagem ao cidadão português e colorado - alcunha que designa o torcedor do clube - que presidiu a comissão de obras e comandou a construção, vindo a falecer pouco antes de sua conclusão.[9] '),
(17, 'Palmeiras', 'Allianz Parque', 43713, 'Allianz Parque,[4] conhecido popularmente como Arena Palestra Itália[5][6][7] ou Arena Palmeiras,[8][9][10][nota 1] é uma arena multiúso construída para receber espetáculos, concertos, eventos corporativos e, principalmente, partidas de futebol do Palmeiras, seu proprietário. A nova arena foi construída pela empresa WTorre Properties/Arenas, do Grupo WTorre, onde se localizava o antigo Estádio Palestra Itália, também conhecido popularmente como Parque Antarctica.[15][16][17]\r\n\r\nA arena conta com um dos mais modernos espaços multiúso do país, e o seu estádio atende às normas da Fifa, se credenciando para receber os torneios esportivos mais relevantes. Com construção iniciada em 2010, foi finalizada em novembro de 2014.[18] Em fevereiro de 2015, o estádio foi eleito, por voto popular, o \"estádio do ano de 2014\" pelo site inglês “Stadium DataBase”.[19]\r\n\r\nO primeiro jogo oficial do Allianz Parque foi realizado no dia 19 de novembro de 2014 entre Palmeiras e Sport, pelo Campeonato Brasileiro de Futebol, com o placar de 0 a 2 para o Sport e presença de 35.939 torcedores.[20] O local já foi palco de duas grandes conquistas do Palmeiras. No Allianz Parque, a equipe foi campeã da Copa do Brasil de 2015 e do Campeonato Brasileiro de 2016.[21] A arena alviverde também já recebeu a Seleção Brasileira em duas oportunidades, uma delas pelas Eliminatórias da Copa do Mundo, em 2017.[22]\r\n\r\nOs primeiros espetáculos realizados no local foram os de Paul McCartney, que se apresentou nos dias 25 e 26 de novembro de 2014.[23] Além dos shows do ex-beatle, a arena já recebeu outros grandes nomes da música, como The Who, Rod Stewart, Elton John, James Taylor, Andrea Bocelli, Deep Purple, Iron Maiden, Guns N\' Roses, Aerosmith, Coldplay, Muse, Maroon 5 e Justin Bieber, entre outros.[24] '),
(18, 'Santos', 'Vila Belmiro', 16068, 'O Estádio Urbano Caldeira, mais conhecido como Vila Belmiro, é um estádio de futebol localizado no bairro da Vila Belmiro, em Santos. É o estádio particular do Santos Futebol Clube, tendo como capacidade atual de 16 899 pessoas, sendo considerado o maior estádio da Baixada Santista.\r\n\r\nÉ um dos estádios de futebol mais antigos do Brasil, foi inaugurado em 12 de outubro de 1916, mas sua primeira partida oficial só foi realizada 10 dias depois, quando o Santos venceu o Ypiranga por 2 a 1 pelo Campeonato Paulista de 1916. '),
(19, 'São Paulo', 'Morumbi', 72039, 'O Estádio Cícero Pompeu de Toledo, mais conhecido como Estádio do Morumbi, é um estádio construído para receber partidas de futebol, sendo a sede oficial do time brasileiro de futebol São Paulo Futebol Clube, já tendo recebido a Seleção Brasileira em várias ocasiões. O estádio foi projetado para acomodar 150 mil espectadores, mas, devido a diversas reformas e à instalação de camarotes, sua capacidade foi reduzida para 72 039. O Morumbi é o terceiro maior estádio do Brasil, sendo também o maior estádio do Estado de São Paulo. Localiza-se na Praça Roberto Gomes Pedrosa, nº 1, em São Paulo.[6]'),
(20, 'Vasco da Gama', 'São Januário', 21680, 'O Estádio Vasco da Gama, mais conhecido como São Januário, devido à parte de sua localização estar na rua de mesmo nome, é o estádio de futebol pertencente ao Club de Regatas Vasco da Gama. Foi inaugurado em 21 de abril de 1927, sendo até hoje o maior estádio particular do estado do Rio de Janeiro.[4][5][6][7]\r\n\r\nSua fachada, em estilo neocolonial, é tombada pelo Instituto do Patrimônio Histórico e Artístico Nacional.[4][6] Além disso há um Projeto de Lei 1563/96 na Câmara Municipal do Rio de Janeiro, apresentado em 29 de maio de 1996, com o fim de tombar o estádio e seu complexo esportivo e social, por seu valor histórico, cultural, esportivo e social. ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `time`
--

DROP TABLE IF EXISTS `time`;
CREATE TABLE IF NOT EXISTS `time` (
  `nome_time` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ano_criacao` date NOT NULL,
  `titulos_brasileirao` int(11) NOT NULL,
  PRIMARY KEY (`nome_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `time`
--

INSERT INTO `time` (`nome_time`, `ano_criacao`, `titulos_brasileirao`) VALUES
('Athletico Paranaense', '1924-03-26', 1),
('Atlético Mineiro', '1908-03-25', 1),
('Avaí', '1923-07-01', 0),
('Bahia', '1931-01-01', 2),
('Botafogo', '1904-08-12', 2),
('Ceará', '1914-06-02', 0),
('Chapecoense', '1973-05-10', 0),
('Corinthians', '1910-08-01', 7),
('Cruzeiro', '1921-01-02', 4),
('CSA', '1913-08-07', 0),
('Flamengo', '1895-11-17', 5),
('Fluminense', '1902-07-21', 4),
('Fortaleza', '1918-10-18', 0),
('Goiás', '1943-04-06', 0),
('Grêmio', '1903-08-15', 2),
('Internacional', '1909-04-04', 3),
('Palmeiras', '1914-08-26', 10),
('Santos', '1912-04-14', 8),
('São Paulo', '1930-01-25', 6),
('Vasco da Gama', '1898-08-21', 4);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estadio`
--
ALTER TABLE `estadio`
  ADD CONSTRAINT `estadio_ibfk_1` FOREIGN KEY (`nome_time`) REFERENCES `time` (`nome_time`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
