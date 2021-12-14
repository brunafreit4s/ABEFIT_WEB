create database ABEFIT
GO

use ABEFIT
GO

create table Funcionario(
IdFuncionario int identity(1,1) PRIMARY KEY not null,
Ativo_Func char(3) default 'Sim' not null,
Data_Cadastro_Func date not null,
Data_Afastamento_Func date null,
Cargo_Func varchar(20) null,
Nome_Func varchar(70) not null,
CPF_Func varchar(14) null,
RG_Func varchar(12) null,
email_Func varchar(40) not null,
tel_Celular_Func varchar(16) null,
tel_Resid_Func varchar(16) null,
Data_Nascimento_Func date null,
Sexo_Func varchar(9) null,
Rua_Func varchar(70) null,
Numero_Func varchar(5) null,
Complemento_Func varchar(15) null,
Bairro_Func varchar(50) null,
CEP_Func varchar(9) null,
Cidade_Func varchar(50) null,
UF_Func varchar(2) null,
Observacoes_Func varchar(400) null,
Permissoes_Func varchar(20) default '1' not null,
Senha_Func varchar(8) default 12345 not null,
)
GO

create table Aluno(
IdAluno int IDENTITY (1,1) PRIMARY KEY not null,
Data_Cadastro_Aluno date not null,
Ativo_Aluno char(3) default 'Sim' not null,
Data_Afastamento_Aluno date null,
Nome_Aluno varchar(70) not null,
Nacionalidade_Aluno varchar(20) null,
CPF_Aluno varchar(16) null,
RG_Aluno varchar(16) null,
RNE_Aluno varchar(12) null,
email_Aluno varchar(40) not null,
tel_Celular_Aluno varchar(16) null,
tel_Resid_Aluno varchar(16) null,
Data_Nascimento_Aluno date null,
Sexo_Aluno varchar(9) null,
Rua_Aluno varchar(70) null,
Numero_Aluno varchar(5) null,
Complemento_Aluno varchar(15) null,
Bairro_Aluno varchar(30) null,
CEP_Aluno varchar (9) null,
Cidade_Aluno varchar(50) null,
UF_Aluno varchar(2) null,
Observacoes_Aluno varchar(400) null,
Foto_Aluno varchar(200) null,
senha_Aluno varchar(8) default 12345 not null
)
GO

create table Mensalidade(
IdMensalidade int IDENTITY (1,1) PRIMARY KEY not null,
Forma_de_Pagamento varchar(50) null,
Data_Vencimento date null,
Data_Pagamento date null,
Status_Pagamento varchar(20) null,
Observação_Mensalidade varchar(400) null,
IdFuncionario int FOREIGN KEY REFERENCES Funcionario (IdFuncionario)
)
GO

create table Mensalidade_Aluno(
IdAluno int FOREIGN KEY REFERENCES Aluno (IdAluno),
IdMensalidade int FOREIGN KEY REFERENCES Mensalidade (IdMensalidade)
)
GO

create table Plano(
IdPlano int IDENTITY (1,1) PRIMARY KEY not null,
Planos varchar(20) not null,
Valores_Planos decimal(17,2) null,
)
GO

create table Mensalidade_Plano(
IdMensalidade int FOREIGN KEY REFERENCES Mensalidade (IdMensalidade),
IdPlano int FOREIGN KEY REFERENCES Plano (IdPlano)
)
GO

create table Plano_Aluno(
IdAluno int FOREIGN KEY REFERENCES Aluno,
IdPlano int FOREIGN KEY REFERENCES Plano
)
GO


--NAO ALUNO! MENSAGEM RECEBIDA POR E-MAIL
create table Mensagem(
IdMensagem int identity(1,1) PRIMARY KEY not null,
Nome_Mensagem varchar(40) not null,
email_Mensagem varchar(40) not null,
Assunto_Mensagem varchar(40) not null,
Mensagens_Mensagem varchar(400) not null,
data_mensagem date null,
Lido_Mensagem varchar(5)
)
GO

-- MENSAGEM DO FUNCIONÁRIO
create table Mensagem_Funcionario(
IdMensagem_Func int identity(1,1) PRIMARY KEY not null,
IdFuncionario int FOREIGN KEY REFERENCES Funcionario (IdFuncionario),
Assunto_MensagemFunc varchar(40) not null,
Mensagens_MensagemFunc varchar(400) not null,
data_MensagemFunc date null,
Lido_MensagemFunc varchar(5)
)
GO

