﻿DROP DATABASE IF EXISTS projeto;

CREATE DATABASE projeto;

USE projeto;

DROP TABLE IF EXISTS contribua;

CREATE TABLE contribua (
  link_video varchar(100) NOT NULL,
  PRIMARY KEY (link_video));

DROP TABLE IF EXISTS jogos;

CREATE TABLE jogos (
  cod_jogo int(11) NOT NULL AUTO_INCREMENT,
  nome_jogo varchar(30) DEFAULT NULL,
  plataforma varchar(100) DEFAULT NULL,
  info_1 varchar(3000) DEFAULT NULL,
  info_2 varchar(3000) DEFAULT NULL,
  info_3 varchar(3000) DEFAULT NULL,
  img_jogo varchar(100) DEFAULT NULL,
  capa_jogo varchar(100) DEFAULT NULL,
  categoria1 varchar(100) DEFAULT NULL,
  categoria2 varchar(100) DEFAULT NULL,
  categoria3 varchar(100) DEFAULT NULL,
  destaque varchar(100) DEFAULT NULL,
  PRIMARY KEY (cod_jogo));
  
DROP TABLE IF EXISTS generos;
 
CREATE TABLE generos (
  id_genero int(11) NOT NULL AUTO_INCREMENT,
  genero varchar(100) DEFAULT NULL,
  img_genero varchar(100) DEFAULT NULL,
  PRIMARY KEY (id_genero));

DROP TABLE IF EXISTS postagem;

CREATE TABLE postagem (
  id_post int(11) NOT NULL AUTO_INCREMENT,
  nome_usuario varchar(50) DEFAULT NULL,
  img_usuario varchar(30) DEFAULT NULL,
  postagem varchar(3000) DEFAULT NULL,
  data varchar(50) DEFAULT NULL,
  hora varchar(10) DEFAULT NULL,
  nome_jogo varchar(30) DEFAULT NULL,
  PRIMARY KEY(id_post));

DROP TABLE IF EXISTS comentario;

CREATE TABLE comentario (
  id_coment int(11) NOT NULL AUTO_INCREMENT,
  nome_usuario varchar(50) DEFAULT NULL,
  img_usuario varchar(30) DEFAULT NULL,
  comentario varchar(3000) DEFAULT NULL,
  data varchar(50) DEFAULT NULL,
  hora varchar(10) DEFAULT NULL,
  usua_post varchar(50) DEFAULT NULL,
  nome_jogo varchar(30) DEFAULT NULL,
  PRIMARY KEY(id_coment));


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

 INSERT INTO jogos
	values(
		1,
		'God Of War',
		'Plataforma: PS4',
		'God of War � um jogo eletr�nico de a��o-aventura desenvolvido pela Santa Monica Studio e publicado pela Sony Interactive Entertainment (SIE). Lan�ado mundialmente em 20 de abril de 2018 para o PlayStation 4, � o oitavo t�tulo da s�rie God of War e tamb�m o oitavo em ordem cronol�gica, sendo sequ�ncia dos eventos ocorridos em God of War III (2010). Ao contr�rio dos jogos anteriores, que eram vagamente baseados na mitologia grega, este t�tulo � vagamente baseado na mitologia n�rdica, com a maior parte do tempo situado na antiga Noruega no reino de Midgard.',
		'Pela primeira vez na s�rie, h� dois protagonistas principais: Kratos, o antigo deus grego da guerra, que permanece como o �nico personagem jog�vel, no qual � acompanhado por seu jovem filho Atreus; �s vezes, o jogador pode passivamente control�-lo. Ap�s a morte da segunda esposa de Kratos e da m�e de Atreus, eles viajam para cumprir sua promessa de espalhar suas cinzas no pico mais alto dos nove reinos. Kratos mant�m seu passado conturbado em segredo de Atreus, que n�o tem consci�ncia de sua natureza divina. Ao longo de sua jornada, eles encontram monstros e deuses do mundo n�rdico.. Descrita pelo diretor criativo Cory Barlog como uma reimagina��o para a franquia, a jogabilidade foi completamente reconstru�da, com uma grande mudan�a sendo que Kratos n�o usa mais suas l�minas duplas como armas principais; ao inv�s disso, ele usa um machado de batalha m�gico chamado Machado Leviat�.',
		'Outra mudan�a not�vel � a c�mera; o jogo usa um sistema de c�mera livre sobre o ombro em oposi��o � c�mera fixa vista nos t�tulos anteriores. Al�m disso, o jogo n�o cont�m cortes de c�mera e � apresentado em uma filmagem cont�nua, sendo o primeiro jogo triple A tridimensional da hist�ria � apresentar uma filmagem cont�nua. H� tamb�m elementos semelhantes aos jogos de RPG e o filho de Kratos, Atreus, pode fornecer assist�ncia durante o jogo. A maioria da equipe de desenvolvimento do primeiro jogo trabalhou em God of War e o projetou para ser melhor acess�vel. Um pequeno jogo baseado em texto, A Call from the Wilds, foi lan�ado em 1 de fevereiro de 2018 atrav�s do Facebook Messenger, e segue Atreus em sua primeira aventura.',
		'images/GOW4.png',
		'images/capagow.png',
		'A��o',
        'Aventura',
        'RPG',
        'sim');
	
