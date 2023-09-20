-- configuração inicial
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET default_tablespace = '';

SET default_with_oids = false;


-- limpeza inicial && ambiente para manutenção futura
DROP TABLE IF EXISTS nominated_movie;
DROP TABLE IF EXISTS winner_movie;
DROP TABLE IF EXISTS nominated_director;
DROP TABLE IF EXISTS winner_director;
DROP TABLE IF EXISTS nominated_actor;
DROP TABLE IF EXISTS winner_actor;
DROP TABLE IF EXISTS nominated_actress;
DROP TABLE IF EXISTS winner_actress;
DROP TABLE IF EXISTS nominated_supp_actor;
DROP TABLE IF EXISTS winner_supp_actor;
DROP TABLE IF EXISTS nominated_supp_actress;
DROP TABLE IF EXISTS winner_supp_actress;
DROP TABLE IF EXISTS nominated_animation;
DROP TABLE IF EXISTS winner_animation;


--criar tabelas
CREATE TABLE nominated_movie(
	item_id SMALLINT NOT NULL,
	movie_year SMALLINT NOT NULL,
	movie_name VARCHAR(99) NOT NULL,
	movie_gender VARCHAR(50) NOT NULL,
	movie_director VARCHAR(30) NOT NULL,
	duration_minutes SMALLINT NOT NULL,
	movie_country VARCHAR(15) NOT NULL,
	description TEXT NOT NULL
);

CREATE TABLE winner_movie(
	item_id SMALLINT NOT NULL,
	movie_year INT NOT NULL,
	movie_name VARCHAR(99) NOT NULL,
	movie_gender VARCHAR(50) NOT NULL,
	movie_director VARCHAR(30) NOT NULL,
	duration_minutes SMALLINT NOT NULL,
	movie_country VARCHAR(15) NOT NULL,
	description TEXT NOT NULL
);

CREATE TABLE nominated_director(
	item_id SMALLINT NOT NULL,
	movie_year SMALLINT NOT NULL,
	director_name VARCHAR(99) NOT NULL,
	movie_name VARCHAR(50) NOT NULL,
	director_country VARCHAR(25) NOT NULL,
	famous_movies TEXT NOT NULL
);

CREATE TABLE winner_director(
	item_id SMALLINT NOT NULL,
	movie_year SMALLINT NOT NULL,
	director_name VARCHAR(99) NOT NULL,
	movie_name VARCHAR(50) NOT NULL,
	director_country VARCHAR(25) NOT NULL,
	famous_movies TEXT NOT NULL
);

CREATE TABLE nominated_actor(
	item_id SMALLINT NOT NULL,
	oscar_year SMALLINT NOT NULL,
	person_name VARCHAR(99) NOT NULL,
	person_country VARCHAR(50) NOT NULL,
	person_age SMALLINT NOT NULL,
	associated_movie VARCHAR(99) NOT NULL,
	famous_movies TEXT NOT NULL
);

CREATE TABLE winner_actor(
	item_id SMALLINT NOT NULL,
	oscar_year SMALLINT NOT NULL,
	person_name VARCHAR(99) NOT NULL,
	person_country VARCHAR(50) NOT NULL,
	person_age SMALLINT NOT NULL,
	associated_movie VARCHAR(99) NOT NULL,
	famous_movies TEXT NOT NULL
);

CREATE TABLE nominated_actress(
	item_id SMALLINT NOT NULL,
	oscar_year SMALLINT NOT NULL,
	person_name VARCHAR(99) NOT NULL,
	person_country VARCHAR(50) NOT NULL,
	person_age SMALLINT NOT NULL,
	associated_movie VARCHAR(99) NOT NULL,
	famous_movies TEXT NOT NULL
);

CREATE TABLE winner_actress(
	item_id SMALLINT NOT NULL,
	oscar_year SMALLINT NOT NULL,
	person_name VARCHAR(99) NOT NULL,
	person_country VARCHAR(50) NOT NULL,
	person_age SMALLINT NOT NULL,
	associated_movie VARCHAR(99) NOT NULL,
	famous_movies TEXT NOT NULL
);