--MENSAGEM DO ALUNO
create table Mensagem_Aluno(
IdMensagem_Aluno int identity(1,1) PRIMARY KEY not null,
IdAluno int FOREIGN KEY REFERENCES Aluno (IdAluno),
Assunto_MensagemAluno varchar(40) not null,
Mensagens_MensagemAluno varchar(400) not null,
data_MensagemAluno date null,
Lido_MensagemAluno varchar(5)
)
GO

--RELACIONAMENTO DE MENSAGENS DO ALUNO ENTRE O FUNCIONARIO!
create table Conversa_Func_Aluno(
IdMensagem_Aluno int FOREIGN KEY REFERENCES Mensagem_Aluno (IdMensagem_Aluno),
IdMensagem_Func int FOREIGN KEY REFERENCES Mensagem_Funcionario (IdMensagem_Func)
)
GO

create table Professor(
IdProfessor int IDENTITY (1,1) PRIMARY KEY not null,
Ativo_Prof char(3) default 'Sim' not null,
Data_Cadastro_Prof date not null,
Data_Afastamento_Prof date null,
Nome_Prof varchar(80) not null,
CPF_Prof varchar(12) null,
RG_Prof varchar(14) null,
email_Prof varchar(50) not null,
tel_Celular_Prof varchar(16) null,
tel_Resid_Prof varchar(16) null,
Data_Nascimento_Prof date null,
Sexo_Prof varchar(9) null,
Rua_Prof varchar(80) null,
Numero_Prof varchar(5) null,
Complemento_Prof varchar(50) null,
Bairro_Prof varchar(50) null,
CEP_Prof varchar(9) null,
Cidade_Prof varchar(50) null,
UF_Prof char(2) not null,
Observacoes_Prof varchar(400) null,
Senha_Prof varchar(8) default 12345 not null
)
GO

create table Modalidade(
IdModalidade int IDENTITY (1,1) PRIMARY KEY not null,
Modalidade varchar(80) not null,
IdProfessor int FOREIGN KEY REFERENCES Professor (IdProfessor)
)
GO

create table Modalidade_Aluno(
IdAluno int FOREIGN KEY REFERENCES Aluno (IdAluno),
IdModalidade int FOREIGN KEY REFERENCES Modalidade (IdModalidade)
)
GO

create table Tipo_Treino(
IdTipo_Treino int IDENTITY (1,1) PRIMARY KEY not null,
Treinos varchar(20) not null
)
GO

create table Treino_Aluno(
IdTreino_Aluno int identity(1,1) PRIMARY KEY not null,
Data_inicio_treino_Aluno date null,
Data_termino_treino_Aluno date null,
IdTipo_Treino int FOREIGN KEY REFERENCES Tipo_Treino (IdTipo_Treino),
IdAluno int FOREIGN KEY REFERENCES Aluno (IdAluno)
)
GO

create table Treino_professor(
IdTipo_Treino int FOREIGN KEY REFERENCES Tipo_Treino (IdTipo_Treino),
IdProfessor int FOREIGN KEY REFERENCES Professor (IdProfessor)
)
GO

create table Exercicio(
IdExercicio int identity(1,1) PRIMARY KEY not null,
Exercicio varchar(20) not null,
Serie_Exerc varchar(20),
Repeticao varchar(20),
Parte_do_Corpo_Exerc varchar(40)
)
GO

create table Exercicio_Treino(
IdExercicio_Treino int IDENTITY (1,1) PRIMARY KEY not null,
IdTipo_Treino int FOREIGN KEY REFERENCES Tipo_Treino (IdTipo_Treino),
IdExercicio int FOREIGN KEY REFERENCES Exercicio (IdExercicio)
)
GO

create table Treino(
IdTreino_Aluno int FOREIGN KEY REFERENCES Treino_Aluno (IdTreino_Aluno),
IdExercicio_Treino int FOREIGN KEY REFERENCES Exercicio_Treino (IdExercicio_Treino),
Dia_Semana_Exec_Treino date null
)
GO

