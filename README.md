## TDD Example

We will design and imlement a command-line tic tac toe program.

#### Value Objects & Service Objects

Value objects are data containers that allow you to move data around. A glorified Hash, really.

Service objects contain your business logic.

Allows you to separate:
- code that stores and reads data
- code that performs operations on data

Read more here: http://blog.codeclimate.com/blog/2012/10/17/7-ways-to-decompose-fat-activerecord-models/

#### Single Responsibility Principle

The class should only have one job. You should be able to express that in a sentence.

## Design Advice

#### Iterate

Be prepared to scrap your design and start from scratch. Unless you are working on a problem that is familiar to you, chances are you won't get it right the first time around.

You are not your design.

#### Comparing Solutions

Given two designs, how do you know which one is better?

https://leanpub.com/4rulesofsimpledesign


#### Keep it simple

- keep it simple. what is simple? simple designs are designs that are easy to change (no knowledge duplication, low coupling)
- it is tempting to overengineer a solution

#### Future Proofing

- "Don't write code that guesses the future, arrange code so that you can adapt to the future when it arrives" - Sandi Metz


### Practice: Tic Tac Toe Design

In general, programs will have three kinds of code:

  - user interface
  - data storage (keep track of the state of the program)
  - logic (user performs actions => change in data => change in UI)


Question: Which of these classes are Value Objects?
Question: is there any knowledge duplication in this design?
Question: What is wrong with the last line of Game#start_game?

### Refactor with namespace

Let's say that we wanted to call the Board class Array. How can we accomplish this without confusing Ruby about naming? Ruby already has a class called Array.

### Test Stubs

