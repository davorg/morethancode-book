# Introduction

Welcome to the book. I hope you find it useful. Over the next few pages, I'll
give you a high-level overview of what the book is, where it comes from and
why I think I'm qualified to be writing it. If you don't need convincing,
then feel free to skip ahead to the next chapter.

## What is this?

If you work as a computer programmer, then you write code. That will, of
course, take up a lot (probably most) of your working day. Not all of that
time is spent actually typing code into your programmers editor. A lot of it
will be in meetings where you're tying down the specification for the software
that you're about to write. Or you're sitting, thinking through how you're
going to implement a certain part of the new system. Or you're trying various
scenarios trying to understand why your code isn't working the way you expect
it too.

All of that counts as programming. But there are other activities that aren't
strictly speaking programming but that programmers do on a daily basis. Or
things that, if a programmer was to spend time thinking about them, then he or
she would become a better programmer (or a more successful programmer or
a more fulfilled programmer - however you want to measure those things).

Those other, non-programming, activities is what this book is about. We'll
look at the working practices of a modern programmer and describe some of the
most useful extra things that a programmer will be doing (or should be doing).

The book is based on a half-day workshop that I ran at a Perl conference in
Glasgow in 2018. The workshop was rather loosely structured. I had list of
topics and we discussed them as a group. I put forward my thoughts and the
dozen or so attendees chipped in with their opinions. At the end of the session
everyone seemed to think it had been a useful use of their time and a few
attendees approached me over the rest of the conference and said they thought
the workshop would make an interesting book. I've been pondering that for
eighteen months and this is the result. It's a much updated and expanded
version of the workshop. I hope you find it as useful as the original attendees
did.

## Fluffiness vs time

I've structured this book so it gets fluffier over time. We'll start with some
very hard technical skills that I think all programmers will find useful. And
as time passes we'll start to look at slightly softer skills.

This was a deliberate choice for the original workshop. When you're talking
to people in a small room on a Tuesday afternoon, any trainer will tell you
that the audience's attention will wander more the later it gets. I therefore
wanted to get the harder skills covered first when the audience was at its
most alert. As it happens, the softer topics covered later in the day seemed to
encourage just as much discussion as the earlier ones - so perhaps I needn't
have worried.

I have, however, kept that structure in the book. I've realised that we don't
just move from hard topics to softer ones, but we also move from nitty-gritty
everyday discussions like "how do I get the most out of my programming tools?"
to wider issues like "how does my employer make money?" and "how do I promote
my person brand?" that you probably don't need to be thinking about every day.

The broad strokes that we will be covering are as follows:

* **Know your tools** - getting the most out of the tools that you use every
day.
* **Adjacent technologies** - what other technologies does your programming
work touch on?
* **Software engineering and architecture** - how do you efficiently design
your code; and how does it interact with the rest of the system.
* **The business** - how much do you know about the company you work for and
the market it exists in?
* **Personal development** - how do you structure your career to make it as
fulfilling as possible for you?

## Who are you?

You might be wondering who I am and why I'm qualified to write this book. So
I thought it was worth taking a few paragraphs to tell you a little about my
history in the industry.

My name is Dave Cross and I'm very old. I've been working in the IT industry
since 1988. For most of that time (since 1995) I've largely worked as a
freelancer. I'm old enough that when I was at school, there was no computing
included on the syllabus - even though I stayed on in the sixth form and
did two maths A levels. There was an option to study for a computer studies
A level, but that involved travelling once a week to a different school
fifteen miles away and it didn't seem that important at the time.

After leaving school, I did the first year of a physics degree at a
university in London. Surprisingly, there was no computing included on that
course either - although I'm told that had I stayed on for the second year of
the course, I would have learned some FORTRAN. But I dropped out after the
first year and spent some time considering my options.

I stayed in London, but on visits to my parents I found that they had bought
a Sinclair Spectrum for my younger brother. He wasn't particularly interested,
but I was drawn to the concept of programming. I bought a copy of Donald
Alcock's *Illustrating BASIC* and slowly taught myself the basics of
programming. I soon realised that I found programming interesting and started
to wonder if I could build a career doing it. Unlike many of my peers (who
were coding from an early age) I was twenty-one before I wrote my first code.

