import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon_model.dart';
import 'package:pokemon/service/get_pokemon_service.dart';
import 'package:pokemon/view/volador.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: GetPokemonService.getPokemon(),
      builder: ((context, AsyncSnapshot<PokemonModel> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        } else {
          return SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 31),
                        child: Image.asset("asset/logo.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.1),
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
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.2, crossAxisCount: 2),
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return Volador(
                              image: Image.network(
                                snapshot.data!.pokemon[index].img.toString(),
                                scale: 0.5,
                              ),
                            );
                          })));
                        },
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 40,
                                right: 10,
                                left: 10,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return Volador(
                                      image: Image.network(
                                        snapshot.data!.pokemon[index].img
                                            .toString(),
                                        scale: 0.5,
                                      ),
                                    );
                                  })));
                                },
                                child: Container(
                                  width: 177,
                                  height: 125.18,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfFFC7CFF),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 8,
                              child: Column(
                                children: [
                                  Image.network(snapshot
                                      .data!.pokemon[index].img
                                      .toString()),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 15,
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 15),
                                      height: 27.42,
                                      width: 154,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff676767),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                              "#${snapshot.data!.pokemon[index].num.toString()}",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xffF993FB))),
                                          Text(
                                              snapshot.data!.pokemon[index].name
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    itemCount: (snapshot.data!.pokemon.length),
                  ),
                ),
              ],
            ),
          );
        }
      }),
    ));
  }
}
