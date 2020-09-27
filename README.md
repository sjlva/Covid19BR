# Covid19BR
 Dados do coronavírus em formatos mais acessíveis.
 
 ## Arquivos
 Este repositório conta com arquivos no formato .csv e .rds dos dados mais recentes sobre o Covid19 no Brasil e no mundo.  
 Estes arquivos são atualizados diariamente coletando os dados de:  
 + **covid_ms**: [Ministério da Saúde](https://covid.saude.gov.br/)  
 + **covid_jhu**: [Johns Hopkins University](https://github.com/CSSEGISandData/COVID-19)  
 + **covid_google**: [Google mobility reports](https://www.google.com/covid19/mobility/)
 
 
 ## Download manual dos dados
 Para realizar o baixar os arquivos manualmente, entre na pasta *csv* e baixe o arquivo *.zip* da sua escolha. 
 
 ## Dowload automático pelo R
 Para realizar o download automático pelo R, use nosso [pacote](https://github.com/sjlva/covidRdata).  
 
  Executar a linha abaixo fornece resultado semelhante:  
  
   `readr::read_rds(url("https://github.com/sjlva/Covid19BR/blob/master/rds/covid_ms.rds?raw=true"))`
   
 ## Frequência de Atualização dos dados  
 Os dados são atualizados diariamente em qualquer horário entre as 17:00 e 00:00, variando de acordo com o consumo de RAM na máquina virtual e também de acordo com a atualização dos dados do Ministério da Saúde.
 
 