create table Avaliacao_Fisica(
IdAvaliacao_Fisica int IDENTITY (1,1) PRIMARY KEY not null,
Data_Medidas date not null,
Altura decimal(17,2) null,
Peso decimal(17,2) null,
Medida_Torax decimal(17,2) null,
Medida_Abdome decimal(17,2) null,
Medida_Cintura decimal(17,2) null,
Medida_Quadril decimal(17,2) null,
Medida_Escapular decimal(17,2) null,
Medida_Braço_D decimal(17,2) null,
Medida_Braco_E decimal(17,2) null,
Medida_Antebraco_D decimal(17,2) null,
Medida_Antebraco_E decimal(17,2) null,
Medida_Punho_D decimal(17,2) null,
Medida_Punho_E decimal(17,2) null,
Medida_Coxa_D decimal(17,2) null,
Medida_Coxa_E decimal(17,2) null,
Medida_Panturrilha_D decimal(17,2) null,
Medida_Panturrilha_E decimal(17,2) null,
Percentual_Gordura decimal(17,2) null,
Percentual_Massa_Magra decimal(17,2) null,
Percentual_Agua decimal(17,2) null,
TMB decimal(17,2) null,
IMC decimal(17,2) null,
FcMax decimal(17,2) null,
Apto varchar(4) null,
Observacoes_Avaliacao_Fisica varchar(400) not null
)
GO

create table Aluno_Avaliacao_Fisica(
IdAluno int FOREIGN KEY REFERENCES Aluno (IdAluno),
IdAvaliacao_Fisica int FOREIGN KEY REFERENCES Avaliacao_Fisica (IdAvaliacao_Fisica)
)
GO

create table Professor_Avaliacao_Fisica(
IdProfessor int FOREIGN KEY REFERENCES Professor (IdProfessor),
IdAvaliacao_Fisica int FOREIGN KEY REFERENCES Avaliacao_Fisica (IdAvaliacao_Fisica)
)
GO

create table Horario(
IdHorario int identity(1,1) PRIMARY KEY not null,
Horarios time not null,
Dia_Semana varchar(30) not null
)
GO

create table Horario_Modalidade(
IdModalidade int FOREIGN KEY REFERENCES Modalidade (IdModalidade),
IdHorario int FOREIGN KEY REFERENCES Horario (IdHorario)
)
GO

create table Turma(
IdTurma int IDENTITY (1,1) PRIMARY KEY not null,
Nome_Turma varchar(30) not null,
IdProfessor int FOREIGN KEY REFERENCES Professor (IdProfessor),
IdHorario int FOREIGN KEY REFERENCES Horario (IdHorario)
)
GO

create table aluno_Turma(
IdAluno int FOREIGN KEY REFERENCES Aluno (IdAluno),
IdTurma int FOREIGN KEY REFERENCES Turma (IdTurma)
)
GO



insert into Funcionario (Data_Cadastro_Func, Cargo_Func, Nome_Func, CPF_Func, RG_Func, email_Func, tel_Celular_Func, tel_Resid_Func, Data_Nascimento_Func, Sexo_Func, Rua_Func, Numero_Func, Complemento_Func, Bairro_Func, CEP_Func, Cidade_Func, UF_Func, Observacoes_Func, Permissoes_Func) values ('17-09-2016', 'Gerente', 'Francisco Tarlisson', '11111111111', '222222222', 'francisco@abefit.com', '911111111', '11111111', '01-01-1990', 'Masculino', 'Rua Um', '55', 'A', 'Imirim', '07070070', 'Sao Paulo', 'SP', 'esse chicão é o bixão', '1')
insert into Funcionario (Data_Cadastro_Func, Cargo_Func, Nome_Func, CPF_Func, RG_Func, email_Func, tel_Celular_Func, tel_Resid_Func, Data_Nascimento_Func, Sexo_Func, Rua_Func, Numero_Func, Complemento_Func, Bairro_Func, CEP_Func, Cidade_Func, UF_Func, Observacoes_Func, Permissoes_Func) values ('16-09-2016', 'Recepicionista', 'Ingrid Marshal', '33333333333', '444444444', 'ingrid@abefit.com', '922222222', '22222222', '05-08-1992', 'feminino', 'Rua Dois', '100', 'ap 01', 'Santana', '17171171', 'Sao Paulo', 'SP', 'Funcionario novo', '3')
insert into Funcionario (Data_Cadastro_Func, Cargo_Func, Nome_Func, CPF_Func, RG_Func, email_Func, tel_Celular_Func, tel_Resid_Func, Data_Nascimento_Func, Sexo_Func, Rua_Func, Numero_Func, Complemento_Func, Bairro_Func, CEP_Func, Cidade_Func, UF_Func, Observacoes_Func, Permissoes_Func) values ('15-09-2016', 'Sub-Gerente', 'Adalberto Chaves', '55555555555', '666666666', 'adalberto@abefit.com', '933333333', '33333333', '01-04-1982', 'Masculino', 'Rua Tres', '258', 'casa', 'Carandiru', '27272272', 'Formigas', 'MG', 'Funcionario novo', '2')
GO

