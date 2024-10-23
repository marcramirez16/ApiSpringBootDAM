DROP DATABASE if exists bitacora;
create database bitacora;
Use bitacora;

CREATE TABLE Users(
  id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  birthday year NOT NULL,
  mail varchar(40) NOT NULL,
  password varchar(13) NOT NULL,
  profile_photo varchar(255),
  biography varchar(255)
);


#Añadimos usuarios

INSERT INTO Users(username, birthday, mail, password, profile_photo, biography) VALUES ('Jordi',1999,'ayesta1@gmail.com','1234', NULL, '');
INSERT INTO Users(username, birthday, mail, password, profile_photo, biography) VALUES ('Roc',2000,'roviraroc@gmail.com','1234', NULL, '');
INSERT INTO Users(username, birthday, mail, password, profile_photo, biography) VALUES ('Ali',2005,'ayoussefmohammad@gmail.com','1234', NULL, '');

#Añadimos las categorias

INSERT INTO Categories (name, icon) VALUES ('Musica', NULL);
INSERT INTO Categories (name, icon) VALUES ('Gastronomia', NULL);
INSERT INTO Categories (name, icon) VALUES ('Anime', NULL);
INSERT INTO Categories (name, icon) VALUES ('Ver para creer', NULL);
INSERT INTO Categories (name, icon) VALUES ('+18 fiesta', NULL);
INSERT INTO Categories (name, icon) VALUES ('+18 perverso', NULL);

#Añadimos los logros (id 1 = Musica)

INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Introducción a la música','Escucha un proyecto de cualquier artista.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Género','Descubre tu genero preferido escuchando tus primeras canciones');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'España','Escucha un disco o proyecto de algún artista español.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'International','Escucha algún proyecto donde el inglés sea la lengua principal.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Overseas','Escucha música local de un país de sudamérica.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Expanding taste','Escucha al menos 1 proyecto de 10 géneros musicales distintos.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Día a día','Crea tu primera playlist.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Experto en listas',' Crea múltiples playlists dividiéndolas como quieras.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'0 anuncios','Paga tu primera suscripción en cualquier plataforma de música.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Inanunciable','Paga una suscripción en cualquier plataforma de música durante 12 meses.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Underground experience','Prueba a escuchar a cualquier artista con menos de 1M de oyentes mensuales.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Vecino ruidoso','Prueba a escuchar a cualquier artista con menos de 10k de oyentes mensuales.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Experimentando','Prueba a escuchar por primera vez playboy carti.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Gramola','Escucha música a través de una gramola.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Vinilo','Escucha música de un vinilo.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'Cassete','Escucha música de un casette.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'CD','Escucha música de un CD.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'USB','Escucha música de un USB.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'iWindows?','Usa iTunes desde un PC Windows.');
INSERT INTO Achievements (categoryid, title, description) VALUES (1,'En vivo','Ve a un concierto.');

#Añadimos los logros (id 2 = Gastronomia)

INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Fogonero','Prepara el fuego perfecto de una barbacoa.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Sangre argentina','Prepara un asado argentino.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Donde hubo fuego…','Prepara una buena calsotada.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Simon quema','Quemarse (por accidente) con aceite o con la paella que estas utilizando.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Taco bill','Prepara tacos.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'El burritos','Prepara burritos.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Nigiboss','Prepara niguiris.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Roller','Prepara makis.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Misopa','Prepara una sopa miso.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Valencia en casa','Cocina una paella.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'La toscana','Prepara una pizza casera.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Negado','Cocina un huevo frito que se te ha roto en el proceso.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Círculo perfecto','Cocina un huevo frito.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Cheese','Cocina un plato de 5 quesos o más.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Vegan free','Cocina un plato con 5 tipos de carne.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Sushi lover','Consigue los logros Nigiboss, Roller y Misopa.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Ilmare','Come ostras.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Pollo de pantano',' Comer ancas de rana.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'El más rápido','Come caracoles.');
INSERT INTO Achievements (categoryid, title, description) VALUES (2,'Paladar Exotico','Consigue los logros Ilmare, Pollo de pantano y El más rápido.');

#Añadimos los logros (id 3 = Anime)

INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Your April in April','Empieza y termina “Your Lie in April” en abril.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Tragones y Mazmorras','Mira la primera temporada de “Tragones y Mazmorras”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Old but gold','Mira un anime que empezó su emisión antes del 2000.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Escritura peligrosa','Obtén una Death Note y escribe tres nombres en ella.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Rewatch','Termina un anime por segunda vez.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Bleached!','Termina el anime “Bleach”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'lAdies','Termina el anime “Death Note”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Grand line 2.0','Empieza a ver el live action de one piece.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'iS tHiS a JoJoREfERenCE?!?','Termina el anime “Jojos bizarre adventure”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Tunometacabrasalabambiche','Termina el anime “Baki”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Megustaprobalsuboca','Termina el anime “Baki Hanma”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Cowboy Bebop','Termina el anime “Cowboy Bebop”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Bebop 2.0','Termina el live action de “Cowboy Bebop”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Mi-rodilla!','Termina el anime “My Hero Academia”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Sasageyo','Termina el anime “attack on titan”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Conan el no bárbaro','Termina el anime “Detective Conan”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Tu crush antes de Justin Biber','Termina el anime “Inuyasha”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Card Hunter','Termina el anime “Sakura cazadora de cartas”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'Ataque de los pelos nasales!','Termina el anime “Bobobo Bobobobo”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (3,'HxH','Termina el anime “Hunter x Hunter”.');

#Añadimos los logros (id 4 = Ver para creer)

INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Mahoma','Visita tu primera montaña.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Brisa marina','Visita tu primera cumbre o cresta montañosa.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Salmonete','Visita tu primer río o arroyo de montaña.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Calizo','Visita tu primera montaña caliza.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Minero','Visita tu primera gruta o cueva subterránea.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Para fotografiar','Visita tu primer campo de flores de lavanda, girasoles, etc.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Remanso de paz','Visita tu primer lago o embalse de montaña.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Pirotecnia natural','Visita tu primera explosion volcánica.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Río de fuego','Visita una caída de magma.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Escape','Visita tu primer geiser.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Ice age','Visita tu primer glaciar.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Bujero','Visita tu primer cenote.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Spiker','Ver tus primeras formaciones de estalactitas o estalagmitas.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Da Vinci AC','Ver tus primeras pinturas rupestres.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Subacuático','Ver tu primer río a lago subterráneo.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Cristalero','Ver tu primer cristal gigante formado en una cueva.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Subcascada','Ver tu primera cascada subterránea.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Noche iluminada','Ver por primera vez una aurora boreal/luces del norte.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Dinastia Ming','La Gran Muralla (China) Parte de la Gran Muralla China.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Gebalene','Petra (Jordania) La fachada principal de Petra (Jordania).');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Gladiador','Visita el Coliseo de Roma (Italia).');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Andale','Visita Chichen Itza (México).');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Kuzco','Visita Machu Picchu (Perú).');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Tijuca','El Cristo Redentor (Brasil).');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Al ladin','Taj Mahal (India).');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Maravillas','Conigue los logros Gebalene, Tijuca ,“Dinastia Ming”, “Gladiador”.');
INSERT INTO Achievements (categoryid, title, description) VALUES (4,'Maravillas al completo','Conigue los logros “Andale”, “Kuzco”, y “Al ladin”.');

#Añadimos los logros (id 5 = fiesta)

INSERT INTO Achievements (categoryid, title, description) VALUES (5,'El que no apoya… ','Beber un chupito con la frase de El que no apoya no folla y pasar en culo del chupito por la mesa.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Classic chupito','Beber un chupito con la frase de arriba, abajo al centro y pa dentro.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Tiki shot','Beber un chupito con picante o con fuego.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Surprise','Bebe un chupito sin saber los alcoholes que lleva .');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Blackout','Bebe tres chupitos en una fiesta.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Japonito','Bebe un chupito con salsa wasabi.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Los influencers','Realizar un baile de tiktok con los amigos de fiesta.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Abrazafarolas',' Acabar una fiesta dando tumbos.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Fuente nocturna ','Acabar vomitando una fiesta .');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Crucifixión','Beber, vomitar y acabar en la cama.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Casi Resurrección','Beber, vomitar pero acabar bebiendo agua.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Resurrección','Beber, vomitar y seguir bebiendo.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Loco de la pista','Lanzarte los pasos prohibidos en una fiesta.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Domador de MILF','Salir de fiesta y bailar con una milf.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Tarimologo','Acabar bailando solo en la tarima de una discoteca.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Hasta el florero ','Beber un cubata de tres alcoholes diferentes.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Como pez en el agua','Terminar un cubata entero de un trago.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Frases célebres','Completa los logros el que no apoya… y Classic chupito.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Peligro nocturno','Completar 5 logros de +18 FIESTA.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Inmortal','Completa los logros Tiki shot, Surprise, Blackout y Japonito.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'Jesucristo','Completar los logros Crucifixión, Casi Resurrección y Resurrección.');
INSERT INTO Achievements (categoryid, title, description) VALUES (5,'El Señor de la Noche',' Completar TODOS los logros de +18 FIESTA.');

#Añadimos los logros (id 6 = perverso)

INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Descubriendo sabores','Practica sexo oral por primera vez.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'De asterisco a japon ','Practica sexo anal por primera vez.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Donde caben dos…',' Practica un trio.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Felices los cuatro','Practica un cuarteto.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Pasa arrugada','Practica relaciones en la ducha/bañera.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Octubre rojo','Practicar sexo durante el periodo.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'El joker','Practicar sexo oral durante el periodo.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Yo Robot','Practica relaciones sexuales con juguetes sexuales.'); 
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Paseando por las estrellas','Utiliza un juguete vibrador en público.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Catgirl','Utiliza trajes de látex durante el acto.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Intimissimi','Utiliza conjuntos/ lencería durante el acto.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Levantarse con buen pie','Practicar relaciones justo después de despertarse .');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Carnaval','Utiliza disfraces durante el acto.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'El lado oscuro de la luna','Utiliza juguetes sexuales anales.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Descubriendo parís','Realiza el acto con la posición, torre eiffel por primera vez.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Yoga lover','Practica relaciones sexuales con posturas de yoga.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Mira mamá sin manos','Practica relaciones con las manos atad@s.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Gravedad 0','Practica relaciones sexuales en un columpio sexual.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Policía fuera de servicio','Utiliza esposas practicando relaciones.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Vampirismo','Completa los logros Octubre Rojo y El joker.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Mickey-herramientas','Completa los logros Yo Robot, Paseando por las estrellas, El lado oscuro de la luna.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Sin ataduras','Completa los logros Mira mamá sin manos, Policía fuera de servicio y Gravedad 0.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'Cosplayer','Completa los logros Catgirl, Carnaval y Intimissimi.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'When you go black','Completa 5 desafíos +18 PERVERSO.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'You never come back','Completa 10 desafíos +18 PERVERSO.');
INSERT INTO Achievements (categoryid, title, description) VALUES (6,'BDSM Lover','Completa TODOS los desafios +18 PERVERSO.');