INSERT INTO jogos
	values(
		2,
		'Grand Theft Auto V',
		'Plataforma: PS3, PS4, X360, XONE, Windows',
		'Los Santos � uma cidade de luzes cintilantes, noites longas e segredos sujos, e eles n�o ficam mais cintilantes, longos ou sujos do que em GTA Online: Night na Balada. A festa come�a agora.',
		'Grand Theft Auto V � um jogo eletr�nico de a��o-aventura desenvolvido pela Rockstar North e publicado pela Rockstar Games. � o s�timo t�tulo principal da s�rie Grand Theft Auto e foi lan�ado originalmente em 17 de setembro de 2013 para PlayStation 3 e Xbox 360, com remasteriza��es lan�adas em 18 de novembro de 2014 para PlayStation 4 e Xbox One, e em 14 de abril de 2015 para Microsoft Windows. O jogo se passa no estado ficcional de San Andreas, com a hist�ria da campanha um jogador seguindo tr�s criminosos e seus esfor�os para realizarem assaltos sob a press�o de uma ag�ncia governamental. O mundo aberto permite que os jogadores naveguem livremente pelas �reas rurais e urbanas de San Andreas.',
		'A jogabilidade � mostrada em uma perspectiva de primeira ou terceira pessoa e o mundo pode ser atravessado a p� ou com ve�culos. Os jogadores controlam tr�s protagonistas e podem alternar entre eles durante e fora das miss�es. A hist�ria � centrada em sequ�ncias de assaltos, com muitas miss�es envolvendo a jogabilidade de tiro e dire��o. Um sistema de "procurado" define a resposta e agressividade das for�as da lei contra os crimes cometidos pelo jogador. O modo multijogador, Grand Theft Auto Online, permite que at� trinta jogadores explorem o mundo e entrem em partidas competitivas ou cooperativas.',
		'images/GTAV.png',
		'images/capagtav.png',
        'A��o',
        'Aventura',
        'null',
		'sim');
		
INSERT INTO jogos
	values(
		3,
		'Sekiro Shadows Die Twice',
		'Plataforma: PS4, XONE, Windows',
		'Sekiro: Shadows Die Twice � um jogo eletr�nico de a��o-aventura jogado a partir de uma perspectiva em terceira pessoa. Embora comparado com a s�rie Souls, da FromSoftware, o jogo n�o apresenta elementos de RPG, como cria��o de personagens, classes e upgrades de equipamentos, al�m de n�o ter elementos multiplayer. Em vez de atacar para reduzir os pontos de vida de um inimigo, o combate em Sekiro gira em torno de uma katana para atacar seu equil�brio, o que eventualmente leva a uma abertura que permite um �nico golpe mortal. O jogo tamb�m possui elementos furtivos, permitindo que os jogadores eliminem imediatamente inimigos se eles puderem ficar no alcance sem serem detectados. Al�m disso, o personagem do jogador tem a habilidade de usar v�rias ferramentas para ajudar no combate e explora��o, como um gancho e uma tocha. Se o personagem jogador morrer, ele ter� a op��o de ser revivido no local sob certas condi��es, em vez de reaparecer em pontos de checkpoint anteriores.',
		'null',
		'null',
		'images/Sekiro.png',
		'images/capasekiro.png',
        'A��o',
        'RPG',
        'null',
		'sim');
		
