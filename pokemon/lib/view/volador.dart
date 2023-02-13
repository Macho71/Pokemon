import 'package:flutter/material.dart';

class Volador extends StatefulWidget {
  Volador({super.key, required this.image});
  Image image;
  @override
  State<Volador> createState() => _VoladorState();
}

class _VoladorState extends State<Volador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: false,
        child: SizedBox(
          height: 1000,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 34),
                        child: Image.asset("asset/logo.png")),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 250,
                            child: TextFormField(
                              showCursor: false,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintText: "Buscar Pokemon",
                                  filled: true,
                                  fillColor: const Color(0xffE5E5E5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none,
                                  )),
                              onChanged: (String userInput) {},
                            ),
                          ),
                          const Image(image: AssetImage("asset/filtr.png"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "#006",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 223, 68, 225)),
                            ),
                            SizedBox(
                              width: 240,
                            ),
                            Text(
                              "Charizard",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 15),
                          child: Container(
                            height: 210,
                            width: 400,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 223, 68, 225),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 20, left: 90),
                            child: widget.image),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 45,
                            width: 180,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 247, 187, 7),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Text(
                                "Fuego",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 180,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 68, 165, 244),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Text(
                                "Volador",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 291,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 223, 68, 225),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      "Altura",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "1,7 m",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      "Peso",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "90.5 kg",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Text(
                                      "Habilidades",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Mar Llamas",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      "Categoría",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(
                                      "Llama",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const Text(
                                      "Sexo",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: const [
                                        Image(image: AssetImage("asset/2.png")),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Image(image: AssetImage("asset/1.png"))
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Debilidad",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.circle,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Agua",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.circle,
                                          color: Colors.yellow,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Electricidad",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.circle,
                                          color:
                                              Color.fromARGB(255, 167, 155, 47),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Roca",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 150, left: 190),
                          child: Image(image: AssetImage("asset/3.png")),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
