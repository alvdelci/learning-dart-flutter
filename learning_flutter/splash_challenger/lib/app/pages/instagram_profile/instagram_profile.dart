import 'package:flutter/material.dart';

class InstagramProfile extends StatefulWidget {
  @override
  _InstagramProfileState createState() => _InstagramProfileState();
}

class _InstagramProfileState extends State<InstagramProfile> {
  //Adicionar um switch para alternar de dark para light theme. Definir as cores na função e setar de acordo com o switch
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          // Switch Account and menu icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Image.asset(
                          "assets/ig_icons/lock_icon.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Text(
                          "alv_delci",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ), //Esse texto vai ser a parte de switch account
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border(
                              top: BorderSide(
                                  width: 1.5, color: Color(0xFFFFFFFF)),
                              left: BorderSide(
                                  width: 1.5, color: Color(0xFFFFFFFF)),
                              right: BorderSide(
                                  width: 1.5, color: Color(0xFFFFFFFF)),
                              bottom: BorderSide(
                                  width: 1.5, color: Color(0xFFFFFFFF)),
                            )),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 21.0,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          // Linha de avatar, posts, followers e following
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 1,
              ),
              //Avatar
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border(
                    top: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
                    left: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
                    right: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
                    bottom: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/image/me.jpeg"),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              //Publicações
              Column(
                children: [
                  Text(
                    "6",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "Posts",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              //Seguidores
              Column(
                children: [
                  Text(
                    "475",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              //Seguindo
              Column(
                children: [
                  Text(
                    "519",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "Following",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                width: 5,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          // Bio
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Delcimario Alves",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Flexible(
                child: Text(
                  "Minha bio aqui bem grande aqui para ativar a quebra de linha no flutter. Se inscreve e dá like!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}