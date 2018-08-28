---
layout: post
title:  "Welcome to EE 422C!"
date:   2018-08-27 22:25:50 -0500
categories: blog
---
Hello and welcome to EE 422C for the Fall 2018 semester, taught by Dr. Vallath Nandakumar. My name is Oliver and I am one of the undergraduate TA's for the course. Throughtout the semester, I will make a series of blog posts with some best practices that will help you succeed in this course.

Since the language used to teach this course is Java, our first order of business is to set up your development environment. For this, you will need the Java Development Kit (JDK) and an Integrated Development Environment (IDE).

For this course, you will need to have the Java JDK version 1.8. Below you will find links on how to install Java JDK 1.8 for your operating system of choice.
- [macOS][darwin-jdk-install]
- [Linux][linux-jdk-install]
- [Windows][win32-jdk-install]

After you've installed Java, you should check to make sure that everything is configured correctly. Open up a terminal window (or Command Prompt on Windows) and run the following commands:

{% highlight bash %}
java -version       # Ensure version number is 1.8.*
javac -version      # Ensure version number is 1.8.*
{% endhighlight %}

If your installation of Java was successful, you can now install an IDE. The recommended IDE for this course is Eclipse as it will be used by your instructor, however you can use any of your choosing. Below are some links to IDEs that I enjoy using.
- [Eclipse][eclipse-home]
- [IntelliJ IDEA CE][intellij-home]
- [Visual Studio Code][vscode-home]

I hope that this helps you get set up, and I will send out more guides soon to help you with this course. If you encounter difficulties with any of these procedures, then don't hesitate to reach out to me or any of the TA's and we will gladly help.

[darwin-jdk-install]: https://docs.oracle.com/javase/8/docs/technotes/guides/install/mac_jdk.html
[linux-jdk-install]: http://openjdk.java.net/install/
[win32-jdk-install]: https://docs.oracle.com/javase/8/docs/technotes/guides/install/windows_jdk_install.html
[eclipse-home]: https://www.eclipse.org/downloads/
[intellij-home]: https://www.jetbrains.com/idea/
[vscode-home]: https://code.visualstudio.com/