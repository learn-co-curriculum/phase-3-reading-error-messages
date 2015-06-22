# Ruby Lecture: Introduction - Reading Error Messages



## Objectives

1. Understand how to read error messages.
2. Practice fixing some common errors.
3. Practice using the `learn` command in your terminal to run the tests for a lab.
4. Practice submitting a lab. 

## Video Lecture

[MP4](http://flatiron-videos.s3.amazonaws.com/ironboard/ruby/ruby-lecture-reading-error-messages/ruby-lecture-reading-error-messages.mp4)

<video controls width="100%">
  <source src="http://flatiron-videos.s3.amazonaws.com/ironboard/ruby/ruby-lecture-reading-error-messages/ruby-lecture-reading-error-messages.mp4" type="video/mp4" >
    This video is best enjoyed on Learn.co.
</video>

## Reading Error Messages from Tests

We've designed this lab so that both running the files *and* running the test suite via the `learn` command will show you the error messages for you to decode. Moving forward, you'll be reading error messages mainly through running the test suite. 

### What is a test suite?

The tests for each lab will be found inside the `spec` directory of that lab. Tests are programs, written using the Rspec testing library, that are written to make sure your program is running properly. Generally, tests will call on the methods you define in your programs and check to see if they are working the way they are expected to. 

In the future, you will learn how to read tests more thoroughly and even how to write your own tests. For now, all you need to understand is that the code in the `spec` directory is there to test the code in your program. When you run the `learn` or the `rspec` command in your terminal in the directory of the lab you are working on, the runs the code in your `spec` file and tests your program. The output that appears in your terminal is the result of running those tests. If you pass a test, the output will generally appear green, otherwise, it will appear red and be accompanied by the types of error messages that we're discussing in this Readme. Paying attention to those error messages will help you to pass the test. 

This is just a brief introduction to reading errors as a result of running your test suite, we'll be taking a much closer look coming up. 

## Summary

Error messages have 3 parts:

```
lib/a_name_error.rb:3:in `<main>': undefined local variable or method `hello_world' for main:Object (NameError)
```

The first part is the location of the error. The Where.

```
lib/a_name_error.rb:3:in `<main>':
```

`lib/a_name_error.rb` is the file the error occurred in.

`3` is the line of code the error.

`<main>` is the scope of the error.

The next part of the error is the description. The Why.

```
undefined local variable or method `hello_world' for main:Object
```

The interpreter does the best job it can to tell you what it thinks went wrong.

Finally, the interpreter tells us the type of error. The Who.

```
(NameError)
```

This is a [Ruby Error Type](http://www.ruby-doc.org/core-2.2.0/Exception.html)

You've solved games of Clue with less information. This is my favorite part of programming, debugging, fixing errors. It's like you're a detective solving a crime. The only bad thing is that more often than not, you're also the criminal that caused the error in the first place.

Errors are clues, reading them is the interpreter telling you what to do to fix the program and move on.

Have fun!


## Lab

STOP. If you haven't watched the above video, you are making life much harder for yourself! Watch the video lecture above before attempting this lab : ) 

Did you watch it? Okay, great. Let's proceed.  

1. Fork and clone this lab down onto your computer. 

2. Run each of the files in the `lib` directory using the `ruby` command.

* From the directory you cloned this lab, try: `ruby lib/a_division_by_zero_error.rb` to run that program. You should get output about an error in the program. Read the error message and open that file in Sublime and see if you can fix the error. When the error is fixed and you run the file via `ruby`, you'll simply see no output at all, no errors or anything. Confirm this by running the `learn` command and seeing that you have a passing test and 3 remaining failures.

* Run each file via `ruby lib/<file name>`, fix the errors, and confirm with `learn` until your done and all the tests pass. Pay attention to the filenames in `lib` if you need hints for what kind of error to look for.

3.Once your code is passing with the `learn` command, in your command line run:

* `git status`, to see all of the files you changed
* `git add .`, to stage your changes
* `git commit`
* `git push` to push your changes up to your fork of this lab
* Open a pull request, across forks, between your master branch and the master branch of the repo from which you forked it. 

Feel proud, being able to read an error message and fix it, no matter how basic, is a huge step in being a programmer. Get comfortable with broken, it's totally normal in code.
