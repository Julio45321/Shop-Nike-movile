import 'package:flutter/material.dart';

import 'Home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            // Logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('lib/images/logonike.png',
              height: 100,),
            ),
            
            const SizedBox(height: 48,),
              
            //Titulo
            const Text(
              'Just Do It',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
              
            const SizedBox(height: 24,),
            
              
            //Subtitulo
          const Text('Nuevos Modelos y Dale un toque diferente a tus Nike',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey
          ),
          textAlign: TextAlign.center,
          ),
               
            const SizedBox(height: 48,),
          // Boton de inicio 
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),
            )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(25),
              child: const Center(
                child: Text(
                'Comprar Ahora',
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
                ),
                ),
                
              ),
          
            ),
          ),






            ]
          ),
        ),
      ),
    );
  }
}
