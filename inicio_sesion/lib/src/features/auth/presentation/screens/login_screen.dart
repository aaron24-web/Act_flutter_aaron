import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/login_cubit.dart';
import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Inicio de Sesión'),
        ),
        body: const Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: _LoginForm(),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _submitForm() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (isValid) {
      context.read<LoginCubit>().login(
            _emailController.text,
            _passwordController.text,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          _emailController.clear();
          _passwordController.clear();
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('¡Inicio de sesión exitoso!')),
            );
          // Aquí se realizaría la navegación a la pantalla principal.
          // Navigator.of(context).pushReplacementNamed('/home');
        } else if (state is LoginFailure) {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: const Text('Error de inicio de sesión'),
              content: Text(state.message),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(ctx).pop(),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      },
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              controller: _emailController,
              labelText: 'Correo Electrónico',
              prefixIcon: const Icon(Icons.email),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, ingrese su correo.';
                }
                return null;
              },
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_passwordFocusNode);
              },
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: _passwordController,
              focusNode: _passwordFocusNode,
              labelText: 'Contraseña',
              prefixIcon: const Icon(Icons.lock),
              obscureText: true,
              textInputAction: TextInputAction.done,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, ingrese su contraseña.';
                }
                return null;
              },
              onFieldSubmitted: (_) => _submitForm(),
            ),
            const SizedBox(height: 24),
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                final isLoading = state is LoginLoading;
                return ElevatedButton(
                  onPressed: isLoading ? null : _submitForm,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: isLoading
                      ? SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.onPrimary,
                            strokeWidth: 3,
                          ),
                        )
                      : const Text('Ingresar'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
