#!/bin/bash

#Exercicios da primeira aula solicitados ao o4-mini-high:
#
#Perfeito. Vou montar uma lista de tarefas práticas em ordem crescente de dificuldade, cobrindo os temas que você mencionou: comandos básicos, manipulação de arquivos e diretórios, uso do vim, redirecionamentos, filtros, tipos de arquivos, e gerenciamento de usuários e grupos. Em breve, trarei uma sequência de exercícios que simula um ambiente real de trabalho no CentOS para você praticar.
#
#
## Lista de Exercícios Práticos em CentOS (Linha de Comando)
#
#Esta lista progressiva de exercícios práticos foi elaborada para ajudá-lo a treinar o uso de comandos no sistema operacional **CentOS** e acostumar-se com o uso diário da linha de comando. Os desafios estão organizados por tópicos em ordem crescente de dificuldade. Para cada tópico, tente realizar as tarefas propostas por conta própria, sem consultar soluções prontas, simulando situações reais de administração de sistemas Linux. Os cenários incluem manipulação de arquivos, navegação por diretórios, criação de scripts simples, edição de arquivos de configuração com o editor **vim**, além do gerenciamento de usuários e grupos. **Bons estudos!**
#
### 1. Comandos Simples (whoami, pwd, ls, cat, sudo, cd, cp)
#
#1. Descubra qual usuário está atualmente logado no sistema.
#2. Exiba o caminho completo do diretório de trabalho atual (diretório em que você se encontra no momento).
#3. Liste todos os arquivos e subdiretórios do diretório atual.
#4. Mostre o conteúdo do arquivo de hosts do sistema (arquivo `/etc/hosts`) diretamente no terminal.
#5. Navegue até o diretório `/etc` usando a linha de comando.
#6. A partir de `/etc`, retorne para o seu diretório **home**.
#7. Tente listar o conteúdo do diretório `/root` (diretório do superusuário) executando o comando com privilégios de superusuário.
#8. Faça uma cópia do arquivo `/etc/hosts` para o seu diretório home, renomeando o arquivo copiado para `hosts_backup`.
#
### 2. Mais Comandos (mkdir, cp, mv, touch)
#
#1. No seu diretório home, crie um diretório chamado **projeto**.
#2. Dentro do diretório **projeto**, crie um arquivo de texto vazio chamado **README.txt**.
#3. Ainda no diretório **projeto**, crie um subdiretório chamado **docs**.
#4. Mova o arquivo **README.txt** para dentro do diretório **docs**.
#5. No diretório **projeto**, crie um segundo arquivo vazio chamado **todo.txt**. Em seguida, renomeie esse arquivo para **tasks.txt**.
#6. Faça uma cópia do diretório **projeto** (e todo o seu conteúdo) para um novo diretório chamado **projeto\_backup**, localizado em seu diretório home.
#
### 3. Editor Vim
#
#1. Abra o editor **vim** para criar um novo arquivo de texto chamado `notas.txt` no seu diretório home. No modo de inserção do editor, escreva algumas linhas de texto de sua escolha. Em seguida, salve o arquivo e saia do editor.
#2. Usando o **vim**, edite o arquivo de configuração de hosts do sistema (`/etc/hosts`). Adicione uma nova linha ao final do arquivo (por exemplo, um host fictício para teste) e salve as alterações. *Lembre-se de que você precisará de privilégios administrativos para editar arquivos em* `/etc`.
#3. Abra com o **vim** um arquivo de log extenso, como `/var/log/messages` (ou outro log disponível em seu sistema). Dentro do editor, localize a primeira ocorrência da palavra "error" no arquivo utilizando a função de busca do **vim**.
#4. Crie um arquivo de script chamado `meu_script.sh` no seu diretório home. Edite esse arquivo com o **vim** e escreva um pequeno script em shell que exiba a mensagem "Olá, Mundo!" na tela. Inclua no início do arquivo a linha de *shebang* apropriada (indicando o interpretador Bash). Salve o arquivo e saia do editor. Em seguida, torne o script executável e execute-o no terminal para verificar se funcionou corretamente.
#
### 4. Tipos de Arquivos (arquivos regulares, diretórios, links simbólicos, etc.)
#
#1. Liste o conteúdo do diretório `/bin` em formato detalhado (por exemplo, usando `ls -l`) e observe os símbolos no início de cada linha listada. Identifique quais itens são arquivos comuns (regulares), quais são diretórios e quais são links simbólicos com base nesses símbolos da listagem.
#2. No seu diretório home, crie um link simbólico chamado `ultimos_logs` que aponte para o arquivo de log do sistema `/var/log/messages`. Após criar o link, verifique se ele funciona exibindo (no terminal) o conteúdo do arquivo de log através do link simbólico que você criou.
#3. Verifique se o arquivo executável `/usr/bin/vi` é um arquivo real ou um link simbólico para outro programa. Caso seja um link, identifique para qual arquivo ou caminho ele aponta.
#4. No seu diretório home, crie um arquivo vazio chamado `segredo.txt`. Em seguida, altere as permissões desse arquivo de forma que **apenas** você (o dono do arquivo) tenha permissão de leitura e escrita, removendo todas as permissões para outros usuários. Liste o arquivo antes e depois da modificação para confirmar que as permissões foram ajustadas corretamente.
#
### 5. Filtros (grep, sort, wc, cut, head, tail)
#
#1. No arquivo `/etc/passwd`, encontre todas as linhas que contêm o texto `/bin/bash` (indicando os usuários cujo shell padrão é o Bash).
#2. Calcule o tamanho do arquivo `/etc/passwd` em termos de número de **linhas**, **palavras** e **caracteres**, usando um único comando.
#3. Extraia apenas o nome de usuário (primeiro campo) de cada linha do arquivo `/etc/passwd`, exibindo somente a lista de nomes de usuários do sistema.
#4. Exiba as primeiras 10 linhas do arquivo `/etc/services` para ver os primeiros serviços listados nesse arquivo.
#5. Exiba as últimas 10 linhas do arquivo `/etc/services` para ver os últimos serviços listados.
#6. Imagine que você possui um arquivo de texto com uma lista de nomes em ordem aleatória. Crie um arquivo chamado `nomes.txt` contendo pelo menos 5 nomes fora de ordem (um em cada linha). Em seguida, use um comando para ordenar alfabeticamente os nomes desse arquivo e mostrar o resultado ordenado no terminal.
#
### 6. Redirecionamentos (>, >>, <, |)
#
#1. Liste o conteúdo do diretório `/usr/bin` e **redirecione** a saída desse comando para um arquivo chamado `bin_files.txt`. (Ou seja, em vez de exibir a listagem na tela, o resultado deve ser gravado no arquivo.)
#2. Acrescente (sem sobrescrever) a listagem do diretório `/sbin` ao final do arquivo `bin_files.txt` já existente, usando redirecionamento de **append**.
#3. Utilize um redirecionamento de entrada para calcular quantas linhas tem o arquivo `bin_files.txt` **sem** especificar o arquivo diretamente no comando. (Isto é, faça o comando ler o conteúdo de `bin_files.txt` a partir da entrada padrão.)
#4. Liste todos os arquivos do diretório `/etc` cujo nome termina em `.conf`, utilizando uma única linha de comando que conecte dois comandos através de um pipe (`|`).
#5. Obtenha a lista de todos os nomes de usuários do sistema em ordem alfabética, combinando múltiplos comandos em um só pipeline.
#6. Descubra quantos processos estão em execução atualmente pelo usuário **root**. Utilize um pipeline para filtrar a lista de processos pelo nome de usuário **root** e então contar quantos processos resultam dessa filtragem.
#
### 7. Usuários e Grupos (useradd, usermod, groupadd, passwd, id, etc.)
#
#1. Como administrador do sistema, crie um novo usuário chamado `estagiario`.
#2. Defina uma senha para o usuário `estagiario` recém-criado.
#3. Crie um grupo chamado `projetox`.
#4. Adicione o usuário `estagiario` ao grupo `projetox`.
#5. Verifique as informações de usuário e grupos de `estagiario` para confirmar se ele foi adicionado ao grupo `projetox` (por exemplo, observando a saída do comando `id`).
#6. Altere o shell de login padrão do usuário `estagiario` para `/bin/sh` (supondo que o shell padrão atual seja `/bin/bash`).
#7. O usuário `estagiario` não é mais necessário. Remova esse usuário do sistema, excluindo seu diretório home e todos os seus arquivos.
#8. Remova também o grupo `projetox` do sistema, caso ele não seja mais necessário.
#

