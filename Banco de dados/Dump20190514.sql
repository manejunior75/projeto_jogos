DROP DATABASE IF EXISTS projeto;

CREATE DATABASE projeto;

USE projeto;

DROP TABLE IF EXISTS comentario;

CREATE TABLE comentario (
  comentario varchar(100) DEFAULT NULL,
  nome varchar(100) NOT NULL,
  data date DEFAULT NULL,
  PRIMARY KEY (nome));

DROP TABLE IF EXISTS contribua;

CREATE TABLE contribua (
  link_video varchar(100) NOT NULL,
  PRIMARY KEY (link_video));
)

DROP TABLE IF EXISTS jogos;

CREATE TABLE jogos (
  cod_jogo int(11) NOT NULL AUTO_INCREMENT,
  nome_jogo varchar(30) DEFAULT NULL,
  info_1 varchar(3000) DEFAULT NULL,
  info_2 varchar(3000) DEFAULT NULL,
  info_3 varchar(3000) DEFAULT NULL,
  capa_jogo varchar(30) DEFAULT NULL,
  PRIMARY KEY (cod_jogo));

DROP TABLE IF EXISTS postagens;

CREATE TABLE postagens (
  videos longblob,
  podcast blob,
  data date NOT NULL,
  descricao varchar(100) DEFAULT NULL,
  PRIMARY KEY (data));


DROP TABLE IF EXISTS radio;

CREATE TABLE radio (
  gravacoes longblob,
  anuncio mediumblob,
  podcast blob,
  data date NOT NULL,
  PRIMARY KEY (data));


DROP TABLE IF EXISTS usuario;

CREATE TABLE usuario (
  nome varchar(30) DEFAULT NULL,
  email varchar(30) NOT NULL,
  PRIMARY KEY (email));

 INSERT INTO TABLE jogos
	values(
		1,
		'God Of War',
		'God of War é um jogo eletrônico de ação-aventura desenvolvido pela Santa Monica Studio e publicado pela Sony Interactive Entertainment (SIE). Lançado mundialmente em 20 de abril de 2018 para o PlayStation 4, é o oitavo título da série God of War e também o oitavo em ordem cronológica, sendo sequência dos eventos ocorridos em God of War III (2010). Ao contrário dos jogos anteriores, que eram vagamente baseados na mitologia grega, este título é vagamente baseado na mitologia nórdica, com a maior parte do tempo situado na antiga Noruega no reino de Midgard.',
		'Pela primeira vez na série, há dois protagonistas principais: Kratos, o antigo deus grego da guerra, que permanece como o único personagem jogável, no qual é acompanhado por seu jovem filho Atreus; às vezes, o jogador pode passivamente controlá-lo. Após a morte da segunda esposa de Kratos e da mãe de Atreus, eles viajam para cumprir sua promessa de espalhar suas cinzas no pico mais alto dos nove reinos. Kratos mantém seu passado conturbado em segredo de Atreus, que não tem consciência de sua natureza divina. Ao longo de sua jornada, eles encontram monstros e deuses do mundo nórdico.. Descrita pelo diretor criativo Cory Barlog como uma reimaginação para a franquia, a jogabilidade foi completamente reconstruída, com uma grande mudança sendo que Kratos não usa mais suas lâminas duplas como armas principais; ao invés disso, ele usa um machado de batalha mágico chamado Machado Leviatã.',
		'Outra mudança notável é a câmera; o jogo usa um sistema de câmera livre sobre o ombro em oposição à câmera fixa vista nos títulos anteriores. Além disso, o jogo não contém cortes de câmera e é apresentado em uma filmagem contínua, sendo o primeiro jogo triple A tridimensional da história à apresentar uma filmagem contínua. Há também elementos semelhantes aos jogos de RPG e o filho de Kratos, Atreus, pode fornecer assistência durante o jogo. A maioria da equipe de desenvolvimento do primeiro jogo trabalhou em God of War e o projetou para ser melhor acessível. Um pequeno jogo baseado em texto, A Call from the Wilds, foi lançado em 1 de fevereiro de 2018 através do Facebook Messenger, e segue Atreus em sua primeira aventura.',
		'images/GOW4.png');
	
INSERT INTO TABLE jogos
	values(
		2,
		'Grand Theft Auto V',
		'Los Santos é uma cidade de luzes cintilantes, noites longas e segredos sujos, e eles não ficam mais cintilantes, longos ou sujos do que em GTA Online: Night na Balada. A festa começa agora.',
		'Grand Theft Auto V é um jogo eletrônico de ação-aventura desenvolvido pela Rockstar North e publicado pela Rockstar Games. É o sétimo título principal da série Grand Theft Auto e foi lançado originalmente em 17 de setembro de 2013 para PlayStation 3 e Xbox 360, com remasterizações lançadas em 18 de novembro de 2014 para PlayStation 4 e Xbox One, e em 14 de abril de 2015 para Microsoft Windows. O jogo se passa no estado ficcional de San Andreas, com a história da campanha um jogador seguindo três criminosos e seus esforços para realizarem assaltos sob a pressão de uma agência governamental. O mundo aberto permite que os jogadores naveguem livremente pelas áreas rurais e urbanas de San Andreas.',
		'A jogabilidade é mostrada em uma perspectiva de primeira ou terceira pessoa e o mundo pode ser atravessado a pé ou com veículos. Os jogadores controlam três protagonistas e podem alternar entre eles durante e fora das missões. A história é centrada em sequências de assaltos, com muitas missões envolvendo a jogabilidade de tiro e direção. Um sistema de "procurado" define a resposta e agressividade das forças da lei contra os crimes cometidos pelo jogador. O modo multijogador, Grand Theft Auto Online, permite que até trinta jogadores explorem o mundo e entrem em partidas competitivas ou cooperativas.',
		'images/GTAV.png');
		
