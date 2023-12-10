import 'package:flutter/material.dart';
import 'package:nahal_it/home_screen.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controler = PageController();
  final TextEditingController _searchControler = TextEditingController();

  List<String> filteredData = [];
  List<String> title = [
    "اموزش وردپرس",
    "ثبت سفارش",
    "پریمر",
    "طراحی سایت",
    "اپلیکیشن",
    "سئو",
    "ui/ux",
    "پروشور",
    "پوستر",
    "کاتالوگ",
    "لوگو",
    "کارت ویزیت",
  ];

  @override
  void initState() {
    super.initState();
    filteredData = title;
  }

  void _filterData(String query) {
    setState(() {
      filteredData = title
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    //  final cart = Provider.of<CartProvider>(context);
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        //  appBar: newMethod(size),

        appBar: AppBar(
          toolbarHeight: 80,
          title: SizedBox(
            height: 40,
            child: TextField(
              onChanged: _filterData,
              controller: _searchControler,
              decoration: const InputDecoration(
                hintText: 'Search',
                label: Icon(Icons.search_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: filteredData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(filteredData[index]),
              );
            }),
      ),
    );
  }
}
