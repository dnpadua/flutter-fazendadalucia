import 'package:flutter/material.dart';
import 'package:lojinha_lucia/modelos/item_carrinho.dart';
import 'package:lojinha_lucia/paginas/carrinho.dart';
import 'package:lojinha_lucia/paleta_cores.dart';
import 'package:lojinha_lucia/widgets/appbar.dart';
import 'package:lojinha_lucia/widgets/grid_produtos.dart';
import 'package:lojinha_lucia/paginas/login.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/carrinho': (context) => Carrinho(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: PaletaCores().colorPadrao,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alata',
                color: Colors.black),
            headline2: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alata',
                color: Colors.white),
            headline3: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alata',
                color: Colors.black),
            headline4: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            headline5: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                fontFamily: 'Alata',
                color: Colors.black),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Inicio());
  }
}

class Inicio extends StatefulWidget {
  static List<ItemCarrinho> itensCarrinho = List();
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final List moveis = [
    {
      "titulo": "Verduras",
      "preco": 1000,
      "foto": "verduras.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Leite",
      "preco": 280,
      "foto": "leite.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Gados",
      "preco": 6000,
      "foto": "gado.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Bezerros",
      "preco": 2000,
      "foto": "bezerro.png",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Ovos",
      "preco": 150,
      "foto": "ovos.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Galinhas",
      "preco": 100,
      "foto": "galinha.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Pintinhos",
      "preco": 20,
      "foto": "pintinhos.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar:
          AppBarCustomizada(titulo: 'Fazenda da Lúcia', ehPaginaCarrinho: false),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
              Text('Produtos'),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 30, top: 10, bottom: 10),
                      child: Divider()))
            ],
          ),
          Flexible(
            child: GridProdutos(
              atualiza: atualiza,
              moveis: moveis,
            ),
          )
        ],
      ),
    );
  }

  void atualiza() {
    setState(() {});
  }
}