CREATE TABLE nominated_supp_actor(
	item_id SMALLINT NOT NULL,
	oscar_year SMALLINT NOT NULL,
	person_name VARCHAR(99) NOT NULL,
	person_country VARCHAR(50) NOT NULL,
	person_age SMALLINT NOT NULL,
	associated_movie VARCHAR(99) NOT NULL,
	famous_movies TEXT NOT NULL
);

CREATE TABLE winner_supp_actor(
	item_id SMALLINT NOT NULL,
	oscar_year SMALLINT NOT NULL,
	person_name VARCHAR(99) NOT NULL,
	person_country VARCHAR(50) NOT NULL,
	person_age SMALLINT NOT NULL,
	associated_movie VARCHAR(99) NOT NULL,
	famous_movies TEXT NOT NULL
);

CREATE TABLE nominated_supp_actress(
	item_id SMALLINT NOT NULL,
	oscar_year SMALLINT NOT NULL,
	person_name VARCHAR(99) NOT NULL,
	person_country VARCHAR(50) NOT NULL,
	person_age SMALLINT NOT NULL,
	associated_movie VARCHAR(99) NOT NULL,
	famous_movies TEXT NOT NULL
);

CREATE TABLE winner_supp_actress(
	item_id SMALLINT NOT NULL,
	oscar_year SMALLINT NOT NULL,
	person_name VARCHAR(99) NOT NULL,
	person_country VARCHAR(50) NOT NULL,
	person_age SMALLINT NOT NULL,
	associated_movie VARCHAR(99) NOT NULL,
	famous_movies TEXT NOT NULL
);

CREATE TABLE nominated_animation(
	item_id SMALLINT NOT NULL,
	movie_year SMALLINT NOT NULL,
	movie_name VARCHAR(99) NOT NULL,
	movie_gender VARCHAR(50) NOT NULL,
	movie_director VARCHAR(30) NOT NULL,
	duration_minutes SMALLINT NOT NULL,
	movie_country VARCHAR(15) NOT NULL,
	movie_studio VARCHAR(15) NOT NULL,
	description TEXT NOT NULL
);

CREATE TABLE winner_animation(
	item_id SMALLINT NOT NULL,
	movie_year SMALLINT NOT NULL,
	movie_name VARCHAR(99) NOT NULL,
	movie_gender VARCHAR(50) NOT NULL,
	movie_director VARCHAR(30) NOT NULL,
	duration_minutes SMALLINT NOT NULL,
	movie_country VARCHAR(15) NOT NULL,
	movie_studio VARCHAR(15) NOT NULL,
	description TEXT NOT NULL
);

--queries dos filmes indicados

