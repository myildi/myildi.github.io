---
layout: post
title: Experimenting with Gemini Code-CLI
tags: LLMs Gemini Programming CLI
---

I recently became curious about using a coding LLM in a terminal environment. The idea looked, at the same time, quite archaic (Terminal! really?), and puzzling (getting rid of the complexity of a programming IDE?). 

I started looking at Claude Code, as I had read that the CLI (command-line interface) version is free. Unfortunately, I could not find any confirmation of it on Anthropic’s website. However, during my explorations, I discovered that Google offers a very generous version of the [**Gemini Code Assist CLI**](https://codeassist.google): 
- 1,000 model requests/day; 
- a context window of 1M tokens; 
- agent mode; 
- IDE plugins (Visual Studio and JetBrains); 
- possibility of implementing MCPs; 
- [tools](https://github.com/google-gemini/gemini-cli/blob/main/docs/tools/index.md). 

See [this page](https://codeassist.google) for more details on the offer.

## Installation
I used the npm method:
```
npm install -g @google/gemini-cli
```
I had to update npm first because you need a recent version.

[This page](https://github.com/google-gemini/gemini-cli/blob/main/docs/deployment.md) gives more details on its deployment in different environments.

## Using Gemini CLI

Once the installation is finished, you can open a Terminal window in a project folder and launch Gemini Code Assist CLI by executing
````
gemini
````

And you obtain the following Terminal screen:

|![](/images/filler.png) |![Gemini CLI interface](/images/gemini-cli.jpg)|
| |**Gemini Code Assist CLI Interface**|

You need to authenticate using your Gmail account (completely free) or your Gemini API key if you have an account.

Now you have a command line where you can type your prompt. [This page](https://github.com/google-gemini/gemini-cli/blob/main/docs/cli/commands.md) gives you all available commands in the CLI.

All commands start with a slash (/), and you can cancel with Escape. /quit closes the Gemini CLI and returns you to your shell.

## Testing Gemini CLI

I have an old simulation model written in Java, and I wanted to test the Gemini CLI on this codebase.

 I switched to the root folder of my Eclipse project and launched Gemini.

As a first step, I asked it to analyse the codebase and tell me the structure and the role of different components of the project. 
It was able to locate the src/ subfolder and analyze the various Java objects and programs defined within it. 

Then I asked it to check the consistency of the code base as an economic simulation model, and it was able to provide a diagnostic (fortunately, with only a few issues in this tested code base).

The real test I was aiming for was converting this codebase to a [NetLogo](https://ccl.northwestern.edu/netlogo/) program, as NetLogo is the agent-based modelling platform I adopted many years ago to replace Java. 

Gemini accepted the task without hesitation (all these LLMs are always so confident!) and proposed starting by building a scaffold file that includes all major structural elements in my codebase. The structure it proposed looked quite relevant for this project.

It asked me if it should start to fill different components, in accordance with the original codebase. I encouraged it.

This is where Gemini started to meet serious problems. The NetLogo code it generated did not follow the protocols of this language, it continued to use Java notations in some areas (like delimiting blocs with {} instead of [], trying to use if … else … structure, declaring profit and Profit as two different variables - not possible in NetLogo, even if it is perfectly admitted in Java, etc.).

A rather lengthy debugging process then began, where I had to provide hints to Gemini at each step (and sometimes, giving it again later, because it applied it in one area, but not another in the code). 

Ultimately, it was only able to translate the program code, but not implement the standard XML code that NetLogo requires for the graphical interface and other configuration parameters.

I was able to paste this code into the code panel of NetLogo, and finally, I could verify that the code was free of syntax errors. I asked Gemini again to verify that the new code corresponds to the full docking of the model with the initial codebase in Java, and it confirmed this by providing detailed explanations of different parts of the program. A quick visual check by me did not locate any visible inconsistencies, but the Devil is always in the details, especially in computer programs. 

The next step is to build the graphical interface, run this program, and compare its results with those obtained using the model in Java.

|![](/images/filler.png) |![Statistics from the last session of collaboration with Gemini](/images/gemini-cli-stats.jpg)|
| |**tatistics from the last session of collaboration with Gemini CLI**|

## To conclude

It was rather a lengthy and frustrating process, but it was not an easy task. Converting from one language to another is always quite daunting, but converting to another specialized language with a unique building logic is clearly a very challenging task. With a lot of help, it was able to do it, and that is quite impressive. Human oversight was clearly indispensable in this case, but is it ever dispensable with these tools?…