import 'package:flutter/material.dart';
import 'details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _idEmpleadoController = TextEditingController();
  final _nombreController = TextEditingController();
  final _puestoController = TextEditingController();
  final _salarioController = TextEditingController();
  final _fechaContratacionController = TextEditingController();
  final _departamentoController = TextEditingController();

  @override
  void dispose() {
    _idEmpleadoController.dispose();
    _nombreController.dispose();
    _puestoController.dispose();
    _salarioController.dispose();
    _fechaContratacionController.dispose();
    _departamentoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text("Formulario Empleado"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idEmpleadoController,
              fieldName: "ID Empleado",
              myIcon: Icons.badge_outlined,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre",
              myIcon: Icons.person_outline,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _puestoController,
              fieldName: "Puesto",
              myIcon: Icons.work_outline,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _salarioController,
              fieldName: "Salario",
              myIcon: Icons.attach_money_outlined,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _fechaContratacionController,
              fieldName: "Fecha Contratación",
              myIcon: Icons.date_range,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _departamentoController,
              fieldName: "Departamento",
              myIcon: Icons.apartment_outlined,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
              onPressed: () {
                Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Details(
      idEmpleado: _idEmpleadoController.text,
      nombre: _nombreController.text,
      puesto: _puestoController.text,
      salario: _salarioController.text,
      fechaContratacion: _fechaContratacionController.text,
      departamento: _departamentoController.text,
    ),
  ),
);

              },
              child: const Text(
                "Enviar",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  const MyTextField({
    super.key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple.shade300),
        ),
        labelStyle: const TextStyle(color: Colors.deepPurple),
      ),
    );
  }
}
