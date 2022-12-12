# Know your tools

There are three tools that every programmer will use pretty much every day.
Knowing how to get the most out of them will save you time and make you a
better programmer. The tools are an editor, an operating system and a source
code control system. Let's look at each of these in more detail.

## Editor

If you're creating code then you're using an editor. Therefore, how well you
can use your editor will have a massive effect on how productive you are as a
programmer. If you don't believe me, take the time to watch a couple of your
more experienced colleagues at work. You'll be amazed at how quickly their
fingers fly across the keyboard and new code appears. And it's not just the
creation of new code, you'll also be opening new files and moving around a
number of open files to find the definitions of variables and functions that
you're using. An experienced user with a good programmers editor moves around
the code at an incredible rate.

Traditionally, on Unix and Linux in particular, the choice of programmers
editor has come down to [Emacs](https://www.gnu.org/software/emacs/) versus
vi (which is, actually, usually [vim](https://www.vim.org/)). But these days,
there are many more options to consider. I'm currently using
[Atom](https://atom.io/) and I see a lot of programmers using Microsoft's
[Visual Studio Code](https://code.visualstudio.com/). People using Windows
often seem to use [Notepad++](https://notepad-plus-plus.org/) and
[Sublime Text](https://www.sublimetext.com/) is popular on MacOS.

### Programmer's Editor

A programmer's editor is a type of text editor that is specifically
designed for software development. Unlike a general-purpose text editor,
a programmer's editor includes a number of features that make it easier
to write and edit code. Here are some of the key advantages of using a
programmer's editor for software development:

**Syntax highlighting:** One of the most useful features of a programmer's
editor is syntax highlighting, which is a visual formatting of the text
that makes it easier to read and understand. Syntax highlighting
automatically assigns different colors to different elements of the code,
such as keywords, comments, and strings. This makes it easy to identify the
different parts of the code at a glance, and can help you spot errors and
inconsistencies more quickly.

**Auto-completion:** Another useful feature of a programmer's editor is
auto-completion, which is a type of code completion that automatically
suggests possible completions for the code that you are writing. This can
save you time and effort, and can help you avoid mistakes. For example, if
you start typing the name of a variable, the editor may automatically
suggest the full variable name based on the other variables in your code.

**Code navigation:** A programmer's editor can also help you navigate
through your code more easily. Many editors include features like code
folding, which allows you to collapse and expand sections of your code, and
code outlining, which provides an overview of the structure of your code.
This can make it easier to find the specific part of your code that you are
looking for, and can help you understand the overall architecture of your
application.

**Integrated debugging:** Many programmer's editors also include tools for
debugging your code. For example, some editors allow you to set breakpoints,
which are points in your code where the execution will pause so you can
inspect the state of the program. This can help you identify and fix errors
in your code more quickly.

**Customizability:** Another advantage of using a programmer's editor is
that they are often highly customizable. Most editors allow you to adjust
the color scheme, define your own keyboard shortcuts, and install plugins to
add additional functionality. This means that you can tailor the editor to
your specific needs and preferences, which can make your coding experience
more efficient and enjoyable.

Whether you are a beginner or an experienced developer, a programmer's
editor can be a valuable tool in your toolkit.

It is well worth getting to know the features of your editor well. Some
of the benefits you'll get from this are:

**Increased productivity:** The more familiar you are with the features
of your programmer's editor, the more quickly and efficiently you will be
able to write and edit code. For example, if you know how to use keyboard
shortcuts, you can avoid using the mouse, which can save you time and reduce
strain on your hands. Similarly, if you know how to use the auto-completion
and code navigation features, you can quickly find and edit the parts of
your code that you need to change.

**Improved code quality:** Knowing the features of your programmer's editor
can also help you write better code. For example, if you know how to use the
syntax highlighting and code outlining features, you can easily spot errors
and inconsistencies in your code. This can help you avoid mistakes that
could cause your code to break, and can help you ensure that your code is
clean, well-structured, and easy to read.

**Greater flexibility:** The more you know about your programmer's editor,
the more flexible you will be in terms of the types of projects you can
work on. For example, if you know how to use the debugging tools, you will
be better equipped to handle complex projects that require you to find and
fix errors in your code. Similarly, if you know how to customize the editor,
you can adjust it to fit your specific needs and preferences, which can make
your coding experience more enjoyable and effective.

**Enhanced learning and problem-solving skills:** Knowing the features of
your programmer's editor can also help you develop your broader software
development skills. For example, if you know how to use the code navigation
and outlining tools, you will be better able to understand the structure and
organization of your code. This can help you learn new programming concepts
more quickly, and can make it easier for you to solve complex problems.

Editor Features

* Syntax highlighting
* Auto-complete
* Indentation
* Folding

IDE Features

* Deeper knowledge of languages
* Compile / run
* Debugging
* Source code control
* Multi-file projects

More Features

* Everything is configurable
* Everything is extensible
* Everything is programmable

## Operating system

Your operating system is the interface between you and the processing power
of your computer. You're using it in some way or another every second that
you're using the computer. I don't care if you're developing on Windows,
MacOS or Linux (or even some more obscure OS), but I think that you should
put some effort into getting the most out of your operating system.

In the 1990s and early 2000s, people seemed to place great importance in the
operating system they used. It was like joining a tribe. When Macs started
running on a Unix-like OS, I saw a large number of developers switch to using
Macs, which had previously been seen as a machine for designers. Mostly, they
switched from Linux which, back then, could still be a little tricky to get
working well on a desktop or laptop. Windows users were often disparaged as
people who were unable to use a "real" operating system. These days, that all
seems a little silly as a lot of development takes place using virtual machines
or containers (of which, mush more later) and your operating system is largely
used for running a browser and launching your virtualised development
environments.

* Your operating system is where you live
* Get to know its features
* Design your working environment
* Automate things

Operating Systems

* What do you use your operating system for?
* Web browsing
* Reading email
* Social media
* Development?
    * Virtual machines
    * Containers

Configure Your OS

* Make it as comfortable as possible
* Window decoration
* Window behaviour
* Virtual desktops

Automate Common Tasks

* Automate anything the third time you need to do it
* Learn your OS's scripting mechanism
* Linux / Unix shell scripting
    * Aliases
    * Functions
Powershell

SSH Connections

* You will need to connect to other systems
* Secure shell (ssh)
    * ssh-agent / ssh-add
    * ~/.ssh/config
    * Keepalive
    * Username
    * Agent forwarding
* Putty does all of this too

## Source code control

When I first started in the industry, source code control was a relatively
new idea. At one large bank I worked at in London, I was part of an
infrastructure team and one of our projects was to convince the development
teams to make more use of source code control. One team leader didn't agree
with me. He said "I understand exactly what problems source code control is
there so solve - but it's a problem that my team doesn't have." Later on, I
spent some time working in that team and realised what he meant. They used
tarballs with dates in their names to keep track of the different versions of
their codebase.

Times have changed now though. These days, no sane developer is going to start
a project without using a source code control system. And currently (and for
the last ten years or so) the most popular source code control system has been
Git. There would need to be a pretty good reason for a software project to
choose anything else.

* Why aren't you using git?
* Why aren't you using Github?
    * Microsoft
* Understand how your source code control works

Switch to Git

* Git has been the de-facto industry standard for ten years
* More powerful
* More flexible
* Harder to use
* Different paradigm
* "Optimistic concurrency"
* Good merge tools

Git Advantages

* Distributed model
    * Off-line access
* Branches are easy and quick
* Rebasing
    * Interactive rebasing
* "Fetch" vs "Pull"
* Safety net

Git in the Cloud

* Don't run your own Git infrastructure
* Other people are better than you at doing that
* Social coding
* Github
* Gitlab
* Bitbucket
