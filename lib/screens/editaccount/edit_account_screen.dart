import 'package:flutter/material.dart';
import 'package:porissotoquebrado/models/user.dart';

class EditAccountScreen extends StatefulWidget {
  @override
  _EditAccountScreenState createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  final User _user = User(name: 'Guil');

  @override
  Widget build(BuildContext context) {
    InputDecoration _buildDecoration(String label) {
      return InputDecoration(
        labelText: label,
        contentPadding: const EdgeInsets.only(left: 16, bottom: 8, top: 8),
      );
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Text(
          'Editar Conta',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          TextFormField(
            initialValue: _user.name,
            decoration: _buildDecoration('Nome *'),
            validator: (name) {
              if (name.length < 6) return 'Nome inválido';
              return null;
            },
            onSaved: (name) {},
          ),
          TextFormField(
            obscureText: true,
            decoration: _buildDecoration('Nova senha'),
            validator: (pass) {
              if (pass.isEmpty) return null;
              if (pass.length < 6) return 'Senha muito curta';
              return null;
            },
            autovalidate: true,
          ),
          TextFormField(
            obscureText: true,
            decoration: _buildDecoration('Repita nova senha'),
            validator: (pass) {
              if (pass.isEmpty) return null;
              if (pass.length < 6) return 'Senha muito curta';
              return null;
            },
            autovalidate: true,
          ),
        ],
      ),
    );
  }
}
