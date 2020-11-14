import 'package:flutter/material.dart';

//TODO: Etapa 15 - Execute o app e veja se você consegue ver a primeira questão sendo exibida na tela.

void main() => runApp(HarryPotterHouses());

class HarryPotterHouses extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HarryPoterPage(),
    );
  }
}

//TODO: Etapa 9 - Crie um novo objeto chamado helper utilizando a classe Helper.


class HarryPoterPage extends StatefulWidget {
  _HarryPoterPageState createState() => _HarryPoterPageState();
}

class _HarryPoterPageState extends State<HarryPoterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    //TODO: Etapa 1 - Adicione uma imagem de fundo (background) para esse Container. Dica: utilize a imagem harrypotter.jpg que está dentro da pasta imagens.
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 120),
                    child: Text(
                      //TODO: Etapa 10 - Use o helper para obter a primeira questão e mostrá-la dentro do Widget Text.
                      'Aqui serão exibidas questões, que para nossa situação podem ser perguntas ou definições de que casas são indicadas para os usuários.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Escolha (choice) 1 feita pelo usuário.
                    //TODO: Etapa 18 - Chame o método nextQuestion() do helper passando como parâmetro o número 1 que representa a escolha do usuário.
                  },
                  color: Colors.green,
                  child: Text(
                    //TODO: Etapa 13 - Use o helper para obter o conteúdo textual da escolha 1 (choice1).
                    'Escolha (choice) 1',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Etapa 26 - Use o Widget Visibility deixando o FlatButton como seu filho.
                //TODO: Etapa 28 - Altere a propriedade visible do Widget Visibility para uma chamada do método buttonShouldBeVisible do helper.
                child: FlatButton(
                  onPressed: () {
                    //Escolha (choice) 2 feita pelo usuário.
                    //TODO: Etapa 19 - Chame o método nextQuestion do helper e passe como parâmetro o número 2 que representa a escolha do usuário.
                  },
                  color: Colors.deepPurpleAccent,
                  child: Text(
                    //TODO: Etapa 14 - Use o helper para obter o conteúdo textual da escolha 2 (choice2).
                    'Escolha (choice) 2',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: Etapa 24 - Execute o app e tente descobrir o que você precisa adicionar ao seu código para fazer com que a questão altere quando você pressionar em um dos botões de resposta.

//TODO: Etapa 29 - Execute o app e teste para ver se tudo ficou funcionando perfeitamente.