INSERT INTO nominated_movie VALUES (1, 2000, 'À Espera de Um Milagre', 'Drama', 'Frank Darabont', 189, 'Estados Unidos', '1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks) é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros. Aos poucos, desenvolve-se entre eles uma relação incomum, baseada na descoberta de que o prisioneiro possui um dom mágico que é, ao mesmo tempo, misterioso e milagroso.');
INSERT INTO nominated_movie VALUES (2, 2000, 'O Informante', 'Drama', 'Michael Mann', 157, 'Estados Unidos', 'Em 1994, ex-executivo da indústria do tabaco deu entrevista bombástica ao programa jornalístico "60 Minutos", da rede americana CBS. Dizia que os manda-chuvas da empresa em que trabalhou não apenas sabiam da capacidade viciadora da nicotina como também aplicavam aditivos químicos ao cigarro, para acenturar esta característica. Na hora H, porém, a CBS recuou e não transmitiu a entrevista, alegando que as consequências jurídicas poderiam ser fatais. Baseando-se nesta história real, O Informante narra a trajetória do ex-vice-presidente da Brown & Williamson Jeffrey Wigand (Russell Crowe) e do produtor Lowell Bergman (Al Pacino), que o convenceu a falar em público.');
INSERT INTO nominated_movie VALUES (3, 2000, 'O Sexto Sentido', 'Suspense', 'M. Night Shyamalan', 107, 'Índia', 'O psicólogo infantil Malcolm Crowe (Bruce Willis) abraça com dedicação o caso de Cole Sear (Haley Joel Osment). O garoto, de 8 anos, tem dificuldades de entrosamento no colégio e vive paralisado de medo. Malcolm, por sua vez, busca se recuperar de um trauma sofrido anos antes, quando um de seus pacientes se suicidou na sua frente.');
INSERT INTO nominated_movie VALUES (4, 2000, 'Regras da Vida', 'Comédia Romântica', 'Lasse Hallström', 126, 'Suécia', 'Baseado no best-seller de John Irving, a história de Homer Wells (Tobey Maguire), um garoto sem parentes que passa a ter como mentor um médico de um orfanato, Dr. Wilbur Larch (Michael Caine). Larch ensina a Homer tudo o que sabe sobre medicina e a diferença entre certo e , mas nunca o ensinou as regras da vida propriamente ditas. Quando Homer sai para descobrir o mundo, ele mais excitante do que jamais imaginara, especialmente quando se apaixona pela primeira vez. Entretanto, quando forçado a tomar decisões que irão influir para sempre em sua vida, percebe que no final das contas não pode fugir de seu passado.');
INSERT INTO nominated_movie VALUES (5, 2001, 'Erin Brockovich', 'Drama', 'Steven Soderbergh', 131, 'Estados Unidos', 'Erin Brockovich (Julia Roberts) é uma mãe solteira que, após perder um processo contra um médico, consegue um emprego em um escritório de advocacia. Lá, ela descobre um caso de contaminação da água em uma cidade, causado pela Pacific Gas and Electric Company. Determinada a fazer justiça, Erin começa a investigar o caso e luta incansavelmente contra a empresa para proteger a saúde das pessoas afetadas.');
INSERT INTO nominated_movie VALUES (6, 2001, 'Traffic', 'Drama', 'Steven Soderbergh', 147, 'Estados Unidos', 'Um juiz conservador é nomeado pelo Presidente para liderar a campanha contra as drogas e promove uma série de medidas que têm efeitos inesperados em diferentes partes da sociedade, incluindo o tráfico de drogas, a política e a vida familiar.');
INSERT INTO nominated_movie VALUES (7, 2001, 'Chocolate', 'Comédia Dramática', 'Lasse Hallström', 121, 'Reino Unido', 'Uma mulher e sua filha abrem uma loja de chocolate em uma pequena cidade francesa, causando conflitos com os moradores conservadores.');
INSERT INTO nominated_movie VALUES (8, 2001, 'O Tigre e o Dragão', 'Ação', 'Ang Lee', 120, 'Taiwan', 'Em uma China governada pela dinastia Qing, Li Mu Bai (Chow Yun-Fat), um grande guerreiro, entrega sua espada amaldiçoada, A Garra do Tigre, para a grande governanta Yu Shu Lien (Michelle Yeoh), a mulher que ele ama em silêncio. A Garra do Tigre é roubada e Mu Bai suspeita que Jade Fox (Cheng Pei-Pei), uma mulher das sombras que se disfarça como uma governanta, seja a ladra. Mu Bai pede ajuda a Shu Lien, que é apaixonada por ele, para pegar Jade Fox. A história ganha novos personagens, como Jen Yu (Zhang Ziyi), a filha do governador, que era prometida para casar com um homem que ela detesta, então ela treina secretamente em artes marciais e é cortejada por um jovem que ela não gosta. Os sentimentos crescem e a situação se complica.');    





