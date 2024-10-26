import 'package:flutter/material.dart';
import 'package:flutter_application_1/fechamento.dart';
import 'package:flutter_application_1/gastos.dart';
import 'package:flutter_application_1/fornecedor.dart';
import 'package:flutter_application_1/troca.dart';

class RELATORIO2 extends StatefulWidget {
  const RELATORIO2({super.key});

  @override
  _RELATORIO2State createState() => _RELATORIO2State();
}

class _RELATORIO2State extends State<RELATORIO2> {
  bool _isExpanded = false; // Estado para controlar a expansão da AppBar

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded; // Alterna o estado de expansão
    });
  }

  void _navigateToGastos() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Gastos()),
    );
  }

  void _navigateToFornecedor() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const fornecedor()),
    );
  }

  void _navigateToFechamento() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const fechamento()),
    );
  }

  void _navigateToTroca() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TROCA()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF393636),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'RELATÓRIO',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF20805F),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: _toggleExpansion,
        ),
      ),
      body: Column(
        children: [
          if (_isExpanded)
            Container(
              color: const Color(0xFF20805F),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: _navigateToGastos,
                    child: const Text('GASTOS', style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: _navigateToFornecedor,
                    child: const Text('FORNECEDOR', style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: _navigateToFechamento,
                    child: const Text('FECHAMENTO', style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: _navigateToTroca,
                    child: const Text('TROCA', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(8.0)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "DIA",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF20805F), width: 2),
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          fixedSize: const Size(100, 50),
                          backgroundColor: const Color.fromARGB(255, 83, 79, 79),
                        ),
                        child: const Text(
                          "TODOS",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Table(
                    children: [
                      TableRow(
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.white, width: 2.0)),
                          color: Color.fromARGB(255, 83, 79, 79),
                        ),
                        children: [
                          Container(
                            width: 100,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text("12,00", style: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text("20,00", style: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text("TOTAL", style: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text("HORA", style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 410,
                    height: 300,
                    color: const Color.fromARGB(255, 83, 79, 79),
                  ),
                  Table(
                    children: [
                      TableRow(
                        decoration: const BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.white, width: 2.0)),
                          color: Color.fromARGB(255, 83, 79, 79),
                        ),
                        children: [
                          Container(
                            child: null,
                          ),
                          Container(
                            child: null,
                          ),
                          Container(
                            child: null,
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text("TOTAL", style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}