insert into Aluno (Data_Cadastro_Aluno, Nome_Aluno, Nacionalidade_Aluno, CPF_Aluno, RG_Aluno, email_Aluno, tel_Celular_Aluno, tel_Resid_Aluno, Data_Nascimento_Aluno, Sexo_Aluno, Rua_Aluno, Numero_Aluno, Complemento_Aluno, Bairro_Aluno, CEP_Aluno, Cidade_Aluno, UF_Aluno, Observacoes_Aluno) values ('17-09-2016', 'Thiago Souza', 'Brasileira', '87878787878', '874587458', 'thiagoa@abefit.com', '936362514', '25142536', '11-03-1985', 'Masculino', 'Rua Dezoito', '252', 'ap 22', 'Tremembe', '02312020', 'Sao Paulo', 'SP', 'Aluno novo')
insert into Aluno (Data_Cadastro_Aluno, Nome_Aluno, Nacionalidade_Aluno, CPF_Aluno, RG_Aluno, email_Aluno, tel_Celular_Aluno, tel_Resid_Aluno, Data_Nascimento_Aluno, Sexo_Aluno, Rua_Aluno, Numero_Aluno, Complemento_Aluno, Bairro_Aluno, CEP_Aluno, Cidade_Aluno, UF_Aluno, Observacoes_Aluno) values ('17-09-2016', 'Emily ', 'Brasileira', '99999999999', '253698745', 'Emily@abefit.com', '945454545', '2587963', '25-06-1992', 'Feminino', 'Rua Vinte e tres', '21', 'casa', 'Jacana', '23275858', 'São Paulo', 'SP', 'Aluna nova')
GO


insert into Professor (Data_Cadastro_Prof, Nome_Prof, CPF_Prof, RG_Prof, email_Prof, tel_Celular_Prof, tel_Resid_Prof, Data_Nascimento_Prof, Sexo_Prof, Rua_Prof, Numero_Prof, Complemento_Prof, Bairro_Prof, CEP_Prof, Cidade_Prof, UF_Prof, Observacoes_Prof) Values ('15-09-2016', 'Rubens', '32165498787', '124578963', 'rubens@abefit.com', '965856585', '25896536', '28-08-1962', 'Masculino', 'Rua Oitenta', '22', 'casa', 'Limao', '01452368', 'São Paulo', 'SP', 'artes marciais')
insert into Professor (Data_Cadastro_Prof, Nome_Prof, CPF_Prof, RG_Prof, email_Prof, tel_Celular_Prof, tel_Resid_Prof, Data_Nascimento_Prof, Sexo_Prof, Rua_Prof, Numero_Prof, Complemento_Prof, Bairro_Prof, CEP_Prof, Cidade_Prof, UF_Prof, Observacoes_Prof) Values ('15-09-2016', 'Fabio', '25865474565', '452589656', 'Fabio@abefit.com', '963698888', '23555555', '30-09-1970', 'Masculino', 'Rua Oitenta e Um', '212', 'casa', 'Limao', '01452368', 'São Paulo', 'SP', 'Musculacao')
insert into Professor (Data_Cadastro_Prof, Nome_Prof, CPF_Prof, RG_Prof, email_Prof, tel_Celular_Prof, tel_Resid_Prof, Data_Nascimento_Prof, Sexo_Prof, Rua_Prof, Numero_Prof, Complemento_Prof, Bairro_Prof, CEP_Prof, Cidade_Prof, UF_Prof, Observacoes_Prof) Values ('15-09-2016', 'Alcimar', '12456321478', '403698756', 'Alcimar@abefit.com', '964545545', '2144444', '28-07-1965', 'Masculino', 'Rua Oitenta e dois', '122', 'casa', 'Limao', '01452368', 'São Paulo', 'SP', 'Natação')
GO


insert into Plano (Planos, Valores_Planos) values ('Mensal', '79.90')
insert into Plano (Planos, Valores_Planos) values ('Semestral', '59.90')
insert into Plano (Planos, Valores_Planos) values ('Anual', '49.90')
GO


insert into Modalidade values ('Musculação', '2')
insert into Modalidade values ('Natação', '3')
insert into Modalidade values ('Karate', '1')
GO


insert into Mensalidade values ('deito', '12-11-2016', '12-11-2016', 'Pago', 'debito maestro', '1')
insert into Mensalidade values ('Credito', '10-11-2016', '10-11-2016', 'Pago', 'Credito em 2x', '2')
GO


insert into Mensalidade_Aluno values ('1', '1')
insert into Mensalidade_Aluno values ('2', '2')
GO