#### 1. Comandos Simples (whoami, pwd, ls, cat, sudo, cd, cp)


echo "=== Exercício 1.1: Descubra qual usuário está atualmente logado no sistema. ==="
echo "Respostas:"
echo

whoami #porém só mostra o usuário atual
who #mostra todos os usuários logados atualmente no sistema
last #mostra os ultimos usuarios que logaram e se ainda estão logasos
ps auxww | grep ssh #analisa os processos de conexão ssh
w # mostra usuários logados mais o consumo de recursos
loginctl list-sessions #sessòes ativas

echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo


echo "=== Exercício 1.2: Exiba o caminho completo do diretório de trabalho atual (diretório em que você se encontra no momento).. ==="
echo "Respostas:"
echo

pwd #pwd!
echo $PWD #alternativa usando variavel de ambiente
pwd -P #caminho fisico real ( resovle links simbólicos)
pwd -L #caminho lógico (mantém links simbólicos)

echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo

echo "=== Exercício 1.3: Liste todos os arquivos e subdiretórios do diretório atual. ==="
echo "Respostas:"
echo

ls -l  #ls lista com detalhes
ls -la #inclui arquivos ocultos
ls -ltr #lista arquivos detalhadamente, com o mais antigo primeiro(de cima pra baixo, muito util)

echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo


echo "=== Exercício 1.4: Mostre o conteúdo do arquivo de hosts do sistema (arquivo `/etc/hosts`) diretamente no terminal. ==="
echo "Respostas:"
echo

cat /etc/hosts #basico
cat -n /etc/hosts #mostra o número de linhas
less /etc/hosts #com navegação, bom para arquivos grandes
grep -v '^#' /etc/hosts #remove comentários

echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo


echo "=== Exercício 1.5: Navegue até o diretório `/etc` usando a linha de comando. ==="
echo "Respostas:"
echo

cd /etc #direto
cd /etc && ls -l #navegando e lsitando conteudo
[ -d /etc ] && echo "Navegando para /etc " && cd /etc || echo "Diretório não existe" #verifica e vai para o inventório caso ele exista

echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo


echo "=== Exercício 1.6: A partir de `/etc`, retorne para o seu diretório **home**. ==="
echo "Respostas:"
echo

cd # leva pra casa
cd ~ #direto pra home
cd $HOME #usa variavel de ambiente
cd /home/volt #diretório home do usuário volt

echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 1.7: Tente listar o conteúdo do diretório `/root` (diretório do superusuário) executando o comando com privilégios de superusuário. ==="
echo "Respostas:"
echo
sudo ls -l /root #usando sudo para listar o diretório root
sudo -i #abre um shell como root, onde você pode executar comandos como superusuário
sudo su - #alternativa para entrar como root
su - #se você já é root, pode usar su para trocar de usuário   
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 1.8: Faça uma cópia do arquivo `/etc/hosts` para o seu diretório home, renomeando o arquivo copiado para `hosts_backup`. ==="
echo "Respostas:"
echo
cp /etc/hosts ~/hosts_backup #copia o arquivo hosts para o diretório home com novo nome
cp -v /etc/hosts ~/hosts_backup #com opção -v para mostrar o que foi copiado
cp -i /etc/hosts ~/hosts_backup #com opção -i para perguntar antes de sobrescrever
cp -u /etc/hosts ~/hosts_backup #com opção -u para copiar apenas se o arquivo de origem for mais recente que o de destino
cp -r /etc/hosts ~/hosts_backup #se fosse um diretório, usaria -r para copiar recursivamente
cp -a /etc/hosts ~/hosts_backup #opção -a para preservar atributos do arquivo original  
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
#### 2. Mais Comandos (mkdir, cp, mv, touch)
echo "=== Exercício 2.1: No seu diretório home, crie um diretório chamado **projeto**. ==="
echo "Respostas:"
echo
mkdir ~/projeto #cria o diretório projeto no home
mkdir -v ~/projeto #com opção -v para mostrar o que foi criado
mkdir -m 755 ~/projeto #cria o diretório com permissões específicas (755)
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 2.2: Dentro do diretório **projeto**, crie um arquivo de texto vazio chamado **README.txt**. ==="
echo "Respostas:"
echo
touch ~/projeto/README.txt #cria o arquivo README.txt vazio
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 2.3:Ainda no diretório **projeto**, crie um subdiretório chamado **docs**. ==="
echo "Respostas:"
echo
mkdir docs
mkdir ~/projeto/docs
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 2.4: Mova o arquivo **README.txt** para dentro do diretório **docs**. ==="
echo "Respostas:"
echo
mv ~/projeto/README.txt ~/projeto/docs/.
mv -v ~/projeto/README.txt ~/projeto/docs/.
mv -i ~/projeto/README.txt ~/projeto/docs/. #com opção -i para perguntar antes de sobrescrever
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 2.5: No diretório **projeto**, crie um segundo arquivo vazio chamado **todo.txt**. Em seguida, renomeie esse arquivo para **tasks.txt**. ==="
echo "Respostas:"
echo
touch todo.txt;mv todo.txt tasks.txt #cria todo.txt e renomeia para tasks.txt
mv -v todo.txt tasks.txt #com opção -v para mostrar o que foi renomeado
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 2.6: Faça uma cópia do diretório **projeto** (e todo o seu conteúdo) para um novo diretório chamado **projeto_backup**, localizado em seu diretório home. ==="
echo "Respostas:"
echo
cp -r ~/projeto ~/projeto_backup #copia o diretório projeto e todo o seu conteúdo
cp -av ~/projeto ~/projeto_backup #com opção -a para preservar atributos e -v para mostrar o que foi copiado
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
#### 3. Editor Vim
echo "=== Exercício 3.1: Abra o editor **vim** para criar um novo arquivo de texto chamado `notas.txt` no seu diretório home. No modo de inserção do editor, escreva algumas linhas de texto de sua escolha. Em seguida, salve o arquivo e saia do editor. ==="
echo "Respostas:"
echo
vim ~/notas.txt #abre o vim para criar notas.txt
# No modo de inserção, escreva algumas linhas de texto
# Pressione `Esc` para sair do modo de inserção
# Digite `:wq` para salvar e sair do editor
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 3.2: Usando o **vim**, edite o arquivo de configuração de hosts do sistema (`/etc/hosts`). Adicione uma nova linha ao final do arquivo (por exemplo, um host fictício para teste) e salve as alterações. *Lembre-se de que você precisará de privilégios administrativos para editar arquivos em* `/etc`. ==="
echo "Respostas:"
echo
sudo vim /etc/hosts #abre o vim com privilégios de superusuário
# No modo de inserção, adicione uma nova linha, por exemplo:
# `127.0.0.1   meuhost.local`
# Pressione `Esc` para sair do modo de inserção
# Digite `:wq` para salvar e sair do editor
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 3.3: Abra com o **vim** um arquivo de log extenso, como `/var/log/messages` (ou outro log disponível em seu sistema). Dentro do editor, localize a primeira ocorrência da palavra 'error' no arquivo utilizando a função de busca do **vim**. ==="
echo "Respostas:"
echo
sudo vim /var/log/messages #abre o vim com privilégios de superusuário
# No modo de comando, digite `/error` e pressione `Enter` para buscar a palavra 'error'
# Pressione `n` para ir para a próxima ocorrência ou `N` para a ocorrência anterior
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 3.4: Crie um arquivo de script chamado `meu_script.sh` no seu diretório home. Edite esse arquivo com o **vim** e escreva um pequeno script em shell que exiba a mensagem 'Olá, Mundo!' na tela. Inclua no início do arquivo a linha de *shebang* apropriada (indicando o interpretador Bash). Salve o arquivo e saia do editor. Em seguida, torne o script executável e execute-o no terminal para verificar se funcionou corretamente. ==="
echo "Respostas:"
echo
vim ~/meu_script.sh #abre o vim para criar meu_script.sh
# No modo de inserção, escreva o seguinte:
# #!/bin/bash
# echo "Olá, Mundo!"
# Pressione `Esc` para sair do modo de inserção
# Digite `:wq` para salvar e sair do editor
chmod +x ~/meu_script.sh #torna o script executável
sh ~/meu_script.sh #executa o script
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
#### 4. Tipos de Arquivos (arquivos regulares, diretórios, links simbólicos, etc.)
echo "=== Exercício 4.1: Liste o conteúdo do diretório `/bin` em formato detalhado (por exemplo, usando `ls -l`) e observe os símbolos no início de cada linha listada. Identifique quais itens são arquivos comuns (regulares), quais são diretórios e quais são links simbólicos com base nesses símbolos da listagem. ==="
echo "Respostas:"
echo
ls -l /bin #lista o conteúdo do diretório /bin em formato detalhado
# Os símbolos no início de cada linha indicam:
# - `-` para arquivos regulares
# - `d` para diretórios
# - `l` para links simbólicos
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 4.2: No seu diretório home, crie um link simbólico chamado `ultimos_logs` que aponte para o arquivo de log do sistema `/var/log/messages`. Após criar o link, verifique se ele funciona exibindo (no terminal) o conteúdo do arquivo de log através do link simbólico que você criou. ==="
echo "Respostas:"
echo
ln -s /var/log/messages ~/ultimos_logs #cria um link simbólico chamado ultimos_logs
tail -100 ~/ultimos_logs #exibe o conteúdo do arquivo de log através do link simbólico
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo

