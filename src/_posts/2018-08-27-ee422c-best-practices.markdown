---
layout: post
title:  "Useful tools for Java Development"
date:   2018-08-27 22:26:50 -0500
categories: blog
---
As a former student of this course, I wanted to share with you some of the other tools I used to perform well.  

My first and foremost recommendation is that you use Git as a version control system for your projects. Git allows you to keep a historical log of all changes made to a project (among many other features), which is helpful when you make a project-breaking change and need to revert! Here is a good tutorial if you are not yet familiar with Git and would like to learn how to use it.

As students, we are all eligible to use the [GitHub Starter Pack][github-starter-home], which includes a free premium membership to GitHub with private repositories. If you are going to host your projects on GitHub, it is **mandatory** that you use private repositories.

As with any project, it is essential that you thoroughly test your code to ensure it is bug-free. Luckily, there are many libraries in Java that help you do so programmatically, however the most popular is by far JUnit. JUnit allows you to write functions that can call into your project code and ensure that the return values are as expected.

The return values may then be checked using methods in the `Assert` class. The most common methods are `Assert.assertEquals(x, y)` which tests if `x` equals `y`, and `Assert.assertTrue(x)`, which, as the name implies, passes if `x` is `true`.

To demonstrate, here is a simple class:

{% highlight java %}
// Solution.java
public class Solution {
    
    /**
    * Performs addition on x and y
    * @param x first operand
    * @param y second operand
    * @returns sum of x and y
    */
    public static int add(int x, int y) {
        return x - y;   // Pretty obvious bug
    }
}
{% endhighlight %}

And it's respective test case:
{% highlight java %}
// SolutionTest.java
import org.junit.*;

public class SolutionTest {

    @Test
    public void testAdd() {
        int expected = 4;
        int observed = Solution.add(2, 2);
    
        Assert.assertEquals(expected, observed);    // Fails! 4 != 0
    }
}
{% endhighlight %}

Another tool that helped me organize my projects is Apache Maven. Maven is a platform/IDE-independent Java project format, which can also be exercised through the command line. The main component to a Maven project is the Project-Object-Model file (pom.xml), which describes how to compile, test, and package your project. Here is what the structure of that project may look like:

{% highlight bash %}
oupton@andromeda$ tree .
.
├── pom.xml
└── src
    ├── main
    │   └── java
    │       └── assignment1
    │           └── App.java
    └── test
        └── java
            └── assignment1
                └── AppTest.java
{% endhighlight %}

In a Maven project, all of the project code sits in the `src/main/java` tree, whereas your test cases are stored in the `src/test/java` tree. 

If you want to test your code after making some changes, run `mvn test` at the root directory of the project, and your code will be automatically compiled and the JUnit tests you wrote will be exercised. If there are any issues, the build will fail and will print out the error.

[darwin-jdk-install]: https://docs.oracle.com/javase/8/docs/technotes/guides/install/mac_jdk.html
[linux-jdk-install]: http://openjdk.java.net/install/
[win32-jdk-install]: https://docs.oracle.com/javase/8/docs/technotes/guides/install/windows_jdk_install.html
[eclipse-home]: https://www.eclipse.org/downloads/
[intellij-home]: https://www.jetbrains.com/idea/
[vscode-home]: https://code.visualstudio.com/
[github-starter-home]: https://education.github.com/pack