Back in London I looked for a degree that would teach me more about
programming. I was offered interviews at two or three polytechnics and the
first I attended was at South Bank Polytechnic. At that interview, the course
director told me that the course was aimed at people who would spend their
careers writing COBOL in the data processing departments of large companies.
It was 1984 and neither of us had an inkling of how computing would change
in the very near future.

I was accepted onto the course and studied there for four years (including
an industrial placement year). The syllabus had us learning Pascal and COBOL
and practicing what we learned on DEC VAX computers running VMS (except one
that had some version of Unix installed). AI was represented by Prolog and
expert systems and databases were dBase at one end of the spectrum or
CODASYL monstrosities at the other. I recall writing one extended
essay on the Japanese "5th Generation Computing Project". I wonder what
became of that.

There was useful stuff too. We learned C in our final year and I became
well-acquainted with Unix. SQL was introduced as a new tool that was
intended to allow end users to query databases. And during my industrial
training year I worked at IBM and used a new markup languages called SGML.
Embarrassingly, my final-year thesis dismissed the newly-emerging window- and
mouse-driven computer interfaces in favour of a text-based menu system. To
be fair to me, if you'd used Windows versions 1 or 2 you would probably have
dismissed them as well.

I graduated with a first class honours degree and got a job with a company
who did consultancy on software design. This was 1988, so the design method
they advocated was their own adaptation of SSADM (Structured Systems Analysis
and Design Method - a UK government designed method which was the very
antithesis of today's agile approaches). The company had a CASE (Computer-Aided
Software Engineering) tool and I joined the team that was writing the logical
data modelling part of the product.

The new version of the product that I was working on was going to run on
Windows. This was a brave decision for the company to make in 1988 as Windows
was far from ubiquitous at that point. It was also challenging for the
developers as no-one really knew how to write Windows code at that time. But
I spent four years there and got pretty good at writing for Windows. My C and
SQL both improved dramatically over that time too.

I left there in 1992 and got a job working for a communications company. Back
then "communications" meant things like fax and telex. But I got to learn a
lot about networking and I moved from C to C++. I remember having my first
real email address at that company - it was from Compuserve. I talked to some
senior people at the company about including email in their products but they
didn't seem that keen. I could see that they weren't very forward-looking, so
I left after only six months.

My next job was with Walt Disney. Or, more accurately, with their home video
subsidiary - Buena Vista Home Video. At the time, they were just starting to
release a lot of their films on VHS. All of the video production and
distribution was handled by third parties in each European country and they
wanted a system that could aggregate all of this sales data and report back
to people in Burbank. So that's what my team was building. I got the job
on the basis of my C and SQL knowledge and, in return, I learned a lot more
about Unix and my SQL knowledge became more specialised towards Sybase.

After a couple of years with Disney, I started to get calls from recruitment
agents looking for contractors to work in the City of London. It seems that
by using C and Sybase on Unix, Disney had chosen exactly the set of
technologies that made their developers very popular in investment banks. Over
a period of about six months, most of my team (including me) became contractors
in the City.

Over the next five or six years, I worked for a number of banks in the City.
I started off using my C/Unix/Sybase skills, but I soon picked up a few new
technologies. Perl was very useful to me for a long time. It was largely used
to build dynamic web sites and that led me into the web. Remember I mentioned
using SGML at IBM? Well, SGML was the forerunner of XML which was the
forerunner of HTML. So my SGML knowledge (which I had assumed I would never
need again) gave me a bit of a head start on the world wide web.

For a while a lot of my work involved using Perl to put web front-ends onto
various types of database. To be honest, a lot of City jobs aren't particularly
exciting, but my web work opened up a few more possibilities. I did stints at
a few internet start-ups along with more established media companies. All the
time I was able to use existing skills to get a contract and then pick up
other, newer, more useful skills while I was there.

I smile now when I think of the course director interviewing me for a place
on his degree course. I really don't think I would have been happy in one of
the data processing centres he was talking about. But I've successfully managed
to avoid that and have a successful and interesting career.

I estimate that I've only ever used 25% of the topics I learned on my degree. A
lot of the rest of it was out of date before I even finished the degree.
Keeping up to date with industry will always be a problem for the education
system - particularly in an industry that changes as quickly as ours does. I'm
sure that it's still possible to have a long and lucrative career if you're
just using skills that were current when you started in the industry. But I'm
also sure that you'll enjoy yourself more if you take the time to keep up to
date and move with the industry.

And that, I hope, is one of your reasons for picking up this book.
