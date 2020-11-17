//TODO: Passo 6 - importe o question.dart para esse arquivo.
import 'question.dart';

//TODO: Passo 5 - Crie uma classe chamada Helper.
class Helper{

  //TODO: Passo 7 - Remova os comentários das linhas seguintes para habilitar a lista questionData dentro do arquivo helper.dart.
  List<Question> _questionData = [
    Question(
        questionTitle:
        'Olá futuro bruxo(a)! Vamos descobrir qual é a casa ideal para você em Hogwarts? E a primeira questão é: com quais dos substantivos você se identifica mais?',
        choice1: 'Coragem e gentileza',
        choice2: 'Ambição e inteligência'),
    Question(
        questionTitle: 'Você prefere quebrar as regras e conquistar algo de forma rápida ou prefere utilizar a inteligência e estudar para então conquistar?',
        choice1: 'Prefiro quebrar as regras',
        choice2: 'Utilizo a inteligência e estudos'),
    Question(
        questionTitle:
        'O que se encaixa melhor com o seu perfil?',
        choice1: 'Ousadia e astúcia',
        choice2: 'Paciência e sinceridade'),
    Question(
        questionTitle:
        'Você ficará muito bem aos cuidados da SONSERINA',
        choice1: 'Refazer teste',
        choice2: ''),
    Question(
        questionTitle:
        'Você ficará muito bem aos cuidados da LUFA-LUFA!',
        choice1: 'Refazer teste',
        choice2: ''),
    Question(
        questionTitle:
        'Você ficará muito bem aos cuidados da GRIFINÓRIA!',
        choice1: 'Refazer teste',
        choice2: ''),
    Question(
        questionTitle:
        'Você ficará muito bem aos cuidados da CORVINAL!',
        choice1: 'Refazer teste',
        choice2: '')
  ];

  //TODO: Passo 23 - Use o questionNumber,  dentro do getQuestion(), do getChoice1() e do getChoice2() para obter as opções atualizadas ao invés de sempre receber a primeira questão.

  //TODO: Passo 8 - Crie um método chamado getQuestion() que irá retornar a primeira questão da lista _questionData.
  String getQuestion(){
    return _questionData[_questionNumber].questionTitle;
  }

  //TODO: Passo 11 - Crie um método chamado getChoice1() que retorna o conteúdo textual da choice1 (escolha1) para a primeira questão da lista _questionData.
  String getChoice1(){
    return _questionData[_questionNumber].choice1;
  }

  //TODO: Passo 12 - Crie um método chamado getChoice2() que retorna a conteúdo textual da choice2 (escolha2) para a primeira questão da lista _questionData.
  String getChoice2(){
    return _questionData[_questionNumber].choice2;
  }

  //TODO: Passo 16 - Crie uma variável chamada questionNumber que recebe 0 (zero) como valor inicial. Ela servirá para mostrar qual questão está sendo exibida na tela para o usuário.

  //TODO: Passo 25 - Altere a propriedade questionNumber para que esta seja privada, assim somente o helper.dart terá acesso direto a ela. Dica: você pode fazer isso clicando com o botão direito do mouse sobre o nome (questionNumber) e então selecionando a opção Refactor e na sequência Rename. Isso fará com que as alterações sejam aplicadas no escopo inteiro do projeto, ou seja, em todo local que está propriedade está sendo utilizada.
  int _questionNumber = 0;

  //TODO: Passo 17 - Crie um método chamado nextQuestion. Ele não irá retornar nada, porém, ele deve receber como parâmetro um inteiro que pode ser chamado de userChoice e que receberá um número que representa a escolha do usuário.
  void nextQuestion(int userChoice){
  //TODO: Passo 21 - Utilizando o fluxograma que você baixou modifique o método nextQuestion() para alterar o questionNumber de acordo com a escolha(choice) feita pelo usuário.
    if (userChoice == 1 && _questionNumber == 0) {
      _questionNumber = 2;
    } else if (userChoice == 2 && _questionNumber == 0) {
      _questionNumber = 1;
    } else if (userChoice == 1 && _questionNumber == 1) {
      _questionNumber = 3;
    } else if (userChoice == 2 && _questionNumber == 1) {
      _questionNumber = 6;
    } else if (userChoice == 1 && _questionNumber == 2) {
      _questionNumber = 5;
    } else if (userChoice == 2 && _questionNumber == 2) {
      _questionNumber = 4;
    }
    //TODO: Passo 22 - No método nextQuestion se a questionNumber for igual a 3,4,5 ou 6 o usuário chegou ao final das questões e recebeu a resposta de qual casa é mais parecida com o perfil dele. Faça então uma chamada para um método restart() que servirá para reiniciar as questões modificando o valor de questionNumber para 0 (zero)
    else if (_questionNumber == 3 || _questionNumber == 4 || _questionNumber == 5 || _questionNumber == 6) {
      restart();
    }
  }

  void restart(){
    _questionNumber = 0;
  }

}

















//TODO: Passo 20 - Faça download do fluxograma com as sequências para os possíveis resultados: https://drive.google.com/file/d/1vOI-Jr0Brp1LIQ7CDB8Y03PykWhWBmA2





//TODO: Passo 27 - Crie um método chamado buttonShouldBeVisible() que irá checar se o questionNumber é 0, 1 ou 2. Se ess for o caso, o método deverá retornar true indicando que os dois botões mostram uma opção. Caso contrário deverá ser retornado false.

