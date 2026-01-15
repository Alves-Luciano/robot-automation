# robot-automation

## Projeto de automação


## Descrição
Este projeto serve como aprendizagem para configurar um ambiente robot-framework do zero e iniciar os testes

## Instalação
No Windows:
- Download Chromedriver: https://googlechromelabs.github.io/chrome-for-testing/
- Download Python Installer: https://www.python.org/downloads/windows/
- Visual Studio Code: https://code.visualstudio.com/download

Instalar o Python via instalador e adiciona-lo ao PATH do Windows. Obs: Não esqueça de verificar o caminho de instalação padrão. Exemplo: C:\Users\<user_name>\AppData\Local\Programs\Python\Python310
Mover o chromedriver.exe para a mesma pasta de instalação do Python.
Executar o comando pip install -r requiriments.txt no terminal para intalar as dependencias necessárias.

- Venv 
  Instalando: python -m venv c:\path\to\myenv
  Executando: .\venv\Scripts\activate
  Desativando: deactivate

- Instalando dependencias do Robot:  pip install -r .\requirements.txt

## Comandos aceitos na execução
- [pabot --processes X] [Executa a automação em paralelo, substitua X pela quantidade de processos a serem executados]
- [-v]  [Comando para ser enviada variaveis pela linha de comando]
- [HEADLESS:X]  [Executa a automação abrindo ou não o navegador "fisicamente". Passar o X como (True) para não abrir o navegador e (False) para abrir o navegador]
- [-d] [Comando para informar o caminho para salvar as evidencias do teste]
Exemplo de comando: robot -v HEADLESS:True -d ./results .\Cases\