INSERT INTO Pessoas(nome, email, cpf, data_nasc, endereco) values 
("Pedro I", "pp@email.com", "00200200202", "1479-01-10", "R. Vasco"),
("Pedro II", "ps@email.com", "00300300303", "1516-02-10", "R. Flamengo", "5501"),
("D João VI", "dj@email.com", "00100100101", "01-12-1415", "R. Portugal"),
("JJ Xavier", "jj@email.com", "00400400404", "1746-11-12", "R. Minas", "5502");

INSERT INTO Pacientes(cpf_pessoa, senha, plano_saude) values 
("00200200202", "senha1", FALSE),
("00300300303", "senha2", TRUE);

INSERT INTO Medicos(cpf_pessoa, crm) values 
("00100100101", "111"),
("00400400404", "112");

INSERT INTO Especialidades(descricao) values 
("Pediatra"),
("Cardiologista"),
("Ortopedista");

INSERT INTO MedicoEspecialidades(cpf_medico, id_especialidade) values
("00100100101", 1),
("00400400404", 2),
("00400400404", 3);

INSERT INTO Agendamentos(cpf_paciente, cpf_medico, dh_consulta, dh_agendamento, valor_consulta) values
("00200200202", "00100100101", TIMESTAMP "14-04-1782 16:00", TIMESTAMP "14-03-1782 10:04:45", 80),
("00200200202", "00400400404", TIMESTAMP "15-04-1782 10:00:00", TIMESTAMP "14-03-1782 10:04:45", 100),
("00200200202", "00400400404", TIMESTAMP "17-05-1783 08:00:00", TIMESTAMP "10-05-1783 16:32:00", 100),
("00300300303", "00100100101", TIMESTAMP "17-05-1783 08:30:00", TIMESTAMP "09-05-1783 09:05:56", 0);

UPDATE Pessoas set data_nasc="1416-12-01" WHERE nome="D João VI";
UPDATE Pessoas set telefone="5503", email="pf@email.com" WHERE nome="D Pedro I";
UPDATE Pessoas set telefone=concat("9", (telefone)) WHERE telefone is not NULL;
UPDATE Agendamentos set dh_consulta="1783-05-19", valor_consulta=150,0 WHERE dh_consulta="1783-05-17";
UPDATE MedicoEspecialidades set id_especialidade=1 WHERE id_especialidade=2 AND cpf_medico="00400400404";

DELETE FROM Agendamentos WHERE cpf_paciente="00200200202" AND dh_consulta="1783-05-19";
DELETE FROM Agendamentos WHERE cpf_medico="00100100101" AND valor_consulta=0;
DELETE FROM Pacientes WHERE plano_saude=FALSE OR telefone is NULL;
DELETE FROM Pessoas WHERE nome="JJ Xavier";