insert into Mensalidade_Plano values ('1', '1')
insert into Mensalidade_Plano values ('2', '2')
GO


insert into Plano_Aluno values ('1', '1')
insert into Plano_Aluno values ('2', '2')
GO


insert into Avaliacao_Fisica values ('12-10-2016', '1.80', '80', '70.5', '50.8', '48.5', '50', '20.4', '20.6', '17.9', '17.1', '15.1', '15', '50', '51', '35', '35.2', '30', '20', '40', '5', '14', '2', '2', 'sim', 'tudo ok')
insert into Avaliacao_Fisica values ('13-10-2016', '1.70', '88', '75.5', '51.8', '49.5', '55', '25.4', '25.6', '18.9', '18.1', '19.1', '19', '54', '55', '35', '34.2', '31', '21', '45', '9', '10', '8', '5', 'sim', 'Pé chato')
GO


insert into Aluno_Avaliacao_Fisica values ('1', '1')
insert into Aluno_Avaliacao_Fisica values ('2', '2')
GO


insert into Professor_Avaliacao_Fisica values ('1', '1')
insert into Professor_Avaliacao_Fisica values ('2', '2')
GO


insert into Horario values ('08:00:00.000', 'Quinta-Feira')
insert into Horario values ('09:00:00.000', 'Quinta-Feira')
insert into Horario values ('10:00:00.000', 'Quinta-Feira')
insert into Horario values ('11:00:00.000', 'Quinta-Feira')
insert into Horario values ('13:00:00.000', 'Quinta-Feira')
insert into Horario values ('14:00:00.000', 'Quinta-Feira')
insert into Horario values ('15:00:00.000', 'Quinta-Feira')
insert into Horario values ('16:00:00.000', 'Quinta-Feira')
insert into Horario values ('09:00:00.000', 'Sexta-Feira')
insert into Horario values ('10:00:00.000', 'Sexta-Feira')
insert into Horario values ('11:00:00.000', 'Sexta-Feira')
insert into Horario values ('13:00:00.000', 'Sexta-Feira')
insert into Horario values ('14:00:00.000', 'Sexta-Feira')
insert into Horario values ('15:00:00.000', 'Sexta-Feira')
insert into Horario values ('16:00:00.000', 'Sexta-Feira')
insert into Horario values ('17:00:00.000', 'Sexta-Feira')
insert into Horario values ('18:00:00.000', 'Sexta-Feira')
GO


insert into Horario_Modalidade values ('1', '2')
insert into Horario_Modalidade values ('1', '3')
insert into Horario_Modalidade values ('2', '4')
insert into Horario_Modalidade values ('2', '5')
insert into Horario_Modalidade values ('3', '6')
insert into Horario_Modalidade values ('3', '7')
insert into Horario_Modalidade values ('1', '8')
insert into Horario_Modalidade values ('2', '9')
insert into Horario_Modalidade values ('3', '10')
insert into Horario_Modalidade values ('3', '11')
insert into Horario_Modalidade values ('2', '12')
insert into Horario_Modalidade values ('2', '13')
insert into Horario_Modalidade values ('1', '14')
insert into Horario_Modalidade values ('1', '15')
insert into Horario_Modalidade values ('3', '16')
insert into Horario_Modalidade values ('1', '17')
GO


insert into Turma values ('Turma A', '1', '2')
insert into Turma values ('Turma B', '2', '3')
GO


insert into aluno_Turma values ('1', '1')
insert into aluno_Turma values ('2', '2')
GO





-- 1°- Procedure de login de professor e funcionario (Desktop)

create procedure USP_Login_Desk

@login varchar(40),
@senha varchar(08)

	as

Declare @getLogin varchar(40), @getSenha varchar(08), @getPermissao varchar(20)

set @getlogin = (select email_Func from Funcionario where email_Func = @login)
set @getSenha = (select senha_Func from Funcionario where email_Func = @login and senha_Func = @senha)
set @getPermissao= (select Permissoes_Func from Funcionario where email_Func = @login and senha_Func = @senha)

	if(len(@getLogin) >0) and (len(@getSenha) > 0) 
		begin
			if (@getLogin <> '') and (@getSenha <> '')
				begin
					select (@getPermissao) as logger 
					return @getPermissao					
				end
		end
			
set @getlogin = (select email_Prof from Professor where email_Prof = @login)
set @getSenha = (select senha_Prof from Professor where email_Prof = @login and Senha_Prof = @senha)
	
	if(len(@getLogin) > 0) and (len(@getSenha) > 0) 
		begin
			if (@getLogin <> '') and (@getSenha <> '')
				begin
					select ('Login Professor Efetuado com Sucesso') as logger
				end
		end
		
		else
			begin
				select('Login ou Senha incorretos') as logger
			end