INSERT INTO TABLE jogos
	values(
		3,
		'Sekiro Shadows Die Twice',
		'Sekiro: Shadows Die Twice é um jogo eletrônico de ação-aventura jogado a partir de uma perspectiva em terceira pessoa. Embora comparado com a série Souls, da FromSoftware, o jogo não apresenta elementos de RPG, como criação de personagens, classes e upgrades de equipamentos, além de não ter elementos multiplayer. Em vez de atacar para reduzir os pontos de vida de um inimigo, o combate em Sekiro gira em torno de uma katana para atacar seu equilíbrio, o que eventualmente leva a uma abertura que permite um único golpe mortal. O jogo também possui elementos furtivos, permitindo que os jogadores eliminem imediatamente inimigos se eles puderem ficar no alcance sem serem detectados. Além disso, o personagem do jogador tem a habilidade de usar várias ferramentas para ajudar no combate e exploração, como um gancho e uma tocha. Se o personagem jogador morrer, ele terá a opção de ser revivido no local sob certas condições, em vez de reaparecer em pontos de checkpoint anteriores.',
		'null',
		'null',
		'images/Sekiro.png');
		
INSERT INTO TABLE jogos
	values(
		4,
		'Days Gone',
		'Days Gone é um jogo de mundo aberto com zumbis em um cenário pós-apocalíptico jogado em uma perspectiva de terceira-pessoa. Os jogadores controlam Deacon St. John, um viajante e caçador de recompensas que prefere viver uma vida perigosa na estrada, ao invés da vida nos acampamentos na floresta. O jogo se passa dois anos depois de que uma pandemia global ocorreu e que matou quase toda a humanidade, transformando milhares de pessoas em "Freakers", zumbis que não pensam mas evoluem rapidamente.',
		'Como o jogo é ambientado em um mundo aberto, os jogadores podem completar os objetivos de várias formas, tais como agir furtivamente ou escolher a agressiva abordagem por meio de armas curtas e de longo alcance. A dinâmica de dia e noite é um destaque do jogo, o que faz os Freakers fracos e lentos durante o dia, mas rápidos e agressivos durante a noite. Veículos como motos podem ser usados para explorar o mundo do jogo. Os jogadores são capazes de construir novos itens para melhorar a eficiência no combate.',
		'null',
		'images/DaysGone.png');
		
INSERT INTO TABLE jogos
	values(
		5,
		'Devil May Cry 5',
		'Devil May Cry 5 é um jogo eletrônico de ação-aventura hack and slash que conta com o retorno de Dante e Nero como personagens jogáveis, junto com um novo personagem, chamado "V". A jogabilidade é semelhante aos outros títulos da série Devil May Cry, concentrando-se em um combate de "ação elegante" em um ritmo acelerado. O jogador luta contra hordas de demônios com uma variedade de ataques e armas e recebe uma avaliação de estilo em combate com base em vários fatores, como variedade de movimentos, a duração de uma combinação e ataques desordenados. A música no jogo muda com base no desempenho do jogador em combate.',
		'Nero é equipado com sua espada Red Queen, seu revólver Blue Rose de cano duplo e uma variedade de novos braços robóticos chamados Devil Breakers, com uma variedade de funções como agarrar inimigos à distância ou parar para congelar um inimigo no local. Junto com sua lâmina de assinatura, a Rebellion, e a espada demoníaca Sparda, Dante foi mostrado usando dois novos Devil Arms, um par de armas que combinam com uma motocicleta chamada Cavaliere, e um conjunto de manoplas e botas de fogo chamadas Balrog. Além disso, Dante também usa o Cerberus, introduzido em Devil May Cry 3.',
		'O terceiro personagem jogável, V, é mostrado empunhando uma bengala e um livro. Durante uma entrevista, a Capcom decidiu não divulgar exatamente como V luta ainda, embora tenha provocado que o combate de V seria completamente diferente da de Nero e Dante. No trailer do jogo, apresentando no The Game Awards 2018, é revelado que V usa três demônios baseados em inimigos do primeiro jogo para lutar, incluindo Griffon, uma águia que usa ataques à distância, Shadow, uma pantera que forma lâminas, picos e portais fora de seu corpo, e Nightmare, um grande golem que V entra em um estado parecido com o Devil Trigger, que transforma seu cabelo branco, para convocar, que usa uma combinação de ataques corpo a corpo e raios laser.',
		'images/DMC5.jpg');
		
