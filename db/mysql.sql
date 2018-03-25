USE phprs;
CREATE TABLE IF NOT EXISTS pessoa(
pes_id INT PRIMARY KEY AUTO_INCREMENT,
pes_nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS email(
ema_id INT PRIMARY KEY AUTO_INCREMENT,
ema_id_pessoa INT,
ema_email VARCHAR(50),
FOREIGN KEY(ema_id_pessoa) REFERENCES pessoa(pes_id)
);

CREATE TABLE IF NOT EXISTS telefone(
tel_id INT PRIMARY KEY AUTO_INCREMENT,
tel_id_pessoa INT,
tel_id_telefone VARCHAR(50),
FOREIGN KEY (tel_id_pessoa) REFERENCES pessoa(pes_id)
);

-- INSERT INTO pessoa (pes_nome) VALUES
-- ('Gugu Liberato'),
-- ('Luciano Huck'),
-- ('Rodrigo Faro'),
-- ('Fausto Silva'),
-- ('Silvio Santos'),
-- ('Celso Portiole'),
-- ('Otavio Mesquita'),
-- ('Danilo Gentili')
-- ;