GO


--exec USP_Login_Desk 'adalberto@abefit.com', '12345'
--exec USP_Login_Desk 'rubens@abefit.com', '12345'

--select * from Funcionario

--drop procedure USP_Login_Desk





-- 2° - Procedure de busca de Alunos

create procedure USP_buscaAluno
	@nomeBusca varchar(50)
as
select IdAluno, Nome_Aluno from Aluno
	where Nome_Aluno like '%' + @nomeBusca + '%'
GO	
	
	
--exec USP_buscaAluno "i"

--select * from Aluno

--drop procedure USP_buscaAluno





-- 3° - Procedure Inserir Aluno

create procedure USP_insereAluno

@Data_Cadastro_Aluno date,
@Ativo char(3),
@Data_Afastamento_Aluno date,
@Nome_Aluno varchar(70),
@Nacionalidade_Aluno varchar(20),
@CPF_Aluno varchar(16),
@RG_Aluno varchar(16),
@RNE_Aluno varchar(12),
@email_Aluno varchar(40),
@tel_Celular_Aluno varchar(16),
@tel_Resid_Aluno varchar(16),
@Data_Nascimento_Aluno date,
@Sexo_Aluno varchar(9),
@Rua_Aluno varchar(70),
@Numero_Aluno varchar(5),
@Complemento_Aluno varchar(15),
@Bairro_Aluno varchar(30),
@CEP_Aluno varchar (9),
@Cidade_Aluno varchar(50),
@UF_Aluno varchar(2),
@Observacoes_Aluno varchar(400),
@Foto_Aluno varchar(200),
@senha_Aluno varchar(8)
	as
		if exists (select @CPF_Aluno from Aluno where CPF_Aluno = @CPF_Aluno) or exists (select @email_Aluno from Aluno where email_Aluno = @email_Aluno) or exists (select @RNE_Aluno from Aluno where RNE_Aluno = @RNE_Aluno)
			begin
				print 'Este Aluno já esta Cadastrado'
			end
	
		else
			begin
				insert Aluno values (@Data_Cadastro_Aluno, @Ativo, @Data_Afastamento_Aluno, @Nome_Aluno, @Nacionalidade_Aluno, @CPF_Aluno, @RG_Aluno, @RNE_Aluno, @email_Aluno, @tel_Celular_Aluno, @tel_Resid_Aluno, @Data_Nascimento_Aluno, @Sexo_Aluno, @Rua_Aluno, @Numero_Aluno, @Complemento_Aluno,@Bairro_Aluno, @CEP_Aluno, @Cidade_Aluno, @UF_Aluno, @Observacoes_Aluno, @Foto_Aluno, @senha_Aluno)
				select ('Aluno cadastrado com sucesso!') as logger
			end
GO


--exec USP_insereAluno '17-09-2016', 'sim', '', 'Burna Freitas', 'Brasileira', '11211', '402365478', '521455', '11bbruna@abefit.com', '912121212', '21212121', '10-10-1992', 'Feminino', 'Rua Vinte', '300', 'ap 20', 'Frida', '08080080', 'Guaianazes', 'SP', 'Aluna nova', 'por aqui', '12345678'

--select * from Aluno

--drop procedure USP_insereAluno




-- 4° - Procedure de inserir Funcionario

create procedure USP_insereFuncionario
@Ativo_Func char(3),
@Data_Cadastro_Func date,
@Data_Afastamento_Func date,
@Cargo_Func varchar(20),
@Nome_Func varchar(70),
@CPF_Func varchar(14),
@RG_Func varchar(12),
@email_Func varchar(40),
@tel_Celular_Func varchar(16),
@tel_Resid_Func varchar(16),
@Data_Nascimento_Func date,
@Sexo_Func varchar(9),
@Rua_Func varchar(70),
@Numero_Func varchar(5),
@Complemento_Func varchar(15),
@Bairro_Func varchar(50),
@CEP_Func varchar(9),
@Cidade_Func varchar(50),
@UF_Func varchar(2),
@Observacoes_Func varchar(400),
@Permissoes_Func varchar(20), 
@Senha_Func varchar(8)
	as
		if exists(select @CPF_Func from Funcionario where CPF_Func = @CPF_Func) or exists (select @email_Func from Funcionario where email_Func = @email_Func)
			begin
				print 'Funcionário já esta cadastrado!'
			end
	
