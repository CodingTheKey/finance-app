import 'package:finance_app/components/button.dart';
import 'package:finance_app/components/input/input.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static const double radii = 10;
  final DocMask = MaskTextInputFormatter(
      mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Registre-se',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Faça login ou registre-se para aproveitar do melhor ds métodos de ensino',
                style: TextStyle(color: Colors.grey[600]),
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              const InputWidget(
                placeholder: 'Digite seu email',
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              Row(
                children: [
                  InputWidget(
                    placeholder: 'CPF',
                    inputFormatters: [DocMask],
                    width: MediaQuery.of(context).size.width / 2.37,
                  ),
                  const Padding(padding: EdgeInsets.all(7.0)),
                  InputWidget(
                    placeholder: 'Data de nascimento',
                    width: MediaQuery.of(context).size.width / 2.37,
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              const InputWidget(
                placeholder: 'Digite sua senha',
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              const InputWidget(
                placeholder: 'Confirmar sua senha',
              ),
              const Padding(padding: EdgeInsets.all(4.0)),
              const Text('esqueceu a senha?'),
              const Padding(padding: EdgeInsets.all(12.0)),
              ButtonWidget(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                title: 'Entrar',
              ),
            ]),
      ),
    );
  }
}
