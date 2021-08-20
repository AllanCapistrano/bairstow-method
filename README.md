# bairstow-method

------------

## 📚 Descrição ##

**O método de Bairstow é um eficiente algoritmo utilizado para determinar raízes de uma função polinomial de grau arbitrário.** <br/> <br/>
Ele foi implementado utilizando o *software* MatLab versão *R2018a¹* para a avaliação AV1 da disciplina de Métodos Númericos (EXA-862) ministrada pelo [Prof. MSc Danilo De Oliveira Gonçalves](https://daniloxm.wixsite.com/danilogoncalves), período 2019.2 E.

###### ¹Obs: Esses arquivos/implementação podem não funcionar de forma adequada/eficiente em versões diferentes da utilizada para o desenvolvimento. ######

**🔗 Tecnologia utilizada:**
- [MatLab R2018a](https://www.mathworks.com/products/new_products/release2018a.html)

------------

## 🖥️ Como utilizar o algoritmo e modificar a função polinomial ##

### 🔍 Utilizar o algoritmo: ###
1. Faça um Fork deste repositório (caso queira modificá-lo) ou somente clone este repositório.
2. Abra os arquivos ```.m``` utilizando o MatLab (versão recomendada: R2018a).
3. Execute o arquivo (F5) [```main.m```](https://github.com/AllanCapistrano/bairstow-method/blob/main/main.m) para visualizar as raízes da função polinomial.
4. Retire o comentário da segunda chamada do método ```% bairstowv1(v2, r, s, erro) % Exemplo 2.``` para visualizar as raízes de uma outra função.

### 👨‍💻 Adicionar outra função polinomial: ###
1. No arquivo [```main.m```](https://github.com/AllanCapistrano/bairstow-method/blob/main/main.m), crie um novo vetor de coeficientes da função polinomial. Ex: ```v3 = [18 25 3 -8 -4 -5 4 1];``` ou modifique os já existentes.
2. Defina as aproximações iniciais desejadas. Ex: ```r = -1;``` e ```s = -1```
3. Declare o valor do erro estimado em porcentagem. Ex: ```erro = 5``` para um erro de 5%.
4. Chame o método passando as variáveis definidas anteriormente. Ex: ```bairstowv1(v3, r, s, erro)```
5. Execute o arquivo (F5) [```main.m```](https://github.com/AllanCapistrano/bairstow-method/blob/main/main.m) para visualizar as raízes da função polinomial.

------------

## 📖 Referências ##

- [Raíces de Polinomios](http://metodosnumericoscem.weebly.com/uploads/2/5/9/7/25971049/mn_161_clase13_raices_polinomios.pdf)
- CHAPRA, Steven C.; CANALE, Raymond P. **Métodos Numéricos para Engenharia-5ª Edição**. McGraw Hill Brasil, 2011.

------------

## 📌 Autores ##
- Allan Capistrano: [Github](https://github.com/AllanCapistrano) - [Linkedin](https://www.linkedin.com/in/allancapistrano/) - [E-mail](https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&source=mailto&to=asantos@ecomp.uefs.br)
- Daniel Fernandes: [Github](https://github.com/denielfer) - [Linkedin](https://www.linkedin.com/in/daniel-fernandes-campos-05a2141b9/) - [E-mail](https://mail.google.com/mail/u/0/?view=cm&fs=1&tf=1&source=mailto&to=dfc152@gmail.com)