else
			begin
				insert Funcionario values (@Ativo_Func, @Data_Cadastro_Func, @Data_Afastamento_Func, @Cargo_Func, @Nome_Func, @CPF_Func, @RG_Func, @email_Func, @tel_Celular_Func, @tel_Resid_Func, @Data_Nascimento_Func, @Sexo_Func, @Rua_Func, @Numero_Func, @Complemento_Func, @Bairro_Func, @CEP_Func, @Cidade_Func, @UF_Func, @Observacoes_Func,@Permissoes_Func, @Senha_Func)
				print 'Funcionario cadastrado com sucesso!' 
			end
GO

		
--exec USP_insereFuncionario '', '15-09-2016', '', 'Sub-Gerente', 'Adalberto Chaves', '55555555555', '666666666', 'adalberto@abefit.com', '933333333', '33333333', '01-04-1982', 'Masculino', 'Rua Tres', '258', 'casa', 'Carandiru', '27272272', 'Formigas', 'MG', 'Funcionario novo', '', '123456'

--drop procedure USP_insereFuncionario

--select * from Funcionario





--5° - Procedure de Ativar e Inativar Alunos

create procedure USP_Atv_Inat_Aluno
	@Ativo_Aluno char(3),
	@IdAluno int

as

	begin
		update Aluno set Ativo_Aluno = @Ativo_Aluno where IdAluno = @IdAluno
	end
GO

--exec USP_Atv_Inat_Aluno 'Sim', '1'

--select * from Aluno

--drop procedure USP_Atv_Inat_Aluno




-- 6° - Procedure de Ativr e Inativar Funcionarios

create procedure USP_Atv_Inat_Func
	@Ativo_Func char(3),
	@IdFunc int

as

	begin
		update Funcionario set Ativo_Func=@Ativo_Func where IdFuncionario = @IdFunc
	end
GO

--exec USP_Atv_Inat_Func 'Sim', '1'

--select * from Funcionario

--drop procedure USP_Atv_Inat_Func





-- 7° - Procedure de Busca de Funcionarios

create procedure USP_buscaFunc
	@nomeBuscaFunc varchar(70)
as
	select IdFuncionario, Nome_Func from Funcionario where Nome_Func like '%' + @nomeBuscaFunc + '%'
GO	
	
	
--exec USP_buscaFunc 'mar'

--select * from Funcionario

--drop procedure USP_buscaFunc




-- 8° - Procedure de Login Aluno na Web

create procedure USP_Login_Web

@login_Aluno varchar(40),
@senha_Aluno varchar(08)

	as

Declare @getLogin_Aluno varchar(40), @getSenha_Aluno varchar(08)

set @getlogin_Aluno = (select email_Aluno from Aluno where email_Aluno = @login_Aluno)
set @getSenha_Aluno = (select senha_Aluno from Aluno where email_Aluno = @login_Aluno and senha_Aluno = @senha_Aluno)

	if(len(@getLogin_Aluno) >0) and (len(@getSenha_Aluno) > 0)
		begin
			if (@getLogin_Aluno <> '') and (@getSenha_Aluno <> '')
				begin
					select ('Login efetuado com Sucesso') as logger
				end
		end
		
		else
			begin
				select('Login ou Senha incorretos') as logger
			end
	GO
--exec USP_Login_Web 'thiagoa@abefit.com', '12345'

--select * from Aluno

--drop procedure USP_Login_Web




--Testes

select * from Aluno
select * from Plano

select p.Planos from Aluno a inner join Plano_Aluno pa on a.IdAluno = pa.IdAluno
inner join Plano p on pa.IdPlano = p.IdPlano

select * from Mensagem_Funcionario

--Arrumar a tabela Mensagem_Func para a tabela do outro banco

select Nome_Aluno,CPF_Aluno,RG_Aluno,RNE_Aluno,email_Aluno,tel_Celular_Aluno,tel_Resid_Aluno,convert (char(10),Data_Nascimento_Aluno,101)[Data_Nascimento_Aluno],Rua_Aluno,Numero_Aluno,Complemento_Aluno,Bairro_Aluno,CEP_Aluno,Cidade_Aluno,UF_Aluno from Aluno

select CONVERT(char(10),a.Data_Medidas,101)[Data_Medidas], b.Nome_Aluno from Avaliacao_Fisica a inner join Aluno_Avaliacao_Fisica AF on a.IdAvaliacao_Fisica = AF.IdAvaliacao_Fisica inner join Aluno b on AF.IdAluno = b.IdAluno where a.IdAvaliacao_Fisica in (select max(IdAvaliacao_Fisica) from Avaliacao_Fisica af where af.IdAvaliacao_Fisica = IdAvaliacao_Fisica)


