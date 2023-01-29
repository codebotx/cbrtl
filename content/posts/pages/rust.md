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

A programming language is a set of instructions that can be used to interact with and control a computer. These languages can be used for a multitude of purposes, such as creating a website, analyzing data, writing a program to solve a mathematical problem, creating a game, piloting a car, building a robot, making rockets take off, controlling spacecraft and the list goes on. A computer, even though can control a rover on Mars, detect an incoming ballistic missile, and detonate it before it reaches you, cannot understand English, or anything except **'0'** & **'1'**. Computers can be thought of to be made up of tiny switches, and can be either 'on' (1) or 'off' (0) called **'bits'**. Whatever instruction you want to execute on a computer, has to be converted into a series of '0' and '1' before it can be executed. Even a simple "Hi" is parsed as **01001000 01101001**. Yes, this is what Siri replies when you *Hey Siri*. Since the English language is vast and complicated, it is not possible to convert it into a series of '0' and '1' directly. A subset of English or any other language is created, which is called a **programming language**. High-Level Programming Languages are designed to be easy to read and write, and Low-Level Programming Languages are designed to be easy for the computer to understand. To make things easier for us, there are tools that convert whatever we want the computer to do into a series of '0' and '1'. This series of '0' and '1' is then executed by the computer.

### What are compilers and interpreters?

A **compiler** or an **interpreter** is a tool that converts a program written in a programming language *(source code)* into a series of '0' and '1' that can be executed by a computer. What creates a difference between a compiler and an interpreter is the way they work. A compiler converts the entire program into a series of '0' and '1' *(machine code)* and then executes it. An interpreter, on the other hand, converts the program line by line and executes it.

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
 The compiler optimizes the IR code in preparation for the final code generation. The type and extent of optimization depend on the compiler. Some compilers let users configure the degree of optimization.
6. **Output code generation**
 The compiler generates the final output code, using the optimized IR code.

An interpreter similarly to a compiler, but it does not generate machine code. Instead, it executes the program line by line.

**Why did we need interpreters ?**

Compiled languages need a “build” step. You need to compile your program before you can run it. To run your program on a different computer, you will have to compile it on that computer as well.

Interpreters run through a program line by line and execute each command. You can run a program without having to compile it first. This makes it easier to run programs on different computers.

Another notable disadvantage of compilers is **platform dependency** of the generated binary code. Compilers are designed to be CPU specific and run on a specific CPU architecture. This means that if you want to run a program on a different CPU architecture, you will have to compile it again.

**Why do we still make use of compilers ?**

Compilers are designed to be CPU specific and as a result, they tend to be **faster and more efficient** than interpreters. They also give the developer **more control** over hardware aspects, like memory management and CPU usage.

Compilers and Interpreters have their advantages and disadvantages. For example, a compiler is faster and more efficient than an interpreter, but an interpreter is easier to write than a compiler.

### Compiled languages Vs Interpreted languages

