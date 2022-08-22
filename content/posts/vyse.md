---
author: "Srijan Paul"
title: "Project: Vyse"
date: "2022-06-15"
description: "A dynamically typed, interpreted and fast scriptling language inspired by Lua for rapid prototyping of applications like video games."
tags: ["project", "community"]
ShowBreadCrumbs: true 
---

Sometime during my 2nd year in college, I'd made a hobby programming language that turned out quite well.
It's named "Vyse", after [Guinsoo's Scythe of Vyse](https://dota2.fandom.com/wiki/Scythe_of_Vyse) from DotA.

Vyse is a dynamically typed, interpreted and fast scriptling language inspired by Lua for rapid prototyping of applications like video games.
Programmers familiar with Lua/Javascript can pick up the language within an hour.
Vyse also comes with a C++ API for frictionless embedding in projects.

Features include:
- Modules, both native and user-level
- An embedding API
- Closures, higher order functions to facilitate FP.
- Prototypical inheritance, inspired from JS and Lua. 

Since the language already has detailed (but remarkably outdated) documentation on [its website](https://injuly.in/vyse),
I won't bother rewriting any of that here.

Instead, here is the simple number-guessing program:

```rs
const math = import("math")

fn play() {
  const num = math.randint(0, 100)
  let guess = input("guess: "):to_num()
  let n_attempts = 1
  while guess != num {
    if guess < num {
      print("Too low! Try higher.")
    } else {
      print("Too high! Try lower.")
    }

    n_attempts += 1
    guess = input("guess: "):to_num()
  }

  print("Well done! number of attempts: ", n_attempts)
}

play()
```

Of course, it's possible to do more than just write simple terminal programs.
For instance, I'm currently working on a [2D game engine](https://github.com/cpp-gamedev/wex)
that will allow users to write games with the language.
This project hasn't seen any major progress in the past year owing to my busy (read: poorly managed) schedule,
however, I'm looking to resume this project in the coming quarter.

Currently, there are no official releases for Vyse.
This is majorly due to me not being in possession of a windows (yuck) device ATM.
There are some bugs that I've yet to prune out before I can make a stable v0.1 release for all platforms.

The one benefit of having no users, is a leisurely development pace.

