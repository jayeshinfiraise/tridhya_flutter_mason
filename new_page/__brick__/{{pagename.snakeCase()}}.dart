import "package:flutter/material.dart";

{{#isStateless}}
class {{pagename.pascalCase()}} extends StatelessWidget {
  const {{pagename.pascalCase()}}({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("{{pagename}}",),),
    );
  }
}
{{/isStateless}}
{{^isStateless}}
class {{pagename.pascalCase()}} extends StatefulWidget {
  const {{pagename.pascalCase()}}({Key? key}) : super(key: key);
  @override
  State<{{pagename.pascalCase()}}> createState() => _{{pagename.pascalCase()}}State();
}
class _{{pagename.pascalCase()}}State extends State<{{pagename.pascalCase()}}> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text("{{pagename}}",),),
    );
  }
}
{{/isStateless}}