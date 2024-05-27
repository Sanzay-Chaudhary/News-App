import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/utils/dummy_constraint.dart';
import 'package:news_app/features/enviroment/esewa_payment/esewa_payment.dart';
import 'package:news_app/features/enviroment/model/categorylist.dart';
import 'package:news_app/features/enviroment/viewModel/enviro_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EnvironmentProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: EnviromentPage(),
      ),
    );
  }
}

class EnviromentPage extends StatefulWidget {
  const EnviromentPage({super.key});

  @override
  State<EnviromentPage> createState() => _EnviromentPageState();
}

class _EnviromentPageState extends State<EnviromentPage> {
  final DummyData _dummyData = DummyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/detail_page");
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          style: TextStyle(color: Colors.black, fontSize: 20),
          "Happy Reading",
        ),
        centerTitle: true,
        actions: [
          ElevatedButton(
              onPressed: () => EsewaService().useEsewa(),
              child: const Text("esewa")),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                    "https://images.unsplash.com/photo-1594794637446-96206da170be?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z3JlZW4lMjBtb3VudGFpbnxlbnwwfHwwfHx8MA%3D%3D",
                    height: 170,
                    fit: BoxFit.cover,
                    width: double.infinity),
                Positioned(
                  top: 30,
                  right: 10,
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/enviroment_page");
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      child: const Text("Enviroment",
                          style: TextStyle(color: Colors.green, fontSize: 10))),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Collapse of a mountain peak in Austria amid thawing permafrost triggers a huge rockfall",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Consumer<EnvironmentProvider>(
              builder: (context, value, _) {
                return Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        value.increment();
                      },
                      icon: const Icon(Icons.check),
                      color: Colors.black,
                    ),
                    Text('Counter: ${value.counter}'),
                  ],
                );
              },
            ),
            CategoryListTile(
              informationModel: _dummyData.informationList[0],
            ),
            const SizedBox(height: 5),
            const Text(
                "Part of the summit of a mountain in the Austrian state of Tyrol has collapsed , sending more than 100,000 cubic meters of rock crashing into the valley beow and triggering mudslides"),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Rocks started falling Sunday from Fluchthorn, a nearly 3,400 meter (11,155 foot) mountain in the Silvretta Alps on the border between Switzerland and Austria, in an incident state geologists have said was caused by thawing permafrost.",
              style:
                  TextStyle(color: Colors.green, fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "In a reconnaissance flight over the affected area, state geologists made initial assessments of the amount of fallen rock, but they say these may well be conservative as it will take time to get a more accurate picture."),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "“This is a relatively large incident, we’re talking about at least 100,000 cubic meters (around 3.5 million cubic foot) of rock that has fallen off, likely more than that,” said Thomas Figl, a state geologist, in a video produced by the Tyrolean state government."),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "The geologists have pinned the collapse on the thawing of permafrost, a long-term frozen layer of soil and rocks. Most often associated with Arctic regions, permafrost is also found high in the European Alps."),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "“We can be relatively sure about the cause of this incident: permafrost. The ice is the glue of the mountains and that ice has been thawing over a long period of time due to climate change. That then causes the results that we see here,” Figl said."),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "When permafrost thaws it can have a destabilizing effect, said Marcia Phillips, permafrost research group leader at the WSL Institute for Snow and Avalanche Research in Switzerland."),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "“Water can penetrate deep into rock masses through newly opened clefts, which were previously plugged with permafrost ice,” she told CNN, explaining that this can lead rocks to fracture."),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "There isn’t enough data to say whether rockfalls have increased in recent years, as it is usually only large events that are well-documented, said Phillips. Scientists rely on information from the public, she added, and many rockfalls happen in remote areas."),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "But, as human-caused climate change pushes up global temperatures, leading to thawing permafrost and melting snow and glaciers, rockfalls in this region look set to become more common."),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "“Along with rising permafrost temperatures, loss of ice and higher ground water contents we expect an increase in slope movements and rockfalls at elevations where permafrost is found in the Alps,” Phillips said."),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "Rockfalls can cause huge disruption to those living in the shadows of these mountains."),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "In May, the residents of the Swiss village of Brienz, in the region of Graubünden near Davos, were forced to evacuate after warnings that their homes could be crushed by nearly 2 million cubic meters of rocks falling from the mountain above it."),
            const SizedBox(
              height: 10,
            ),
            Text(_dummyData.informationList[0].category ?? ""),
          ],
        ),
      ),
    );
  }
}
