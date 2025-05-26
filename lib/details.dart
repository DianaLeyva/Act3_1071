import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.idEmpleado,
    required this.nombre,
    required this.puesto,
    required this.salario,
    required this.fechaContratacion,
    required this.departamento,
  });

  final String idEmpleado;
  final String nombre;
  final String puesto;
  final String salario;
  final String fechaContratacion;
  final String departamento;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Empleado"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildListTile(Icons.badge_outlined, "ID Empleado", idEmpleado),
            _buildListTile(Icons.person_outline, "Nombre", nombre),
            _buildListTile(Icons.work_outline, "Puesto", puesto),
            _buildListTile(Icons.attach_money_outlined, "Salario", salario),
            _buildListTile(Icons.date_range, "Fecha Contratación", fechaContratacion),
            _buildListTile(Icons.apartment_outlined, "Departamento", departamento),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title, String subtitle) {
    return ListTile(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1.0, color: Colors.grey.shade300),
      ),
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      subtitle: Text(subtitle),
    );
  }
}
