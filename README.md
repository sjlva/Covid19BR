# Covid19BR
 Dados retirados de https://covid.saude.gov.br/ em formatos mais acessíveis.
 
 ## Arquivos
 Este repositório conta com arquivos no formato .csv e .rds dos dados mais recentes sobre o Covid19 no Brasil.  
 Estes arquivos são atualizados diariamente coletando os dados do Ministério da Saúde através de sua API.
 
 ## Download manual dos dados
 Para realizar o baixar os arquivos manualmente, entre na pasta csv e baixe o arquivo covid_ms.zip  
 
 ## Dowload automático pelo R
 Para realizar o download automático pelo R, use nosso [pacote](https://github.com/sjlva/covidRdata) pela função `download_dataset("ms_br")`  
 
 Alternativamente, basta usar os comandos:  
 `url <- "https://github.com/sjlva/Covid19BR/blob/master/rds/covid_ms.rds?raw=true"`  
 `df <- readr::read_rds(url(url))`
 
 
