# Objective-C Memory Management Bug
This repository demonstrates a common, subtle bug in Objective-C related to memory management using retain, release, and autorelease.  Improper handling of these methods can lead to memory leaks or crashes.

## The Bug
The `bug.m` file contains code that incorrectly manages the memory of an NSString object.  Specifically, the `dealloc` method correctly releases the string, but the initial assignment of the string doesn't account for potential memory management issues.

## The Solution
The `bugSolution.m` file provides a corrected version.  It demonstrates proper memory management using techniques like using properties with appropriate memory management semantics (nonatomic, strong in modern Objective-C) or using ARC.