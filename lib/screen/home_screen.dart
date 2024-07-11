import 'package:tst/models/transaction.dart';
import 'package:tst/widgets/menu_box.dart';
import 'package:tst/widgets/transaction_detail.dart';
import 'package:tst/widgets/transaction_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'E-Wallet',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: AuthScreen(),
//     );
//   }
// }

// class AuthScreen extends StatefulWidget {
//   @override
//   _AuthScreenState createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   bool _isAuthenticated = false;

//   void _login() {
//     setState(() {
//       _isAuthenticated = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _isAuthenticated ? HomeScreen() : LoginPage(onLogin: _login);
//   }
// }

// class LoginPage extends StatefulWidget {
//   final VoidCallback onLogin;

//   const LoginPage({Key? key, required this.onLogin}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();

//   void _login() {
//     if (_formKey.currentState!.validate()) {
//       widget.onLogin();
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter valid credentials')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('E-Wallet Login'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextFormField(
//                 controller: _usernameController,
//                 decoration: InputDecoration(labelText: 'Username'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your username';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(labelText: 'Password'),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your password';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _login,
//                 child: Text('Login'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
             Colors.blue.shade800,
             Colors.white60,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.blueGrey,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage('https://picsum.photos/seed/picsum/20/20'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hallo,",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Deri Afandi",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      Positioned(
                        top:0.0,
                        right: 0.0,
                        child:  Icon(
                          Icons.brightness_1,
                          size: 0.0,
                          color: Colors.redAccent,
                          ),
                      )
                    ],
                  ),
                  onPressed: () {},
                  ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: Column(
              children: const [
                Text(
                  "Saldo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "∞",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                MenuWidget(
                  icon: Icons.send_rounded, 
                  text: "Kirim",
                ),
                MenuWidget(
                  icon: Icons.account_balance_wallet, 
                  text: "Terima",
                ),
                MenuWidget(
                  icon: Icons.payment, 
                  text: "Bayar",
                ),
                MenuWidget(
                  icon: Icons.more_horiz_rounded, 
                  text: "Lihat Semua",
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 25,
                  ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            "Transaksi Terakhir",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF3D538F),
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(context: context,
                             isScrollControlled: true,
                             builder: (BuildContext ctx){
                              return const DetailTransactionScreen();
                             },
                             );
                          },
                          child: const Text('Lihat Semua',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF3D538F),
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return TransactionItem(transaction: transactions[index],
                      );
                    },
                    itemCount: transactions.length,
                    ),
                  ),
                ],
                ),
            ),
          ),

        ],
        ),
      ),
    );
  }
}