---
title: Robot Body Design Technical Reference Materials
---

# Robot Body Design Technical Reference Materials

In this module, we'll go over an example of the workflow necessary to design a robot from scratch. This page includes all the backghround information you should know. If you like diving into the technical information, you can read it first, but otherwise, you can think of it as a reference.

## Goals

- Give examples of robots
- Understand the types of problems that robots solve and how they do so
- Understand the different capabilities and autonomy/independence levels that robots can have
- Understand the uncanny valley
- Design and build an example robot that can solve a problem

## Background Information & Relevant Research

{% include definitions_start.html title="Key Concepts & Definitions" %}
{% include definition.html term="Automation" definition="Making something happen automatically. There are many ways to make something automatic, like programming!" %}
{% include definition.html term="Programming or Coding" definition="Writing an algorithm or rules for a computer to follow." %}
{% include definition.html term="Algorithm" definition="Steps to go through given an input to get to an output result." %}
{% include definition.html term="Artificial Intelligence" definition="People-made processes that appear to be intelligent or smart (it doesn’t have to actually be smart!). It is one way to make something happen automatically with the intent of appearing intelligent." %}
{% include definition.html term="Generative Artificial Intelligence" definition="A subset of artificial intelligence that creates/generates things. This is often based on previous patterns it was trained on." %}
{% include definition.html term="Robots" definition="Robots are defined by having a physical embodiment—meaning you can see and interact with them in physical space. Examples include mechanical arms, robot vacuums, surgical robots, space probes, and service robots." %}
{% include definition.html term="Social Robots" definition="Robots designed to directly interact and communicate with people in the physical world." %}
{% include definition.html term="Virtual Characters" definition="Characters that appear on a screen or in a virtual/augmented reality environment. Unlike social robots, they lack a physical body in the real world." %}
{% include definition.html term="Robot vs Virtual Character" definition="Studies show people prefer and rate interactions more positively with a physical robot than with the same entity on a video or screen. Physical interactions tend to feel more natural and socially connective.<sup><a href='#fn:1' class='footnote' rel='footnote'>1</a></sup>" %}
{% include definition.html term="Uncanny Valley" definition="The hypothesis that human replicas which appear almost, but not exactly, like real human beings elicit feelings of eeriness and revulsion (creepiness) among observers. Read more on [Wikipedia](https://en.wikipedia.org/wiki/Uncanny_valley)." %}
{% include definitions_end.html %}


## Problem Identification
It’s important to think about a problem we want to solve and why we’re choosing to solve it with a robot. 

### Automation and Robots 

#### Why automate?

- People don’t want to do the task
- Task is repeatable exactly the same way and we want to minimize errors

#### Why a robot?

There are many reasons to use a robot to perform a task:
- Task is dangerous or difficult to perform by a person
- Experts want extra precision or control
- People are not available or present in the task location
- Robots can allow people to be in more than one place
- Robots can create a more immersive experience[^1]

Using a robot to perform a task does not mean that the task is necessarily automated!
People can use robots as an extension of their capabilities to do things they couldn’t do on their own

### Robot Design

If we are to perform a task using a robot, we need to consider the capabilities the robot must have in order to perform the task. 

- What sensors does the robot need?
- What motors or strength does it need?
- How automated is the robot and how much input does it get from people?

(See worksheet page 1)


Once we have a general idea of the robot’s design, we need to think about its physical design. What physical parts does it have and what are its capabilities to control those parts?[^2]

(See worksheet Page 2)


[^1]: Bainbridge, Wilma A., Justin W. Hart, Elizabeth S. Kim, and Brian Scassellati. "The benefits of interactions with physically present robots over video-displayed agents." International Journal of Social Robotics 3 (2011): 41-52.
[^2]: Mott, Terran & Higger, Mark & Bejarano, Alexandra & Williams, Tom. (2024). Degrees of Freedom: A Storytelling Game that Supports Technology Literacy about Social Robots. 10.1109/RO-MAN60168.2024.10731340. 
