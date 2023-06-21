# DESAFIO DIAMANTES E AREIAS

Um programa feito em Ruby para simular a extração do mineral(diamantes'<>') e areia '.', como resultado teremos o total de diamantes encontrados.

# LOGICA DO CÓDIGO

O código começa definindo o método com o nome mais coerente do nosso proposito e passando como argumento a expressão que é uma string. Criamos uma variável vazia 'counter_diamonds' para adicionar o número de diamantes encontrados, utilizamos a função .delete!('.') para alterar nossa string original e extrair a areia '.' da nossa cadeia de texto. Logo usamos o loop while para iterar dentro do argumento(string) que cumpra com a condição de encontrar os diamantes '<>'. Feito isso devera contar '.count' o número de ocorrências do padrão dentro da string '.scan(/<>/)' e adicionar na variável definida no começo do bloco. Por último para garantir a extração de todos nossos diamantes '<>' dentro do loop, se deve substituir gsub!('<>', '')da nossa cadeia original os diamantes '<>' por uma string vazia '' cada vez que ele for contado e como resultado nossa expressão ficara sem nenhum diamante.

