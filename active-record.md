Active Record
=============

http://www.martinfowler.com/eaaCatalog/activeRecord.html

An object that wraps a row in a database table or view, 
encapsulates the database access, and adds domain logic on that data.


![image](http://yuml.me/de9a72ad)


ActiveRecord (gem) 
-----------------------------------------------------------------------------------

[http://api.rubyonrails.org/files/activerecord/README_rdoc.html]

Active Record connects classes to relational database tables to establish an almost 
zero-configuration persistence layer for applications. 
The library provides a base class that, when subclassed, 
sets up a mapping between the new class and an existing table in the database. 
In the context of an application, these classes are commonly referred to as models. 
Models can also be connected to other models; this is done by defining associations.

Active Record relies heavily on naming in that it uses class 
and association names to establish mappings between respective database 
tables and foreign key columns. Although these mappings can be defined explicitly, 
it’s recommended to follow naming conventions, especially when getting started with the library.

Active Record attempts to provide a coherent wrapper as a solution for 
the inconvenience that is object-relational mapping. 
The prime directive for this mapping has been to minimize the amount 
of code needed to build a real-world domain model. 
This is made possible by relying on a number of conventions that 
make it easy for Active Record to infer complex relations 
and structures from a minimal amount of explicit direction.


### Features:

* associations
* validations
* composition
* call backs
* STI
* migrations


### Interview with dhh 

[https://www.simple-talk.com/content/print.aspx?article=1852]

What part of Ruby on Rails was the most difficult to write?

DHH:

  Active Record. Crossing the mismatch between an OO programming language and SQL is 
  fraught with danger. It’s very easy to go too far. 
  To not respect the underlying relational model and think that everything should just adhere to the OO paradigm. 
  Striking the right balance of allowing the best of both worlds to shine was tough but it was very satisfying to 
  get it right.

RM:

  It’s one of those things about Active Record. 
  A lot of people avoid it because it feels like the class is doing too much and many prefer to use 
  Repositories that return business objects. How did you get Active Record in Rails to work so naturally?

DHH:

  I looked at all the options before settling on Active Record. 
  By far the easiest and simplest code came from using that pattern over 
  something like a data mapping or similar. So that made the choice simple.
