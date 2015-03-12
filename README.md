---
tags: introduction, error messages, lecture
language: ruby
type: video, lab
---

# Ruby Lecture: Introduction - Reading Error Messages

[MP4](http://flatiron-videos.s3.amazonaws.com/ironboard/ruby/ruby-lecture-reading-error-messages/ruby-lecture-reading-error-messages.mp4)

<video controls width="100%">
  <source src="http://flatiron-videos.s3.amazonaws.com/ironboard/ruby/ruby-lecture-reading-error-messages/ruby-lecture-reading-error-messages.mp4" type="video/mp4" >
    Your browser does not support the video tag. We recommend using Chrome
</video>

## Lab

Fork and clone this lab. Fix the errors in all the files in libs and make sure your test suite is passing by running `rspec`.

Commit your working code and create a pull request.

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

Errors are clues, reading them is the interpret telling you what to do to fix the program and move on.

Have fun!
