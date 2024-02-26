import 'package:quantum_muscle_website/library.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final nameController = TextEditingController();
    final messageController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints(maxWidth: 600),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                QmTextField(
                  controller: emailController,
                  hintText: 'Email',
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ).animate().fade(
                      duration: HomeConstants.mainDuration,
                      curve: Curves.easeInOutCubic,
                    ),
                QmGap.vMedium(),
                QmTextField(
                  controller: nameController,
                  hintText: 'Name',
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ).animate().fade(
                      delay: HomeConstants.mainDuration,
                      duration: HomeConstants.mainDuration,
                      curve: Curves.easeInOutCubic,
                    ),
                QmGap.vMedium(),
                QmTextField(
                  controller: messageController,
                  hintText: 'Message',
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a message';
                    }
                    return null;
                  },
                ).animate().fade(
                      delay: HomeConstants.mainDuration * 2,
                      duration: HomeConstants.mainDuration,
                      curve: Curves.easeInOutCubic,
                    ),
                QmGap.vMedium(),
                SizedBox(
                  width: double.infinity,
                  child: QmButton.text(
                    text: 'Send',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // Send email logic here
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Email sent successfully'),
                          ),
                        );
                        emailController.clear();
                        nameController.clear();
                        messageController.clear();
                      }
                    },
                  ),
                ).animate().fade(
                      delay: HomeConstants.mainDuration * 3,
                      duration: HomeConstants.mainDuration,
                      curve: Curves.easeInOutCubic,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
