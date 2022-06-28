import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vector;
import 'package:f_access/typo/typo_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: (248 - _scrollPosition).clamp(64, 248),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 328),
              child: Image.asset("assets/images/banner.png"),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          constraints: const BoxConstraints(maxHeight: 96),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(width: 16, color: Colors.white),
              bottom: BorderSide(width: 16, color: Colors.white),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("Hey Sarah!",
                  style: TextStyle(fontSize: 20, color: TypoColors.black2)),
              const SizedBox(width: 16),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: TypoColors.gradientMain,
                        borderRadius: BorderRadius.circular(32)),
                    constraints: const BoxConstraints(
                      minHeight: 64,
                      minWidth: 64,
                    ),
                  ),
                  Container(
                    height: 52,
                    width: 52,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.black),
                  ),
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) =>
                        TypoColors.gradientMain.createShader(bounds),
                    child: const Icon(Icons.mic_rounded, size: 32),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: NotificationListener<ScrollUpdateNotification>(
          onNotification: (notification) {
            setState(() {
              _scrollPosition = notification.metrics.pixels;
            });
            return true;
          },
          child: ListView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              Container(
                color: Colors.redAccent,
                height: _scrollPosition.clamp(0, 248 - 64),
              ),
              Wrap(
                runSpacing: 16,
                children: const [
                  HelpButton(
                    icon: Icons.security_rounded,
                    title: "CTEPO",
                    description: "Pedir ajuda da policia.",
                  ),
                  HelpButton(
                    icon: Icons.emergency_rounded,
                    title: "CARGY",
                    description: "Chamar ambulância.",
                  ),
                  HelpButton(
                    icon: Icons.fire_truck_rounded,
                    title: "CFIRE",
                    description: "Chamar corpo de bombeiros.",
                  ),
                  HelpButton(
                    icon: Icons.directions_bus_rounded,
                    title: "POBUS",
                    description: "Checar se o ônibus está chegando.",
                  ),
                  HelpButton(
                    icon: Icons.compare_rounded,
                    title: "OBJID",
                    description: "Identificar um objeto com a câmera.",
                  ),
                  HelpButton(
                    icon: Icons.my_location_rounded,
                    title: "LATIO",
                    description:
                        "Saber aonde ir, onde está, locais próximos, etc.",
                  ),
                  HelpButton(
                    icon: Icons.security_rounded,
                    title: "CTEPO",
                    description: "Pedir ajuda da policia.",
                  ),
                  HelpButton(
                    icon: Icons.emergency_rounded,
                    title: "CARGY",
                    description: "Chamar ambulância.",
                  ),
                  HelpButton(
                    icon: Icons.fire_truck_rounded,
                    title: "CFIRE",
                    description: "Chamar corpo de bombeiros.",
                  ),
                  HelpButton(
                    icon: Icons.directions_bus_rounded,
                    title: "POBUS",
                    description: "Checar se o ônibus está chegando.",
                  ),
                  HelpButton(
                    icon: Icons.compare_rounded,
                    title: "OBJID",
                    description: "Identificar um objeto com a câmera.",
                  ),
                  HelpButton(
                    icon: Icons.my_location_rounded,
                    title: "LATIO",
                    description:
                        "Saber aonde ir, onde está, locais próximos, etc.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HelpButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const HelpButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        print("Tapped");
      },
      child: Container(
        width: double.infinity,
        height: 96,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: TypoColors.black6,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) =>
                    TypoColors.gradientMain.createShader(bounds),
                child: Icon(icon, size: 64),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: TypoColors.black2,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 15,
                        color: TypoColors.black3,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