echo "=== Exercício 4.3: Verifique se o arquivo executável `/usr/bin/vi` é um arquivo real ou um link simbólico para outro programa. Caso seja um link, identifique para qual arquivo ou caminho ele aponta. ==="
echo "Respostas:"
echo
if [ -L /usr/bin/vi ]; then echo "/usr/bin/vi é um link simbólico que aponta para: $(readlink /usr/bin/vi)"; else echo "/usr/bin/vi é um arquivo real."; fi
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo

echo "=== Exercício 4.4: No seu diretório home, crie um arquivo vazio chamado `segredo.txt`. Em seguida, altere as permissões desse arquivo de forma que **apenas** você (o dono do arquivo) tenha permissão de leitura e escrita, removendo todas as permissões para outros usuários. Liste o arquivo antes e depois da modificação para confirmar que as permissões foram ajustadas corretamente. ==="
echo "Respostas:"
echo
touch ~/segredo.txt #cria o arquivo segredo.txt vazio
ls -l ~/segredo.txt #lista o arquivo antes da modificação
chmod 600 ~/segredo.txt #altera as permissões para que apenas o dono tenha leitura e escrita
ls -l ~/segredo.txt #lista o arquivo após a modificação para confirmar as permissões
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
#### 5. Filtros (grep, sort, wc, cut, head, tail
echo "=== Exercício 5.1: No arquivo `/etc/passwd`, encontre todas as linhas que contêm o texto `/bin/bash` (indicando os usuários cujo shell padrão é o Bash). ==="
echo "Respostas:"
echo
grep '/bin/bash' /etc/passwd #busca por linhas que contêm /bin/bash
cat /etc/passwd | grep /bin/bash #alternativa usando pipe
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 5.2: Calcule o tamanho do arquivo `/etc/passwd` em termos de número de **linhas**, **palavras** e **caracteres**, usando um único comando. ==="
echo "Respostas:"
echo
wc /etc/passwd #mostra o número de linhas, palavras e caracteres do arquivo
wc -l /etc/passwd #apenas o número de linhas
wc -w /etc/passwd #apenas o número de palavras
wc -c /etc/passwd #apenas o número de caracteres
wc -l -w -c /etc/passwd #especificando a ordem de exibição
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 5.3: Extraia apenas o nome de usuário (primeiro campo) de cada linha do arquivo `/etc/passwd`, exibindo somente a lista de nomes de usuários do sistema. ==="
echo "Respostas:"
echo
cut -d: -f1 /etc/passwd #extrai o primeiro campo (nome de usuário) usando ':' como delimitador
cut -d: -f1 /etc/passwd | sort #ordena a lista de nomes de usuários
cut -d: -f1 /etc/passwd | sort | uniq #remove duplicatas
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 5.4: Exiba as primeiras 10 linhas do arquivo `/etc/services` para ver os primeiros serviços listados nesse arquivo. ==="
echo "Respostas:"
echo
grep -v '^#' /etc/services | head -n 10 #exclui linhas em branco e comentários, mostrando as primeiras 10 linhas
grep -v '^#' /etc/services | grep -v '^$' | head -n 10 #exclui linhas em branco e comentários, mostrando as primeiras 10 linhas
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 5.5: Exiba as últimas 10 linhas do arquivo `/etc/services` para ver os últimos serviços listados. ==="
echo "Respostas:"
echo
grep -v '^#' /etc/services | tail -10 #exclui linhas em branco e comentários, mostrando as últimas 10 linhas
grep -v '^#' /etc/services | grep -v '^$' | tail -n 10 #exclui linhas em branco e comentários, mostrando as últimas 10 linhas
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
echo "=== Exercício 5.6: Imagine que você possui um arquivo de texto com uma lista de nomes em ordem aleatória. Crie um arquivo chamado `nomes.txt` contendo pelo menos 5 nomes fora de ordem (um em cada linha). Em seguida, use um comando para ordenar alfabeticamente os nomes desse arquivo e mostrar o resultado ordenado no terminal. ==="
echo "Respostas:"
echo
echo -e "Carlos\nAna\nBruno\nEduardo\nDiana" > ~/nomes.txt #cria o arquivo nomes.txt com 5 nomes fora de ordem
sort ~/nomes.txt #ordena alfabeticamente os nomes do arquivo
sort -u ~/nomes.txt #ordena e remove duplicatas, se houver
sort -r ~/nomes.txt #ordena em ordem reversa
echo "=========================================================="
echo "=========================================================="
echo "=========================================================="
echo
echo
#### 6. Redirecionamentos (>, >>, <, |)
echo "=== Exercício 6.1: Liste o conteúdo do diretório `/usr/bin` e **redirecione** a saída desse comando para um arquivo chamado `bin_files.txt`. ==="
echo "Respostas:"





