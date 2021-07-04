# Reading Ruby Error Messages

## Learning Goals

- Read the different parts of an error message
- Identify common types of errors

## Overview

In this lab, you'll be reading error messages from tests. This lab is designed
so that both running the files *and* running the test suite via the `learn test`
command will show the error messages for you to decode. Moving forward though,
you'll be reading error messages mainly through running the test suite.

## Reading Error Messages

Let's start by running some of the Ruby code in the `lib` folder to produce an
error message. Run this in your terminal:

```sh
ruby lib/a_name_error.rb
```

Error messages have 3 parts:

```txt
lib/a_name_error.rb:3:in `<main>': undefined local variable or method `hello_world' for main:Object (NameError)
```

1) The location of the error, the "where":

    ```txt
    lib/a_name_error.rb:3:in `<main>':
    ```

    - `lib/a_name_error.rb` is the file the error occurred in.
    - `3` is the line of code with the error.
    - `<main>` is the scope of the error.

2) The description, the "why":

    ```txt
    undefined local variable or method `hello_world' for main:Object
    ```

    The interpreter does the best job it can to tell you what it thinks went wrong.

3) The type of error, the "who":

    ```txt
    (NameError)
    ```

    This is a [Ruby Error Type](http://www.ruby-doc.org/core-2.2.0/Exception.html).

You've solved games of *Clue* with less information. This is one of the best
parts of programming: debugging and fixing errors. It's like you're a detective
solving a crime. The only bad thing is that more often than not, you're also the
criminal that caused the error in the first place.

Errors are clues, and reading them is the interpreter telling you what to do to
fix the program and move on.

## Four Common Error Types

### Name Errors

Name errors are caused when a given name is invalid or undefined. Whenever the
Ruby interpreter encounters a word it doesn't recognize, it assumes that word is
the name of a variable or a method. If that word was never defined as either a
variable or a method, it will result in a name error. Try this out in IRB:

```sh
$ irb
2.7.3 :001 > a_variable
NameError (undefined local variable or method `a_variable' for main:Object)
2.7.3 :002 > a_variable = 7
 => 7 
2.7.3 :003 > a_variable
 => 7 
```

Trying to access `a_variable` before assigning it a value results in a
`NameError`, which we can fix by assigning it some value.

### Syntax Errors

Syntax errors are pretty self-explanatory: they're the result of incorrect
syntax. Thankfully, they're usually followed by a guess about the location of
the error. For instance:

```rb
2.times do
  puts "hi"
```

Will result in:

```txt
2: syntax error, unexpected end-of-input, expecting keyword_end
```

Here, Ruby is saying that on line 2, there is a missing `end` (every `do`
keyword must be followed by some code and then an `end` keyword). Always read
the full details of syntax errors and look for line numbers, which usually
appear at the beginning of the error message.

### Type Errors

When you try and do a mathematical operation on two objects of a different type,
you will receive a `TypeError`. For example if you try and add a string to an
integer, Ruby will complain.

```rb
1 + "1"
```

Will produce the following error:

```txt
TypeError: String can't be coerced into Fixnum
```

### Division Errors

A `DivisionError` is are caused when a given number is divided by 0.

## Instructions

To get started, run `learn test --f-f` to run the first test in the test suite.
Use the error messages to guide your work:

- Read the errors. Scroll through the entire output to get a sense of what the
  failures are trying to tell you. What does the error mean? How can we fix it?

- Each error prints out a **stack trace**, which points to where the code failed
  and attempts to follow it _up the stack_ &mdash; that is, through the bits of
  code that ran leading up to the failure. You can use these stack traces to
  pinpoint which line(s) of code need your attention.

- These stack traces can also point you to which files you should run to get a
  better sense of the errors.
  
Fix the errors in each of the files in `lib/`. Then confirm the fix by running
`learn test` again.