INSERT INTO jogos
	values(
		4,
		'Days Gone',
		'Plataforma: PS4',
		'Days Gone � um jogo de mundo aberto com zumbis em um cen�rio p�s-apocal�ptico jogado em uma perspectiva de terceira-pessoa. Os jogadores controlam Deacon St. John, um viajante e ca�ador de recompensas que prefere viver uma vida perigosa na estrada, ao inv�s da vida nos acampamentos na floresta. O jogo se passa dois anos depois de que uma pandemia global ocorreu e que matou quase toda a humanidade, transformando milhares de pessoas em "Freakers", zumbis que n�o pensam mas evoluem rapidamente.',
		'Como o jogo � ambientado em um mundo aberto, os jogadores podem completar os objetivos de v�rias formas, tais como agir furtivamente ou escolher a agressiva abordagem por meio de armas curtas e de longo alcance. A din�mica de dia e noite � um destaque do jogo, o que faz os Freakers fracos e lentos durante o dia, mas r�pidos e agressivos durante a noite. Ve�culos como motos podem ser usados para explorar o mundo do jogo. Os jogadores s�o capazes de construir novos itens para melhorar a efici�ncia no combate.',
		'null',
		'images/DaysGone.png',
		'images/capadaysgone.jpg',
        'A��o',
        'Aventura',
        'Terror',
		'sim');
		
INSERT INTO jogos
	values(
		5,
		'Devil May Cry 5',
		'Plataforma: PS4, XONE, Windows',
		'Devil May Cry 5 � um jogo eletr�nico de a��o-aventura hack and slash que conta com o retorno de Dante e Nero como personagens jog�veis, junto com um novo personagem, chamado "V". A jogabilidade � semelhante aos outros t�tulos da s�rie Devil May Cry, concentrando-se em um combate de "a��o elegante" em um ritmo acelerado. O jogador luta contra hordas de dem�nios com uma variedade de ataques e armas e recebe uma avalia��o de estilo em combate com base em v�rios fatores, como variedade de movimentos, a dura��o de uma combina��o e ataques desordenados. A m�sica no jogo muda com base no desempenho do jogador em combate.',
		'Nero � equipado com sua espada Red Queen, seu rev�lver Blue Rose de cano duplo e uma variedade de novos bra�os rob�ticos chamados Devil Breakers, com uma variedade de fun��es como agarrar inimigos � dist�ncia ou parar para congelar um inimigo no local. Junto com sua l�mina de assinatura, a Rebellion, e a espada demon�aca Sparda, Dante foi mostrado usando dois novos Devil Arms, um par de armas que combinam com uma motocicleta chamada Cavaliere, e um conjunto de manoplas e botas de fogo chamadas Balrog. Al�m disso, Dante tamb�m usa o Cerberus, introduzido em Devil May Cry 3.',
		'O terceiro personagem jog�vel, V, � mostrado empunhando uma bengala e um livro. Durante uma entrevista, a Capcom decidiu n�o divulgar exatamente como V luta ainda, embora tenha provocado que o combate de V seria completamente diferente da de Nero e Dante. No trailer do jogo, apresentando no The Game Awards 2018, � revelado que V usa tr�s dem�nios baseados em inimigos do primeiro jogo para lutar, incluindo Griffon, uma �guia que usa ataques � dist�ncia, Shadow, uma pantera que forma l�minas, picos e portais fora de seu corpo, e Nightmare, um grande golem que V entra em um estado parecido com o Devil Trigger, que transforma seu cabelo branco, para convocar, que usa uma combina��o de ataques corpo a corpo e raios laser.',
		'images/DMC5.jpg',
		'images/capadmc5.png',
        'A��o',
        'Aventura',
        'null',
		'sim');
		
