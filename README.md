# estruturaBasicaLinuxShell
Esse é um scritp básico de criação de usuários para um servidor Linux.

Esse é um script para criação de uma estrutura de arquivos básica em Linux, nele é criado 3 grupos, o grupo GRP_ADM, GRP_VEN e GRP_SEC e atribuído a eles 3 usurários criados. 
Esse usuários são criados com uma senha padrão simples (Senha1234), mas essa senha expira em primeiro login solicitando a criação de uma nova senha no momento do primeiro acesso.
O script também cria 4 pastas e atribui diferentes permissões e donos. As permissões são de acordo com o grupo.
Cada diretório é referente a um grupo, esse grupo e o dono tem poder máximo sobre ela, já nos diretórios que o grupo não faz parte, ele não consegue executar nenhuma ação sob ele.
