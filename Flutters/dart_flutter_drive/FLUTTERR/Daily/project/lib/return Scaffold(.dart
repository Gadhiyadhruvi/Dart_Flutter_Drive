 return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 27, 30),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/question.png'),
            ),
            // CircularProgressIndicator(),
            Container(
              child: SizedBox(
                height: 15,
              ),
            ),
            LinearProgressIndicator(),
            Container(
              child: Image.asset('assets/images/loading.png'),
            )
          ],
        ),
      ),
    );