INSERT INTO jogos
	values(
		6,
		'Resident Evil 2',
		'Plataforma: PS4, XONE, Windows',
		'O Resident Evil 2 original foi lan�ado para o PlayStation em 1998. Ap�s a libera��o da nova vers�o do primeiro Resident Evil para o GameCube em 2002, a Capcom considerou fazer uma nova vers�o semelhante para o Resident Evil 2, mas o criador da s�rie Shinji Mikami n�o queria desviar o desenvolvimento de Resident Evil 4. Em agosto de 2015, a Capcom anunciou que um remake estava em desenvolvimento. Nenhum detalhe adicional foi divulgado at� a E3 2018, quando a Capcom revelou um trailer e uma sequ�ncia de gameplay. Hideki Kamiya, diretor do Resident Evil 2 original, disse que ele havia for�ado a Capcom a criar um remake por anos.',
		'O produtor Yoshiaki Hirabayashi disse que a equipe estava se esfor�ando para capturar o esp�rito do jogo original, e que a equipe incorporou coment�rios recebidos sobre Resident Evil 6, um jogo que ele tamb�m produziu. Resident Evil 2 usa a RE Engine, o mesmo motor gr�fico de jogo usado em Resident Evil 7. O motor permitiu que a Capcom modernizasse a jogabilidade.',
		'Para atender �s expectativas modernas, a equipe tentou tornar o remake mais realista; por exemplo, Leon n�o usa mais ombreiras grandes, que foram adicionadas para distinguir seu modelo original de baixo pol�gono. Embora eles se esfor�assem para fazer um jogo "moderno e acess�vel", eles se concentraram no terror sobre a a��o, na esperan�a de preservar uma sensa��o claustrof�bica. O produtor Tsuyoshi Kanda reconheceu a dificuldade de tornar os zumbis assustadores, j� que eles se tornaram onipresentes na m�dia de entretenimento desde o lan�amento do Resident Evil original em 1996. Ao remover os �ngulos de c�mera fixa, a equipe teve que usar diferentes maneiras para esconder os inimigos, usando elementos como layout da sala, ilumina��o e fuma�a. O novo sistema de c�mera tamb�m afetou o design do som, j� que n�o fazia mais sentido que o som viesse de uma fonte fixa.',
		'images/RE2R.png',
		'images/capare2r.png',
        'Terror',
        'null',
        'null',
		'sim');
		
INSERT INTO jogos
	values(
		7,
		'Bloodborne',
		'Plataforma: PS4',
		'Boodborne � um jogo eletr�nico de a��o-aventura produzido pela From Software e publicado pela Sony Computer Entertainment a 24 de Mar�o de 2015 em exclusivo para a PlayStation 4. Bloodborne foi realizado por Hidetaka Miyazaki, diretor de Demons Souls e Dark Souls. Miyazaki afirmou que o jogo nunca foi produzido com o sentido de ser Demons Souls II, porque a Sony Computer Entertainment queria uma nova IP para a PlayStation 4. Foi anunciado pela Sony a 9 de junho de 2014 durante a Electronic Entertainment Expo 2014, onde foi bem recebido pela critica ganhando diversos pr�mios e nomea��es. Bloodborne foi descrito por Paul Sullivan da Sony como "Dark Souls com Ca�adeiras".',
		'Bloodborne recebeu aclama��o critica aquando do seu lan�amento. Nos sites de pontua��es agregadas GameRankings e Metacritic tem as m�dias de 91,62% e 93/100, respectivamente. A atmosfera, o enredo, a m�sica, a apresenta��o, a jogabilidade e a dire��o em geral, foram elogiadas. Uma das principais criticas foram dirigidas aos tempos de carregamento muito longos. No entanto, em 23 de abril de 2015, a From Software disponibilizou uma atualiza��o que resolveu o problema.',
		'null',
		'images/BloodB.jpg',
		'images/capabloodborne.png',
        'Terror',
        'null',
        'null',
		'sim');
		
INSERT INTO jogos
	values(
		8,
		'Marvel Spider-Man',
		'Plataforma: PS4',
		'Marvel Spider-Man � um jogo eletr�nico de a��o-aventura baseado no super-her�i Homem-Aranha da Marvel Comics, desenvolvido pela Insomniac Games e publicado pela Sony Interactive Entertainment para o PlayStation 4. � o primeiro jogo licenciado desenvolvido pela Insomniac. O jogo conta uma nova hist�ria sobre o Homem-Aranha que n�o est� ligada a uma hist�ria em quadrinhos ou algum filme, e abrange os aspectos de Peter Parker e Homem-Aranha no personagem.',
		'O jogo foi lan�ado mundialmente em 7 de setembro de 2018. Ap�s o lan�amento pretendido, no entanto, houve conte�do extra sendo adicionado ao Spider-Man atrav�s do DLC "City That Never Sleeps", incluindo novos personagens do universo do Homem-Aranha e novos trajes desbloque�veis para o personagem poder utilizar.',
		'Marvel Spider-Man foi bem recebido pelos cr�ticos, que elogiaram a sua jogabilidade (particularmente a mec�nica de combate), gr�ficos, hist�ria, trilha sonora e design de Nova Iorque, enquanto recebia cr�ticas por falta de inova��o em seu mundo aberto. Foi saudado por muitos revisores como um dos melhores jogos de super-her�is j� feitos.',
		'images/MSPM.jpg',
		'images/capammiranha.png',
        'Aventura',
        'null',
        'null',
		'sim');