--queries dos filmes vencedores
INSERT INTO winner_movie VALUES (1, 2000, 'Beleza Americana', 'Drama', 'Sam Mendes', 122, 'Estados Unidos', 'Lester Burham (Kevin Spacey) não aguenta mais o emprego e se sente impotente perante sua vida. Casado com Carolyn (Annette Bening) e pai da "aborrecente" Jane (Tora Birch), o melhor momento de seu dia quando se masturba no chuveiro. Até que conhece Angela Hayes (Mena Suvari), amiga de Jane. Encantado com sua beleza e disposto a dar a volta por cima, Lester pede demissão e começa a reconstruir sua vida, com a ajuda de seu vizinho Ricky (Wes Bentley).');
INSERT INTO winner_movie VALUES (2, 2001, 'Gladiador', 'Ação', 'Ridley Scott', 155, 'Estados Unidos', 'O exército romano retorna à Itália depois de três meses de lutas na Germânia, mas antes de poderem saudar suas famílias, o Imperador romano informa que terão que participar de outra batalha, a de Zuchabar. As legiões, comandadas por Maximus (Russell Crowe), vencem a batalha e, quando o mesmo está para matar o Imperador, este o manda executar e assume o poder. Commodus (Joaquin Phoenix), o filho do Imperador, mata seu pai, assume o trono e ordena a morte de Maximus e sua família. Maximus escapa, mas é preso por um comerciante de escravos que o vende para Proximo (Oliver Reed), o dono de uma escola de gladiadores. Maximus, que se chamava Espanha, passa a se chamar Gladiator e se torna um conhecido gladiador de Roma.');


--queries dos diretores indicados
INSERT INTO nominated_director VALUES (1, 2000, 'Lasse Hallström', 'Regras da Vida', 'Suécia', 'Gilbert Grape: Aprendiz de Sonhador (1993), Chocolate (2000)');
INSERT INTO nominated_director VALUES (2, 2000, 'M. Night Shyamalan', 'O Sexto Sentido', 'Índia', 'Corpo Fechado (2000), Sinais (2002)');
INSERT INTO nominated_director VALUES (3, 2000, 'Michael Mann', 'O Informante!', 'Estados Unidos', 'Colateral (2004), Inimigos Públicos (2009)');
INSERT INTO nominated_director VALUES (4, 2000, 'Spike Jonze', 'Quero Ser John Malkovich', 'Estados Unidos', 'Adaptação (2002), Onde Vivem os Monstros (2009)');
INSERT INTO nominated_director VALUES (5, 2001, 'Stephen Daldry', 'Billy Elliot', 'Reino Unido', 'As Horas (2002), O Leitor (2008)');
INSERT INTO nominated_director VALUES (6, 2001, 'Ang Lee', 'O Tigre e o Dragão', 'Taiwan', 'O Segredo de Brokeback Mountain (2005), A Vida de Pi (2012)');
INSERT INTO nominated_director VALUES (7, 2001, 'Steven Soderbergh', 'Erin Brockovich', 'Estados Unidos', 'Traffic (2000), Onze Homens e um Segredo (2001)');
INSERT INTO nominated_director VALUES (8, 2001, 'Ridley Scott', 'Gladiador', 'Estados Unidos', 'Blade Runner (1982), Alien, o Oitavo Passageiro (1979)');




--queries dos diretores vencedores
INSERT INTO winner_director VALUES (1, 2000, 'Sam Mendes', 'Beleza Americana', 'Reino Unido', 'Estrada para Perdição (2002), 007 - Operação Skyfall (2012)');
INSERT INTO winner_director VALUES (2, 2001, 'Steven Soderbergh', 'Traffic', 'Estados Unidos', 'Onze Homens e um Segredo (2001)');



--queries dos atores nomeados
INSERT INTO nominated_actor VALUES (1, 2000, 'Denzel Washington', 'Estados Unidos', 45, 'Hurricane - O Furacão', 'Dia de Treinamento (2001), Malcolm X (1992)');
INSERT INTO nominated_actor VALUES (2, 2000, 'Richard Farnsworth', 'Canadá', 79, 'História Real', 'Os Eleitos - Onde o Futuro Começa (1983), O Cavalo de Ferro (1982)');
INSERT INTO nominated_actor VALUES (3, 2000, 'Russell Crowe', 'Nova Zelândia', 36, 'O Informante', 'Gladiador (2000), Uma Mente Brilhante (2001)');
INSERT INTO nominated_actor VALUES (4, 2000, 'Sean Penn', 'Estados Unidos', 39, 'Poucas e Boas', 'Sobre Meninos e Lobos (2003), Milk - A Voz da Igualdade (2008)');
INSERT INTO nominated_actor VALUES (5, 2001, 'Javier Bardem', 'Espanha', 31, 'Antes do Anoitecer', 'Mar Adentro (2004), Não é Tu, Sou Eu (2004)');
INSERT INTO nominated_actor VALUES (6, 2001, 'Tom Hanks', 'Estados Unidos', 44, 'Náufrago', 'Forrest Gump (1994), O Resgate do Soldado Ryan (1998)');
INSERT INTO nominated_actor VALUES (7, 2001, 'Ed Harris', 'Estados Unidos', 50, 'Pollock', 'O Show de Truman (1998)');
INSERT INTO nominated_actor VALUES (8, 2001, 'Geoffrey Rush', 'Austrália', 49, 'Quills - A História de Um Libertino', 'Shakespeare Apaixonado (1998), O Discurso do Rei (2010)');





