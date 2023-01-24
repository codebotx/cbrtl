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

A programming language is a set of instructions that can be used to interact with and control a computer. These languages can be used for a multitude of purposes, such as creating a website, analyzing data, writing a program to solve a mathematical problem, creating a game, piloting a car, building a robot, making rockets take off, controlling spacecraft and the list goes on. A computer, even though can control a rover on Mars, detect an incoming ballistic missile, and detonate it before it reaches you, cannot understand English, or anything except **'0'** & **'1'**. Computers can be thought of to be made up of tiny switches, and can be either 'on' (1) or 'off' (0) called **'bits'**. Whatever instruction you want to execute on a computer, has to be converted into a series of '0' and '1' before it can be executed. Even a simple "Hi" is parsed as **01001000 01101001**. Yes, this is what Siri actually replies when you *Hey Siri*. Since the English language is vast and complicated, it is not possible to convert it into a series of '0' and '1' directly. A subset of English or any other language is created, which is called a **programming language**. High Level Programming Languages are designed to be easy to read and write, and Low Level Programming Languages are designed to be easy for the computer to understand. To make things easier for us, there are tools that convert whatever we want the computer to do into a series of '0' and '1'. This series of '0' and '1' is then executed by the computer.

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

Compiled languages need a “build” step – they need to be manually compiled first. You need to “rebuild” the program every time you want to make a change. Let's say you create an app and are writing a code to login using email ID. If you decide to use phone number/ user ID instead of email ID later, the entire code would need to be compiled again and resent to you.

Interpreters run through a program line by line and execute each command. Here, if the author decides he wants to use a different kind of password or authentication mechanism, email or user ID method, he could scratch the old one out and add the new one. Your interpreter can then convey that change to you **as it happens**.

Another most notable disadvantage of compilers is **platform dependency** of the generated binary code. Compilers are designed to be CPU specific and run on a specific CPU architecture. This means that if you want to run a program on a different CPU architecture, you will have to compile it again.

**Why do we still make use of compilers ?**

Compilers are designed to be CPU specific and as a result, they tend to be **faster and more efficient** to execute than interpreters. They also give the developer **more control** over hardware aspects, like memory management and CPU usage.

Compilers and Interpreters have their own advantages and disadvantages. For example, a compiler is faster and more effecient than an interpreter, but an interpreter is easier to write than a compiler.

Interpreted languages were once significantly slower than compiled languages. But, with the development of [just-in-time compilation](https://guide.freecodecamp.org/computer-science/just-in-time-compilation), that gap is shrinking.

Coming back to the questions that we asked earlier, let us now see how Rust fits in.

### Compiled languages Vs Interpreted languages

If you're wondering what language should you choose to build your next project with, ask yourself this: what kind of platform do I want to run the application in? If you want to run your application on a web browser, you should use JavaScript or TypeScript. If you want to run your application on a server, you may want to use Python or Go. In  a mobile device, Swift or Kotlin might be the way to go. If you want to run your application on a desktop, you should use C++ or Rust.

Your call of choosing a language for your next project should depend on the purpose of the application.

*Rust*, *Go* and *C++* are popular compiled languages.

The speed advantage of the compiled language such as Golang (Go) in comparison to an interpreted language such as Java is one of the reasons why organizations write their microservices in Go. In complex computing environments such as cloud computing environments, where users get charged for every clock cycle, it makes sense to use the most efficient deployment artifact. Unsurprisingly, the [Docker](https://www.docker.com/) container is written in the compiled language Go.

The benefit of applications built with an interpreted language is that they can run on any environment ("write once, run anywhere,"). The drawback to an interpreted language is that the interpretation step consumes additional clock cycles, especially in comparison to applications packaged and deployed as machine code.

This would answer your question of why not use Java, JavaScript, Python, Kotlin, Swift, etc. instead of Rust, Go or C++.

## Why is C++ the benchmark for performance?

C++ is a low level, statically typed object oriented language that allows you to have a good grasp of your computer's resources and utilize them as per your convinience. Since it is a compiled language, it surpasses the performance of most of the other interpreted languages. It is an extremely powerful language and is used in many applications such as operating systems, video games, development of compilers and interpreters, etc. It has a huge community and is one of the most popular languages in the world.

Reasons why C++'s performance is unparalleled:

1. A compiled language. C++ is extremely fast because it is a compiled language.
2. A low level language. It allows you to cheaply use computing resources.
3. Statically typed. It allows the compiler to optimize the code.
4. Object oriented programming. It allows you to create reusable code.
5. A general purpose language. It can be used to create any kind of application.


The issue with C++ boils down to how it **manages memory**. C++ is prone to memory leaks and dangling pointers, if not used properly.
It is also very difficult to write multithreaded code in C++.

To understand memory management in C++, you need to understand the concept of pointers. Before we explore pointers, let us first understand what a variable is.

## Memory Management in languages

**Variables** are named memory locations that store data. A variable is a container that holds a value. The value can be of any type, such as *integer*, *float*, *character*, etc.
Computer programs need to allocate memory to store variables, data values and data structures. Memory is also used to store the program itself and the run-time system needed to support it. Programming languages can be categorised as those which provide automatic memory management and those which ask the programmer to allocate and free memory manually. Requiring the programmer to manage memory manually leads to a **simpler compiler** and **run-time** but requires more work from the programmer and is more **error-prone**. While automatic memory management is more convenient for the programmer, it is also more complex and slower. This is achieved by the use of **garbage collection**.

### Memory Management in C++

C++ programs manually allocate and free memory using **pointers**.

**Pointers**
Pointers are variables that store the address of another variable. Pointers are used to access the memory location of a variable. Pointers are used to pass large data structures to functions, to return multiple values from a function, to dynamically allocate memory, etc.

C++ has two types of pointers:

1. **Raw pointers** - These are the most basic type of pointers. They are not bound to any particular object and can point to any memory location. They are not checked for null values and can cause memory leaks and dangling pointers.
2. **Smart pointers** - These are the advanced type of pointers. They are bound to a particular object and can only point to the memory location of that object. They are checked for null values and can prevent memory leaks and dangling pointers.






## Rust

### Memory Management in programming languages

### Rust > C++ ?