INSERT INTO TABLE jogos
	values(
		6,
		'Resident Evil 2',
		'O Resident Evil 2 original foi lançado para o PlayStation em 1998. Após a liberação da nova versão do primeiro Resident Evil para o GameCube em 2002, a Capcom considerou fazer uma nova versão semelhante para o Resident Evil 2, mas o criador da série Shinji Mikami não queria desviar o desenvolvimento de Resident Evil 4. Em agosto de 2015, a Capcom anunciou que um remake estava em desenvolvimento. Nenhum detalhe adicional foi divulgado até a E3 2018, quando a Capcom revelou um trailer e uma sequência de gameplay. Hideki Kamiya, diretor do Resident Evil 2 original, disse que ele havia forçado a Capcom a criar um remake por anos.',
		'O produtor Yoshiaki Hirabayashi disse que a equipe estava se esforçando para capturar o espírito do jogo original, e que a equipe incorporou comentários recebidos sobre Resident Evil 6, um jogo que ele também produziu. Resident Evil 2 usa a RE Engine, o mesmo motor gráfico de jogo usado em Resident Evil 7. O motor permitiu que a Capcom modernizasse a jogabilidade.',
		'Para atender às expectativas modernas, a equipe tentou tornar o remake mais realista; por exemplo, Leon não usa mais ombreiras grandes, que foram adicionadas para distinguir seu modelo original de baixo polígono. Embora eles se esforçassem para fazer um jogo "moderno e acessível", eles se concentraram no terror sobre a ação, na esperança de preservar uma sensação claustrofóbica. O produtor Tsuyoshi Kanda reconheceu a dificuldade de tornar os zumbis assustadores, já que eles se tornaram onipresentes na mídia de entretenimento desde o lançamento do Resident Evil original em 1996. Ao remover os ângulos de câmera fixa, a equipe teve que usar diferentes maneiras para esconder os inimigos, usando elementos como layout da sala, iluminação e fumaça. O novo sistema de câmera também afetou o design do som, já que não fazia mais sentido que o som viesse de uma fonte fixa.',
		'images/RE2R.png');
		
INSERT INTO TABLE jogos
	values(
		7,
		'Bloodborne',
		'Boodborne é um jogo eletrônico de ação-aventura produzido pela From Software e publicado pela Sony Computer Entertainment a 24 de Março de 2015 em exclusivo para a PlayStation 4. Bloodborne foi realizado por Hidetaka Miyazaki, diretor de Demons Souls e Dark Souls. Miyazaki afirmou que o jogo nunca foi produzido com o sentido de ser Demons Souls II, porque a Sony Computer Entertainment queria uma nova IP para a PlayStation 4. Foi anunciado pela Sony a 9 de junho de 2014 durante a Electronic Entertainment Expo 2014, onde foi bem recebido pela critica ganhando diversos prêmios e nomeações. Bloodborne foi descrito por Paul Sullivan da Sony como "Dark Souls com Caçadeiras".',
		'Bloodborne recebeu aclamação critica aquando do seu lançamento. Nos sites de pontuações agregadas GameRankings e Metacritic tem as médias de 91,62% e 93/100, respectivamente. A atmosfera, o enredo, a música, a apresentação, a jogabilidade e a direção em geral, foram elogiadas. Uma das principais criticas foram dirigidas aos tempos de carregamento muito longos. No entanto, em 23 de abril de 2015, a From Software disponibilizou uma atualização que resolveu o problema.',
		'null',
		'images/BloodB.jpg');
		
INSERT INTO TABLE jogos
	values(
		8,
		'Marvel Spider-Man',
		'Marvel Spider-Man é um jogo eletrônico de ação-aventura baseado no super-herói Homem-Aranha da Marvel Comics, desenvolvido pela Insomniac Games e publicado pela Sony Interactive Entertainment para o PlayStation 4. É o primeiro jogo licenciado desenvolvido pela Insomniac. O jogo conta uma nova história sobre o Homem-Aranha que não está ligada a uma história em quadrinhos ou algum filme, e abrange os aspectos de Peter Parker e Homem-Aranha no personagem.',
		'O jogo foi lançado mundialmente em 7 de setembro de 2018. Após o lançamento pretendido, no entanto, houve conteúdo extra sendo adicionado ao Spider-Man através do DLC "City That Never Sleeps", incluindo novos personagens do universo do Homem-Aranha e novos trajes desbloqueáveis para o personagem poder utilizar.',
		'Marvel Spider-Man foi bem recebido pelos críticos, que elogiaram a sua jogabilidade (particularmente a mecânica de combate), gráficos, história, trilha sonora e design de Nova Iorque, enquanto recebia críticas por falta de inovação em seu mundo aberto. Foi saudado por muitos revisores como um dos melhores jogos de super-heróis já feitos.',
		'images/MSPM.jpg');
		