--queries dos atores vencedores
INSERT INTO winner_actor VALUES (1, 2000, 'Kevin Spacey', 'Estados Unidos', 40, 'Beleza Americana', 'Beleza Americana (1999), Os Suspeitos (1995)');
INSERT INTO winner_actor VALUES (9, 2001, 'Russell Crowe', 'Nova Zelândia', 37, 'Gladiador', 'Uma Mente Brilhante (2001), O Informante (1999)');


--queries das atrizes nomeadas
INSERT INTO nominated_actress VALUES (1, 2000, 'Annette Bening', 'Estados Unidos', 41, 'Beleza Americana', 'Beleza Americana (1999), Bugsy (1991)');
INSERT INTO nominated_actress VALUES (2, 2000, 'Janet McTeer', 'Reino Unido', 38, 'Livre para Amar', 'Albert Nobbs (2011), As Horas (2002)');
INSERT INTO nominated_actress VALUES (3, 2000, 'Julianne Moore', 'Estados Unidos', 39, 'Fim de Caso', 'Boogie Nights (1997), Para Sempre Alice (2014)');
INSERT INTO nominated_actress VALUES (4, 2000, 'Meryl Streep', 'Estados Unidos', 50, 'Música do Coração', 'A Dama de Ferro (2011), O Diabo Veste Prada (2006)');
INSERT INTO nominated_actress VALUES (5, 2001, 'Joan Allen', 'Estados Unidos', 44, 'A conspiração', 'Contos Proibidos do Marquês de Sade (2000)');
INSERT INTO nominated_actress VALUES (6, 2001, 'Juliette Binoche', 'França', 36, 'Chocolate', 'A Liberdade é Azul (1993), O Paciente Inglês (1996)');
INSERT INTO nominated_actress VALUES (7, 2001, 'Ellen Burstyn', 'Estados Unidos', 68, 'Réquiem para um sonho', 'Alice Não Mora Mais Aqui (1974)');
INSERT INTO nominated_actress VALUES (8, 2001, 'Laura Linney', 'Estados Unidos', 37, 'Conte comigo', 'O Óleo de Lorenzo (1992)');




--queries das atrizes vencedoras
INSERT INTO winner_actress VALUES (1, 2000, 'Hilary Swank', 'Estados Unidos', 25, 'Meninos Não Choram', 'Meninos Não Choram (1999), Menina de Ouro (2004)');
INSERT INTO winner_actress VALUES (2, 2001, 'Julia Roberts', 'Estados Unidos', 33, 'Erin Brockovich', 'Uma Linda Mulher (1990), Comer, Rezar, Amar (2010)');


