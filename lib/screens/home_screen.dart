import 'package:fit_food/widgets/build_list.dart';
import 'package:fit_food/widgets/build_scrollbar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 130,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4.0),
                  ),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.account_circle),
                          label: const Text(
                            "Perfil",
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite),
                          label: const Text("Favoritos",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.explore),
                          label: const Text("Explorar",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.settings),
                          label: const Text("Configurações",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 19)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Fit Food",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 200),
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.green,
                image: const DecorationImage(
                  image: AssetImage("assets/images/fit_food.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(200),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Fit Food"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(top: 200),
                width: 200,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/fit_food.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Alimentos",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  BuildList(label: "Frutas", text: "Alguma coisa"),
                  SizedBox(width: 10),
                  BuildList(label: "Legumes", text: "Alguma coisa"),
                  SizedBox(width: 10),
                  BuildList(label: "Saladas", text: "Alguma coisa"),
                  SizedBox(width: 10),
                  BuildList(label: "Vegetais", text: "Alguma coisa"),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Biotipos",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  BuildList(label: "Ectomorfo", text: "Alguma coisa"),
                  SizedBox(width: 10),
                  BuildList(label: "Endomorfo", text: "Alguma coisa"),
                  SizedBox(width: 10),
                  BuildList(label: "Mesomorfo", text: "Alguma coisa"),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: BuildScrollBar(label: "Teste ${index}"),
                    )),
          ),
        ],
      ),
    );
  }
}
