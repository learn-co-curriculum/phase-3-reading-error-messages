---
tags: introduction, error messages, lecture
language: ruby
type: video, lab
---

# Ruby Lecture: Introduction - Reading Error Messages

[MP4](http://flatiron-videos.s3.amazonaws.com/ironboard/ruby/ruby-lecture-reading-error-messages/ruby-lecture-reading-error-messages.mp4)

<video controls width="100%">
  <source src="http://flatiron-videos.s3.amazonaws.com/ironboard/ruby/ruby-lecture-reading-error-messages/ruby-lecture-reading-error-messages.mp4" type="video/mp4" >
    This video is best enjoyed on Learn.co.
</video>

## Objectives

1. Running ruby programs.
2. Reading error messages.
3. Fixing common errors.
4. Running the `learn` command.
5. Submitting a lab to Learn.

## Lab

Fork and clone this lab. 

Run each of the files in the `lib` directory using the `ruby` command.

From the directory you cloned this lab, try: `ruby lib/a_division_by_zero_error.rb` to run that program. You should get output about an error in the program. Read the error message and open that file in a text editor and see if you can fix the error. When the error is fixed and you run the file via `ruby`, you'll simply see not output at all, no errors or anything. Confirm this by running the `learn` command and seeing that you have a passing test and 3 remaining failures.

Run each file via `ruby`, fix the errors, and confirm with `learn` until your done and all the tests pass. Pay attention to the filenames in `lib` if you need hints for what kind of error to look for.

Once your code is passing with the `learn` command, add, commit, push, and open a pull request to submit.

Feel proud, being able to read an error message and fix it, no matter how basic, is a huge step in being a programmer. Get comfortable with broken, it's totally normal in code.

<iframe src="https://vine.co/v/hPXTA6l9AqQ/embed/simple" width="600" height="600" frameborder="0"></iframe><script src="https://platform.vine.co/static/scripts/embed.js"></script>

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
