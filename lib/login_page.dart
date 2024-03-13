import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // 로고나 타이틀을 위한 공간
                FlutterLogo(size: 100),
                SizedBox(height: 40),
                // 사용자 이름 입력 필드
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: '사용자 이름',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 20),
                // 비밀번호 입력 필드
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 40),
                // 로그인 버튼
                ElevatedButton(
                  child: Text('로그인'),
                  onPressed: () {
                    // 로그인 로직 처리
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // 배경색 설정
                      foregroundColor: Colors.white, // 글자색 설정
                      padding: EdgeInsets.symmetric(vertical: 15)
                  ),
                ),
                SizedBox(height: 20),
                // 회원가입 버튼 또는 텍스트
                TextButton(
                  child: Text('회원가입'),
                  onPressed: () {
                    // 회원가입 페이지로 이동
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