--queries dos atores coadjuvantes nomeados
INSERT INTO nominated_supp_actor VALUES (1, 2000, 'Haley Joel Osment', 'Estados Unidos', 11, 'O Sexto Sentido', 'A.I. - Inteligência Artificial (2001), O Retorno de M. Night Shyamalan (2019)');
INSERT INTO nominated_supp_actor VALUES (2, 2000, 'Jude Law', 'Reino Unido', 27, 'O Talentoso Ripley', 'Cold Mountain (2003), Sherlock Holmes (2009)');
INSERT INTO nominated_supp_actor VALUES (3, 2000, 'Michael Clarke Duncan', 'Estados Unidos', 42, 'À Espera de um Milagre', 'O Planeta dos Macacos (2001), Demolidor - O Homem Sem Medo (2003)');
INSERT INTO nominated_supp_actor VALUES (4, 2000, 'Tom Cruise', 'Estados Unidos', 37, 'Magnólia', 'Top Gun - Ases Indomáveis (1986), Missão Impossível (1996)');
INSERT INTO nominated_supp_actor VALUES (5, 2001, 'Jeff Bridges','Estados Unidos', 51, 'A conspiração', 'O Grande Lebowski (1998), Coração Louco (2009)');
INSERT INTO nominated_supp_actor VALUES (6, 2001, 'Willem Dafoe', 'Estados Unidos', 45, 'A Sombra do Vampiro', 'Platoon (1986), O Som do Coração (1999)');
INSERT INTO nominated_supp_actor VALUES (7, 2001, 'Albert Finney', 'Reino Unido', 64, 'Erin Brockovich - Uma Mulher de Talento', 'Assassinato no Expresso Oriente (1974)');
INSERT INTO nominated_supp_actor VALUES (8, 2001, 'Joaquin Phoenix', 'Estados Unidos', 26, 'Gladiador', 'Johnny & June (2005), Ela (2013)');



--queries dos atores coadjuvantes vencedores
INSERT INTO winner_supp_actor VALUES (1, 2000, 'Michael Caine', 'Estados Unidos', 66, 'Regras da Vida', 'Batman - O Cavaleiro das Trevas (2008), O Jardineiro Fiel (2005)');
INSERT INTO winner_supp_actor VALUES (2, 2001, 'Benicio Del Toro', 'Porto Rico', 33, 'Traffic', '21 Gramas (2003)');

--queries das atrizes coadjuvantes nomeadas
INSERT INTO nominated_supp_actress VALUES (1, 2000, 'Catherine Keener', 'Estados Unidos', 40, 'Sua Mãe, Sua Filha', 'Capote (2005), Corra! (2017)');
INSERT INTO nominated_supp_actress VALUES (2, 2000, 'Chloë Sevigny', 'Estados Unidos', 25, 'Meninos Não Choram', 'Garota Interrompida (1999)');
INSERT INTO nominated_supp_actress VALUES (3, 2000, 'Samantha Morton', 'Reino Unido', 22, 'O Mundo de Andy', 'Minority Report (2002), Em Busca da Terra do Nunca (2004)');
INSERT INTO nominated_supp_actress VALUES (4, 2000, 'Toni Collette', 'Austrália', 27, 'O Sexto Sentido', 'Pequena Miss Sunshine (2006), Hereditário (2018)');
INSERT INTO nominated_supp_actress VALUES (5, 2001, 'Judi Dench', 'Reino Unido', 66, 'Chocolate', 'Shakespeare Apaixonado (1998), Notas sobre um Escândalo (2006)');
INSERT INTO nominated_supp_actress VALUES (6, 2001, 'Kate Hudson', 'Estados Unidos', 21, 'Quase Famosos', 'Como Perder um Homem em 10 Dias (2003)');
INSERT INTO nominated_supp_actress VALUES (7, 2001, 'Frances McDormand', 'Estados Unidos', 43, 'Quase Famosos', 'Fargo (1996), Três Anúncios Para um Crime (2017)');
INSERT INTO nominated_supp_actress VALUES (8, 2001, 'Julie Walters', 'Reino Unido', 50, 'Billy Elliot', 'Mamma Mia! (2008)');



--queries das atrizes coadjuvantes vencedoras
INSERT INTO winner_supp_actress VALUES (1, 2000, 'Angelina Jolie', 'Estados Unidos', 24, 'Garota, Interrompida', 'O Colecionador de Ossos (1999), Sr. e Sra. Smith (2005)');
INSERT INTO winner_supp_actress VALUES (2, 2001, 'Marcia Gay Harden', 'Estados Unidos', 41,'Pollock', 'Sobre Meninos e Lobos (2003)');


--queries de animações nomeadas

--queries de animações vencedoras