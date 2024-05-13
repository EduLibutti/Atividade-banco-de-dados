# Atividade-banco-de-dados

### Relação: post-comentario

Nesta relação, estabelecemos a ligação entre as entidades "ações" e "usuário". Cada ação realizada em nossa aplicação é atribuída a um usuário específico. Um usuário pode realizar várias ações, porém cada ação pertence exclusivamente a um único usuário. Isso estabelece uma relação de um para muitos, onde um usuário pode ter diversas ações associadas a ele, porém uma ação específica pertence somente a um usuário.


### Relação: permissoes-usuario

Esta relação estabelece a conexão entre a entidade central "usuário" e a entidade associada "foto_perfil". Na nossa aplicação, cada usuário tem a possibilidade de ter uma única foto de perfil. Isso implica que para cada entrada na tabela de usuários, pode haver no máximo um correspondente na tabela de fotos de perfil, e vice-versa. Essa relação é fundamentalmente de um para um, assegurando que cada usuário possa ter apenas uma foto de perfil e que cada foto de perfil esteja associada a apenas um usuário.

### Relação: usuario-foto_perfil

A relação entre as entidades "permissões" e "usuário" é uma relação muitos para muitos. Isso indica que cada usuário pode ter múltiplas permissões atribuídas a ele e, inversamente, uma permissão pode ser compartilhada por diversos usuários. Trata-se de uma relação de muitos para muitos, onde um usuário pode possuir várias permissões e uma permissão pode pertencer a vários usuários. Essa relação é comumente gerenciada por meio de uma tabela intermediária que mapeia os usuários às suas respectivas permissões.

### Relação: acoes-usuario

A conexão entre as entidades "post" e "comentário" é estabelecida nesta relação. Em nosso sistema, cada post pode gerar vários comentários, porém cada comentário está associado a apenas um post. Isso cria uma relação de um para muitos, onde um post pode ter múltiplos comentários, mas cada comentário pertence exclusivamente a um post.