Interpreted languages were once significantly slower than compiled languages. But, with the development of [just-in-time compilation](https://guide.freecodecamp.org/computer-science/just-in-time-compilation), that gap is shrinking. Modern scripting languages like Python and JavaScript are compiled to machine code at runtime using both compilers and interpreters, which makes them as fast as compiled languages. They are first compiled to an intermediate representation called **bytecode**, and then interpreted by a virtual machine which converts it to machine code.

Coming back to the questions that we asked earlier, let us now see how Rust fits in.

If you're wondering what language should you choose to build your next project with, ask yourself this: what kind of platform do I want to run the application in? If you want to run your application on a web browser, you should use JavaScript or TypeScript. If you want to run your application on a server, you may want to use Python or Go. In a mobile device, Swift or Kotlin might be the way to go. C++ is used for building complex applications and systems software, such as operating systems, browsers, and video games which require a heavy performance overhead.

*Rust*, *Go* and *C++* are popular compiled languages.

The speed advantage of the compiled language such as Golang (Go) in comparison to an interpreted language such as Java is one of the reasons why organizations write their microservices in Go. In complex computing environments such as cloud computing environments, where users get charged for every clock cycle, it makes sense to use the most efficient deployment artifact. Unsurprisingly, the [Docker](https://www.docker.com/) container is written in the compiled language Go.

The benefit of applications built with an interpreted language is that they can run on any environment ("write once, run anywhere,"). The drawback to an interpreted language is that the interpretation step consumes additional clock cycles, especially in comparison to applications packaged and deployed as machine code.

## Why is C++ the benchmark for performance?

C++ is a low-level, statically typed object-oriented language that allows you to have a good grasp of your computer's resources and utilize them at your convenience. Since it is a compiled language, it surpasses the performance of most of the other interpreted languages. It is an extremely powerful language and is used in many applications such as operating systems, video games, the development of compilers and interpreters, etc. It has a huge community and is one of the most popular languages in the world.

Reasons why C++'s performance is unparalleled:

1. A compiled language. C++ is extremely fast because it is a compiled language.
2. A low-level language. It allows you to cheaply use computing resources.
3. Statically typed. It allows the compiler to optimize the code.
4. Object-oriented programming. It allows you to create reusable code.
5. A general purpose language. It can be used to create any kind of application.

The issue with C++ boils down to how it **manages memory**. C++ is prone to memory leaks and dangling pointers, if not used properly.
It is also very difficult to write multithreaded code in C++.

To understand memory management in C++, you need to understand the concept of pointers. Before we explore pointers, let us first understand what a variable is.

## Memory Management in programming languages

**Variables** are named memory locations that store data. A variable is a container that holds a value. The value can be of any type, such as *integer*, *float*, *character*, etc.
Computer programs need to allocate memory to store variables, data values, and data structures and deallocate memory when done using them. Memory is also used to store the program itself and the run-time system needed to support it. Programming languages can be categorized as those which provide **automatic memory management** and those which ask the programmer to allocate and **free memory manually**. Requiring the programmer to manage memory manually leads to a *simpler compiler* and *run-time* but requires more work from the programmer and is more *error-prone*. While automatic memory management is more convenient for the programmer, it is also more complex and slower. This is achieved by the use of **garbage collection**.

### Manual Memory Management in C++

C++ is a low-level language with manual memory management. C++ programs manually allocate and free memory using **pointers**.

**Pointers**
Pointers are variables that store the **address** of another variable and access the memory location of a variable. Pointers are used to pass large data structures to functions, to return multiple values from a function, to dynamically allocate memory, etc.
C++ has two types of pointers:

1. **Raw pointers** - These are the most basic type of pointers. They are not bound to any particular object and can point to any memory location. They are not checked for null values and can cause *memory leaks* and *dangling pointers*.
2. **Smart pointers** - These are the advanced type of pointers. They are bound to a particular object and can only point to the memory location of that object. They are checked for null values and can prevent memory leaks and dangling pointers.

Since there is no automatic memory management in C++, you need to be responsible for allocating and freeing memory. This process is achieved using the **new** and **delete** keywords.

The dangling pointer problem arises when there is an attempt to use a pointer after it has been freed. Dangling pointer errors can arise whenever there is an error in the control flow logic of a program. The use of a pointer before allocation may be a fatal run-time error. Use after deallocation is not always fatal but neither of these is a good thing.

```cpp

#include <stdio.h>  
int main()  
{  
   int *ptr=(int *)malloc(sizeof(int));  
   int a=560;  
   ptr=&a;  
   free(ptr);  
	// dangling pointer
	 printf("%d",*ptr);
   return 0;  
}  

```
The above code will produce a segmentation fault since the pointer is pointing to a memory location that has been freed. To avoid this, we can set the pointer to NULL after freeing it.

```cpp

free(ptr);
ptr=NULL;

```

These memory leaks are reasons why C++ is not preferred for applications that require a lot of memory management. To avoid such issues, languages that provide automatic memory management are preferred over C++. Scripting languages manage memory using a **garbage collector**.

### Garbage collection

Garbage is a memory that was once used by objects but will never be read or written by the program again. A garbage collector (GC) is a background process that provides automatic memory management for modern languages by taking care of the deallocation of a program’s computer memory resources.
The types of garbage encountered during the execution of a program are:

1. **Syntactic Garbage** - it is clear from the code itself that an object leads to garbage.
2. **Semantic Garbage** - whether or not the memory used by an object is a garbage can only be determined at runtime.

Garbage collection frees the programmer from manually performing memory allocation and deallocation in the program code. As a result, certain categories of bugs are eliminated or substantially reduced such as:-

**Dangling pointer bugs** - a piece of memory is freed, but the objects still have references – one of these references is used in the program.

**Double-free bugs** – the program attempts to free a piece of memory that has already been freed.

**Memory leaks** – if a program does not free memory that is no longer referenced by any object, it can lead to memory exhaustion over time.

Garbage collection seemed like a really good solution to the memory leak issues occurring in low-level languages such as C/C++. While it seemed like the best solution, it had a few CPU usage issues. CPU usage increases when a significant amount of CPU time is spent in a garbage collection or when the garbage collection lasts too long. *Heap* is the memory that is used to allocate memory dynamically as opposed to the *stack* memory which is used to store the local variables. Local memory is quite automatic and local variables are allocated automatically. An increased allocation rate of objects on the managed heap causes garbage collection to occur more frequently.

Types of Garbage Collection:

**Mark & Sweep GC**: Also known as Tracing GC. Its generally a two-phase algorithm that first marks objects that are still being referenced as “alive” and in the next phase frees the memory of objects that are not alive. JVM, C#, Ruby, JavaScript, and Golang employ this approach for example. In JVM there are different GC algorithms to choose from while JavaScript engines like V8 use a Mark & Sweep GC along with Reference counting GC to complement it. This kind of GC is also available for C & C++ as an external library.

**Reference counting GC**: In this approach, every object gets a reference count which is incremented or decremented as references to it change and garbage collection is done when the count becomes zero. It’s not very preferred as it cannot handle cyclic references. PHP, Perl, and Python, for example, uses this type of GC with workarounds to overcome cyclic references. This type of GC can be enabled for C++ as well.

**Resource Acquisition is Initialization (RAII)**: In this type of memory management, an object’s memory allocation is tied to its lifetime, which is from construction until destruction. It was introduced in C++ and is also used by Ada and Rust.

**Automatic Reference Counting(ARC)**: It’s similar to Reference counting GC but instead of running a runtime process at a specific interval the retain and release instructions are inserted to the compiled code at compile-time and when an object reference becomes zero its cleared automatically as part of execution without any program pause. It also cannot handle cyclic references and relies on the developer to handle that by using certain keywords. Its a feature of the Clang compiler and provides ARC for Objective C & Swift.

## Rust

Rust is a systems programming language that runs blazingly fast, prevents segfaults, and guarantees thread safety. It is a general purpose language that can be used to create any kind of application. Rust is a statically typed language that is compiled to native code. It is a multi-paradigm language that supports imperative, functional, and object-oriented programming. Rust is a low-level language that provides **automatic memory management**. Rust is used to create low-level systems software such as operating systems, device drivers, and embedded software. It is a language that is used to create high-level applications such as web servers, command-line tools, and graphical user interfaces.

Rust builds on RAII( Resource Acquisition is Initialization) to provide automatic memory management. RAII is a programming technique that uses the lifetime of an object to manage the lifetime of its resources. In Rust, the compiler ensures that the memory is freed as soon as the object goes out of scope. This is achieved by the use of **smart pointers**. Rust implements borrow checking and ownership rules to ensure that memory is freed as soon as the object goes out of scope. Additionally, Rust also provides a **garbage collector** that can be used to free memory when the object goes out of scope.

>Ownership and Borrowing

```rust

fn main()  {  
   let mut x = 5;  
	 {  
			let y = &mut x;  
			*y += 1;  
			// x is borrowed here
	 }  
	 let z = &mut x;
	 // z cannot borrow x as it is already borrowed
}  

```

>RAII

```rust

fn main() {
    let foo = "value"; // owner is foo and is valid within this method
    // bar is not valid here as it's not declared yet

    {
        let bar = "bar value"; // owner is bar and is valid within this block scope
        println!("value of bar is {}", bar); // bar is valid here
        println!("value of foo is {}", foo); // foo is valid here
    }

    println!("value of foo is {}", foo); // foo is valid here
    println!("value of bar is {}", bar); // bar is not valid here as its out of scope
}

```

### Rust > C++ ?

C++ is a high-performance, general-purpose programming language that has been widely used for decades. It is known for its flexibility and ability to handle low-level tasks, making it a popular choice for systems programming and game development. C++ also has a large and active community, which means that there are many libraries and resources available for developers to use.

Rust, on the other hand, is a relatively new programming language that was first released in 2010. It is designed to be a safe and concurrent language, with a strong focus on preventing common programming errors such as null pointer dereferences and buffer overflows. Rust also has a unique ownership model that allows for efficient memory management and thread safety. This makes it a great choice for systems programming, especially when security and performance are a concern.