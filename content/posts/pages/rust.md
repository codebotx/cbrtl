---
author: Anubhab Patnaik
title: 'Rust: The next C++ ?'
date: "2022-10-14"
description: "Rust is a multi-paradigm systems programming language created to ensure high performance similar to that offered by C and C++ but with emphasis on code safety"
tags: ["project"]
ShowBreadCrumbs: true 
---
Rust is a multi-paradigm systems programming language created to ensure high performance similar to that offered by C and C++, but with emphasis on code safety, the lack of which is probably why C and C++ are painful to deal with. It accomplishes these goals of being memory safe without using garbage collection. It is also an ahead-of-time compiled language, which means that you can compile a rust program, give it to someone else, and they can run it even without Rust installed. However, Rust has more than just memory safety on its side. High performance while processing large amounts of data, support for concurrent programming, with an effective compiler are other reasons why well-known software heavyweights such as Firefox, Dropbox, Cloudflare, and many startups and large corporations use Rust in production.


In simpler words, before I explain a whole lot about programming languages and their working, some questions that may come to your mind are:

1. If Rust is created to achieve performance similar to that offered by C++, then why not use C++ instead?
2. I know Java, JavaScript, and Python to be more popular choices amongst peers. Why not use those instead?
3. What about new languages like Go, Kotlin, Swift, etc.?

To answer these questions, let us first go through how a computer works.

## What is a programming language and how do computers understand them?

A programming language is a set of instructions that can be used to interact with and control a computer. These languages can be used for a multitude of purposes, such as creating a website, analyzing data, writing a program to solve a mathematical problem, creating a game, piloting a car, building a robot, making rockets take off, controlling spacecraft and the list goes on. A computer, even though can control a rover on Mars, detect an incoming ballistic missile, and detonate it before it reaches you, cannot understand English, or anything except **'0'** & **'1'**. Computers can be thought of to be made up of tiny switches, and can be either 'on' (1) or 'off' (0) called **'bits'**. Whatever instruction you want to execute on a computer, has to be converted into a series of '0' and '1' before it can be executed. Even a simple "Hi" is parsed as **01001000 01101001**. Yes, this is what Siri actually replies when you *Hey Siri*. Since the English language is vast and complicated, it is not possible to convert it into a series of '0' and '1' directly. A subset of English or any other language is created, which is called a **programming language**. To make things easier for us, there are tools that convert whatever we want the computer to do into a series of '0' and '1'. This series of '0' and '1' is then executed by the computer.

### What is a compiler and an interpreter?

A **compiler** or an **interpreter** is a tool that converts a program written in a programming language *(source code)* into a series of '0' and '1' that can be executed by a computer. What creates a differnce between a compiler and an interpreter is the way they work. A compiler converts the entire program into a series of '0' and '1' *(machine code)* and then executes it. An interpreter, on the other hand, converts the program line by line and executes it.

### How do compilers and interpreters work?

Compilers vary in the methods they use for analyzing and converting source code to output code. Despite their differences, they typically carry out the following steps:

1. **Lexical analysis**
	The compiler splits the source code into lexemes, which are individual code fragments that represent specific patterns in the code. The lexemes are then tokenized in preparation for syntax and semantic analyses.
2. **Syntax analysis**
	The compiler verifies that the code's syntax is correct, based on the rules for the source language. This process is also referred to as parsing. During this step, the compiler typically creates abstract syntax trees that represent the logical structures of specific code elements.
3. **Semantic analysis**
	The compiler verifies the validity of the code's logic. This step goes beyond syntax analysis by validating the code's accuracy. For example, the semantic analysis might check whether variables have been assigned the right types or have been properly declared.
4. **Intermediate code generation**
	IR code generation. After the code passes through all three analysis phases, the compiler generates an intermediate representation (IR) of the source code. The IR code makes it easier to translate the source code into a different format. However, it must accurately represent the source code in every respect, without omitting any functionality.
5. **Code Optimization**
	The compiler optimizes the IR code in preparation for the final code generation. The type and extent of optimization depends on the compiler. Some compilers let users configure the degree of optimization.
6. **Output code generation**
	The compiler generates the final output code, using the optimized IR code.

An interpreter works in a similar way as a compiler, but it does not generate machine code. Instead, it executes the program line by line.

**Why did we need interpreters ?**

Compiled languages need a “build” step – you need to be manually compiled first. You need to “rebuild” the program every time you want to make a change. Let's say you create an app and are writing a code to login using email id. If you decide to use phone number/ email ID instead of email id later, the entire code would need to be compiled again and resent to you.

Interpreters run through a program line by line and execute each command. Here, if the author decides he wants to use a different kind of password or authentication mechanism, email or user ID method, he could scratch the old one out and add the new one. Your interpreter can then convey that change to you **as it happens**.

Another most notable disadvantage of compilers is **platform dependency** of the generated binary code. Compilers are designed to be CPU specific and run on a specific CPU architecture. This means that if you want to run a program on a different CPU architecture, you will have to compile it again.

**Why do we still make use of compilers ?**

Compilers are designed to be CPU specific and as a result, they tend to be **faster and more efficient** to execute than interpreters. They also give the developer **more control** over hardware aspects, like memory management and CPU usage.

Compilers and Interpreters have their own advantages and disadvantages. For example, a compiler is faster and more effecient than an interpreter, but an interpreter is easier to write than a compiler.

Interpreted languages were once significantly slower than compiled languages. But, with the development of [just-in-time compilation](https://guide.freecodecamp.org/computer-science/just-in-time-compilation), that gap is shrinking.

Coming back to the questions that we asked earlier, let us now see how Rust fits in.

### Compiled languages Vs Interpreted languages


## Why is C++ the benchmark for performance?

### Memory Management in C++

## Rust

### Memory Management in programming languages

### Rust > C++ ?