INSERT INTO jogos
	values(
		9,
		'Far Cry New Dawn',
		'Plataforma: PS4, XONE, Windows',
		'Similar aos seus antecessores, Far Cry: New Dawn � um jogo de tiro em primeira pessoa de a��o-aventura ambientado em um ambiente de mundo aberto na qual o jogador pode explorar livremente a p� ou atrav�s de v�rios ve�culos. O jogo � ambientado no fict�cio Condado de Hope, Montana e usa uma vers�o reimaginada do mapa de Far Cry 5. A guerra nuclear retratada em Far Cry 5 reformulou a paisagem, de modo que novas �reas ficaram dispon�veis para o jogador explorar, enquanto outras est�o inacess�veis.',
		'O jogador assume o papel de um novo personagem, cujo g�nero e ra�a podem ser personalizados. Os sistemas "Guns for Hire" e "Fangs for Hire" de Far Cry 5 retornam, com o personagem sendo capaz de recrutar sobreviventes humanos e animais para assist�ncia de combate. Al�m de novos personagens, o elenco do jogo inclui uma s�rie de personagens que retornam de Far Cry 5. O personagem do jogador tamb�m pode encontrar v�rios especialistas que t�m suas pr�prias miss�es pessoais, habilidades especiais e hist�ria e ajudam os jogadores a consertar suas armas. Novas armas s�o introduzidas no jogo, incluindo um "Lan�ador de Serras" que dispara as l�minas de serras circulares. Os jogadores adquirem novas armas e acess�rios, que podem ser atualizados para tr�s n�veis diferentes atrav�s de miss�es. Ve�culos tamb�m podem ser criados.',
		'Os jogadores podem embarcar em ca�as ao tesouro e libertar diferentes acampamentos e postos avan�ados de inimigos. Uma vez liberados, eles se tornam viagem r�pida � pontos que permitem aos jogadores navegarem rapidamente pelo mundo. Esses postos avan�ados podem ser ocupados e usados para fabricar combust�vel etanol ou invadidos por recursos que deixam o posto avan�ado aberto a "escalada", em que os Salteadores podem recuperar esses postos. Isso permite que o jogador repita os postos avan�ados em configura��es de dificuldade mais altas. O jogo tamb�m apresenta uma base dom�stica expans�vel chamada Prosperity, que se expande lentamente e cresce em tamanho conforme os jogadores progridem. O jogo tamb�m apresenta um modo chamado "Expedi��es", que permite ao jogador viajar para outros locais nos Estados Unidos, como Louisiana, para procurar mais recursos e pacotes. Como essas regi�es est�o fora do mapa principal e menores em tamanho, a equipe de desenvolvimento conseguiu criar ambientes mais complexos para o Expedi��es. As miss�es de Expedi��o podem ser completada com outros jogadores.',
		'images/FarCryND.png',
		'images/capafarcrynd.png',
        'A��o',
        'Shooter',
        'null',
		'nao');

INSERT INTO postagem
	values(
		1,
		'Luciano Santiago',
		'images/luciano.jpg',
		'É um ótimo jogo mas depende o quão paciente você é pra ficar sendo morto por hackers e ter que migrar de sessão em sessão até achar uma sem nenhum player modded.',
		'27 de Maio de 2019',
		'13:47',
		'Grand Theft Auto V');

INSERT INTO comentario
	values(
		1,
		'Daniel Silva',
		'null',
		'Mesmo depois de muito tempo lançado só agora estou jogando pra valer o modo online',
		'27 de Maio de 2019',
		'13:52',
		'Luciano Santiago',
		'Grand Theft Auto V');
		
INSERT INTO generos
	values(
		1,
		'A��o',
		'images/A��o.png');
		
INSERT INTO generos
	values(
		2,
		'Aventura',
		'images/Aventura.png');
		
INSERT INTO generos
	values(
		3,
		'Corrida',
		'images/Corrida.png');
		
INSERT INTO generos
	values(
		4,
		'Esportes',
		'images/Esportes.png');
		
INSERT INTO generos
	values(
		5,
		'Luta',
		'images/Luta.png');
		
INSERT INTO generos
	values(
		6,
		'RPG',
		'images/RPG.png');
		
INSERT INTO generos
	values(
		7,
		'Shooter',
		'images/Shooter.png');
		
INSERT INTO generos
	values(
		8,
		'Terror',
		'images/Terror.png');	