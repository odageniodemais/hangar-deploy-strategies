#!/bin/bash
VERSION=$1
DESCRICAO=$2
if [ -z &quot;$VERSION&quot; ] || [ -z &quot;$DESCRICAO&quot; ]; then
echo &quot;Erro: Forneça a versão e a descrição técnica do deploy.&quot;
echo &quot;Uso: ./create_release_tag.sh v1.0.0 &#39;Homologado sem
falhas&#39;&quot;
exit 1
fi
echo &quot;Gerando Tag Anotada para a versão $VERSION...&quot;
git tag -a &quot;$VERSION&quot; -m &quot;$DESCRICAO - Emitido em: $(date)&quot;
echo &quot;Enviando Tag com segurança para a esteira de nuvem...&quot;
git push origin &quot;$VERSION&quot;
echo &quot;Tag $VERSION implantada com sucesso!&quot;