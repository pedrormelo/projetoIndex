CREATE DATABASE estoque_projeto;

CREATE TABLE unidade (
    idUnidade INT NOT NULL PRIMARY KEY,
    nomeUndiade VARCHAR(250) NOT NULL
);

CREATE TABLE estado (
    idStatus INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    statusDispositivo VARCHAR(70) NOT NULL,
    statusSuporte VARCHAR(70) NOT NULL
);

CREATE TABLE dispositivos (
    idDispositivos INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    idStatus INT NOT NULL,
    tomabamento INT NOT NULL,
    idUnidade INT NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    historicoDispositivo VARCHAR(250) NOT NULL,
    CONSTRAINT Fk_Status FOREIGN KEY (idStatus) REFERENCES estado(idStatus),
    CONSTRAINT Fk_Unidade FOREIGN KEY (idUnidade) REFERENCES unidade(idUnidade)
);

CREATE TABLE suporte (
    idSuporte INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    idStatus INT NOT NULL,
    tecnico VARCHAR(255),
    CONSTRAINT Fk_StatusSuporte FOREIGN KEY (idStatus) REFERENCES estado(idStatus) 
);

CREATE TABLE equipamentos(
	idEquipamento INT NOT NULL PRIMARY KEY,
    nomeEquipamento VARCHAR(100) NOT NULL
);

CREATE TABLE estoque (
	idEstoque INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idEquipamento INT NOT NULL,
    CONSTRAINT FK_Equipamento FOREIGN KEY (idEquipamento) REFERENCES equipamentos(idEquipamento)
);

