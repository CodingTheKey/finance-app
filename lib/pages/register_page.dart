import 'package:finance_app/components/button.dart';
import 'package:finance_app/components/go_back_title.dart';
import 'package:finance_app/components/input/input.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String email = '';
  String password = '';
  String confirmPassword = '';
  String doc = '';
  String birthDate = '';

  @override
  void initState() {
    super.initState();
  }

  void _createClient(context) async {
    try {
      if (password != confirmPassword) {
        throw Exception('Senhas devem ser iguais');
      }
      final _future = await Supabase.instance.client.auth.signUp(
          email: email,
          password: password,
          data: {'doc': doc, 'birthDate': birthDate});
      Navigator.pushNamed(context, '/home');
    } catch (error) {
      final message = error.toString();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('$message'),
      ));
    }
  }

  final DocMask = MaskTextInputFormatter(
      mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});

  final BirthDateMAsk = MaskTextInputFormatter(
      mask: "##/##/####", filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GoBackTitleWidget(title: email),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Faça login ou registre-se para aproveitar do melhor ds métodos de ensino',
                style: TextStyle(color: Colors.grey[600]),
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              InputWidget(
                placeholder: 'Digite seu email',
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              Row(
                children: [
                  InputWidget(
                    placeholder: 'CPF',
                    inputFormatters: [DocMask],
                    width: MediaQuery.of(context).size.width / 2.37,
                    onChanged: (value) {
                      doc = value;
                    },
                  ),
                  const Padding(padding: EdgeInsets.all(7.0)),
                  InputWidget(
                    placeholder: 'Data de nascimento',
                    inputFormatters: [BirthDateMAsk],
                    width: MediaQuery.of(context).size.width / 2.37,
                    onChanged: (value) {
                      birthDate = value;
                    },
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              InputWidget(
                placeholder: 'Digite sua senha',
                onChanged: (value) {
                  password = value;
                },
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              InputWidget(
                placeholder: 'Confirmar sua senha',
                onChanged: (value) {
                  confirmPassword = value;
                },
              ),
              const Padding(padding: EdgeInsets.all(12.0)),
              ButtonWidget(
                onPressed: () {
                  _createClient(context);
                },
                title: 'Entrar',
              ),
            ]),
      ),
    );
  }
}
