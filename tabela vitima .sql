CREATE TABLE vitima(
	id_vitima INT PRIMARY KEY IDENTITY(1,1),
	nome_vitima NVARCHAR(255) NOT NULL,
	data_nasc DATE NOT NULL,
	data_obito DATE NOT NULL,
	local_obito NVARCHAR(50) NOT NULL
);
