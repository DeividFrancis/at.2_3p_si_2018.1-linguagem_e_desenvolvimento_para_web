CREATE TABLE IF NOT EXISTS pessoa
{
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  cpf VARCHAR(13),
  sexo VARCHAR(1),
  data_nascimento DATE
};