--Testes Mensagem

select * from Mensagem

insert into Mensagem (Nome_Mensagem, email_Mensagem, Assunto_Mensagem, Mensagens_Mensagem, data_mensagem) 
values ('Bruna','bruna@abefit.com','Teste','Estamos Testando as Mensagens','2016-10-26')

select * from Mensagem_Aluno

insert into Mensagem_Aluno (IdAluno, Assunto_MensagemAluno, Mensagens_MensagemAluno,data_MensagemAluno) 
values ('1','Teste', 'Teste de Aluno', '2016-10-26')


select * from Mensagem_Funcionario

insert into Mensagem_Funcionario (IdFuncionario, Assunto_MensagemFunc, Mensagens_MensagemFunc, data_MensagemFunc)
values ('1','Estamos respondendo os testes','Testando 123','2016-10-26')


select * from Conversa_Func_Aluno

insert into Conversa_Func_Aluno (IdMensagem_Aluno, IdMensagem_Func) values ('1','1')



--Teste final

select b.Nome_Aluno,a.Assunto_MensagemAluno,a.Mensagens_MensagemAluno,a.Lido_MensagemAluno,b.email_Aluno from Mensagem_Aluno a
Inner Join Aluno b on a.IdAluno = b.IdAluno Inner Join Conversa_Func_Aluno c on a.IdMensagem_Aluno = c.IdMensagem_Aluno

select  CONVERT(char(10),a.data_MensagemAluno,101)[data_Mensagem], b.email_Aluno from Mensagem_Aluno a Inner Join Aluno b on a.IdALuno = b.IdAluno


select a.Assunto_MensagemFunc,a.Mensagens_MensagemFunc,a.data_MensagemFunc, d.email_Aluno from Mensagem_Funcionario a
Inner Join Conversa_Func_Aluno b on a.IdMensagem_Func = b.IdMensagem_Func
Inner Join Mensagem_Aluno c on b.IdMensagem_Aluno = c.IdMensagem_Aluno
Inner Join Aluno d on c.IdAluno = d.IdAluno


select * from Aluno
select * from Mensagem_Funcionario
select * from Conversa_Func_Aluno

select Convert (char (10),a.data_MensagemFunc,101)[data_MensagemFunc], a.Assunto_MensagemFunc,a.Mensagens_MensagemFunc, d.email_Aluno from Mensagem_Funcionario a Inner Join Conversa_Func_Aluno b on a.IdMensagem_Func = b.IdMensagem_Func Inner Join Mensagem_Aluno c on b.IdMensagem_Aluno = c.IdMensagem_Aluno Inner Join Aluno d on c.IdAluno = d.IdAluno




--Testes Java

select * from Aluno


select p.Planos from Aluno a inner join Plano_Aluno pa on a.IdAluno = pa.IdAluno
inner join Plano p on pa.IdPlano = p.IdPlano

select * from Mensagem_Funcionario

select Nome_Aluno,CPF_Aluno,RG_Aluno,RNE_Aluno,email_Aluno,tel_Celular_Aluno,tel_Resid_Aluno,convert (char(10),Data_Nascimento_Aluno,101)[Data_Nascimento_Aluno],Rua_Aluno,Numero_Aluno,Complemento_Aluno,Bairro_Aluno,CEP_Aluno,Cidade_Aluno,UF_Aluno from Aluno

select CONVERT(char(10),a.Data_Medidas,101)[Data_Medidas], b.Nome_Aluno from Avaliacao_Fisica a inner join Aluno_Avaliacao_Fisica AF on a.IdAvaliacao_Fisica = AF.IdAvaliacao_Fisica inner join Aluno b on AF.IdAluno = b.IdAluno where a.IdAvaliacao_Fisica in (select max(IdAvaliacao_Fisica) from Avaliacao_Fisica af where af.IdAvaliacao_Fisica = IdAvaliacao_Fisica)

select * from Modalidade

select * from Plano

select * from Professor

select * from Mensalidade

select * from Mensalidade_Aluno

select * from Mensalidade_Plano

select b.*, d.Nome_Aluno, d.CPF_Aluno from Mensalidade_Plano a Inner Join Mensalidade b on a.IdMensalidade = b.IdMensalidade
Inner Join Mensalidade_Aluno c on b.IdMensalidade = c.IdMensalidade Inner Join Aluno d on c.IdAluno = d.IdAluno 
