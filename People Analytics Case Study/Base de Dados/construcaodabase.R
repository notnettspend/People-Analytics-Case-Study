############################################################
# People Analytics Case Study
# Construção da Base de Dados
############################################################

rm(list = ls())

############################################################
# Criação do Data Frame
############################################################

funcionarios <- data.frame(
  id = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30),
  nome = c("lucas almeida", "amanda souza", "fernando costa", "ricardo martins", "juliana rocha", "carlos henrique", "rafael gomes", "marina oliveira", "bruno pereira", "camila santos", "gustavo lima", "larissa mendes", "felipe rocha", "beatriz carvalho", "thiago nunes", "isabela ferreira", "pedro azevedo", "natalia ribeiro", "joao victor", "vanessa lima", "diego rodrigues", "priscila martins", "gabriel dias", "leticia moreira", "mateus carvalho", "ana beatriz", "mauricio silva", "clara fernandes", "igor barbosa", "sabrina barreto"),
  idade = c(46, 39, 41, 43, 36, 38, 35, 33, 31, 30, 29, 28, 30, 27, 32, 29, 34, 27, 26, 33, 37, 28, 25, 24, 29, 31, 40, 26, 28, 27),
  sexo = c("M", "F", "F", "M", "F", "M", "M", "F", "M", "F", "M", "F", "M", "F", "M", "F", "M", "F", "M", "F", "M", "F", "M", "F", "M", "F", "M", "F", "M", "F"),
  escolaridade = c("mestrado", "pos graduacao", "mestrado", "pos graduacao", "pos graduacao", "graduacao", "graduacao", "graduacao", "graduacao", "graduacao", "graduacao", "graduacao", "graduacao", "graduacao", "graduacao", "graduacao", "pos graduacao", "graduacao", "graduacao", "pos graduacao", "graduacao", "graduacao", "graduacao", "graduacao", "graduacao", "pos graduacao", "graduacao", "graduacao", "graduacao", "graduacao"),
  estado_civil = c("casado", "casado", "casado", "casado", "casado", "casado", "solteiro", "casado", "solteiro", "solteiro", "solteiro", "solteiro", "casado", "solteiro", "casado", "solteiro", "casado", "solteiro", "solteiro", "casado", "casado", "solteiro", "solteiro", "solteiro", "casado", "casado", "casado", "solteiro", "solteiro", "solteiro"),
  cidade = c("sao paulo", "sao paulo", "campinas", "sao paulo", "sao paulo", "sao paulo", "campinas", "sao paulo", "campinas", "sao paulo", "sao paulo", "sao paulo", "campinas", "sao paulo", "sao paulo", "campinas", "sao paulo", "sao paulo", "campinas", "sao paulo", "sao paulo", "sao paulo", "sao paulo", "campinas", "sao paulo", "sao paulo", "sao paulo", "campinas", "sao paulo", "sao paulo"),
  departamento = c("desenvolvimento", "comercial", "engenharia de dados", "infraestrutura", "recursos humanos", "financeiro", "marketing", "desenvolvimento", "engenharia de dados", "comercial", "financeiro", "recursos humanos", "infraestrutura", "marketing", "desenvolvimento", "engenharia de dados", "desenvolvimento", "comercial", "marketing", "recursos humanos", "financeiro", "infraestrutura", "desenvolvimento", "engenharia de dados", "desenvolvimento", "comercial", "infraestrutura", "marketing", "financeiro", "recursos humanos"),
  cargo = c("diretor", "gerente", "gerente", "gerente", "coordenador", "coodernador", "coordenador", "analista senior", "analista senior", "analista senior", "analista pleno", "analista pleno", "analista pleno", "analista pleno", "analista pleno", "analista pleno", "tech lead", "analista pleno", "analista pleno", "analista senior", "analista senior", "analista pleno", "desenvolvedor junior", "analista junior", "desenvolvedor pleno", "analista senior", "especialista", "analista junior", "analista pleno", "analista pleno"),
  gestor = c("-", "lucas almeida", "lucas almeida", "lucas almeida", "lucas almeida", "lucas almeida", "lucas almeida", "lucas almeida", "fernanda costa", "amanda souza", "carlos henrique", "juliana rocha", "ricardo martins", "rafael gomes", "lucas almeida", "fernanda costa", "lucas almeida", "amanda souza", "rafael gomes", "juliana rocha", "carlos henrique", "ricardo martins", "pedro azevedo", "bruno pereira", "thiago nunes", "amanda souza", "ricardo martins", "rafael gomes", "carlos henrique", "juliana rocha"),
  modalidade = c("presencial", "hibrido", "hibrido", "presencial", "hibrido", "presencial", "remoto", "hibrido", "remoto", "hibrido", "presencial", "hibrido", "presencial", "remoto", "hibrido", "remoto", "hibrido", "hibrido", "remoto", "hibrido", "presencial", "presencial", "hibrido", "remoto", "hibrido", "hibrido", "presencial", "remoto", "presencial", "hibrido"),
  data_de_admissao = as.Date(
    c(
      "15/03/2016",
      "20/08/2018",
      "12/02/2017",
      "01/06/2017",
      "10/09/2019",
      "25/01/2020",
      "17/04/2020",
      "08/11/2020", 
      "14/01/2021",
      "18/05/2021",
      "11/08/2022",
      "03/10/2022",
      "15/07/2022",
      "22/09/2022",
      "09/05/2021",
      "26/06/2021",
      "05/04/2019",
      "30/11/2022",
      "06/02/2023",
      "13/03/2020",
      "28/07/2019",
      "16/01/2023",
      "01/09/2023",
      "10/10/2023",
      "25/02/2022",
      "19/04/2021",
      "07/05/2018",
      "03/03/2023",
      "12/12/2022",
      "29/08/2022"
    ),
    format = "%d/%m/%Y"
  ),
  tempo_de_empresa = c(10, 8, 9, 9, 6, 5, 5, 4, 4, 4, 3, 3, 3, 3, 4, 4, 6, 2, 2, 5, 6, 2, 1, 1, 3, 4, 7, 2, 2, 3),
  salario = c(22000, 14500, 14800, 14200, 9800, 9700, 9400, 7600, 7700, 7400, 6200, 6100, 6300, 6000, 6700, 6800, 11500, 6200, 6000, 7400, 7600, 6100, 5000, 4800, 7300, 7200, 9600, 4900, 6300, 6200),
  bonus_anual = c(25000, 15000, 16000, 14500, 8000, 7800, 7200, 4500, 4600, 4200, 3200, 3000, 3300, 2800, 3800, 3900, 6000, 2700, 2500, 4200, 4400, 2600, 1500, 1400, 3600, 4000, 5200, 1600, 2800, 2900),
  horas_extras = c(4, 10, 8, 12, 6, 5, 7, 15, 11, 13, 9, 5, 16, 6, 18, 10, 20, 8, 7, 12, 11, 6, 4, 3, 14, 9, 13, 5, 7, 6),
  desempenho = c(9.8, 9.2, 9.4, 9.0, 9.1, 8.8, 8.7, 9.0, 9.2, 8.9, 8.6, 8.8, 8.4, 8.7, 9.1, 0.0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1),
  satifacao = c(9.5, 8.8, 9.1, 8.6, 9.4, 8.5, 8.9, 8.7, 9.0, 8.4, 8.3, 9.2, 8.0, 9.0, 8.8, 8.6, 9.2, 8.5, 8.4, 9.2, 8.7, 8.4, 8.1, 8.3, 8.6, 9.0, 8.5, 8.2, 8.4, 8.7),
  situacao = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)
)

############################################################
# Visualização da Base
############################################################

funcionarios

############################################################
# Estrutura da Base
############################################################

str(funcionarios)

############################################################
# Resumo Estatístico
############################################################

summary(funcionarios)

############################################################
# Dimensão da Base
############################################################

dim(funcionarios)

nrow(funcionarios)

ncol(funcionarios)


############################################################
# Nome das Colunas
############################################################

names(funcionarios)
