### Problem 1

Write a short paragraph to answer these three questions:

1. What are the two major concerns of any software project?
2. Which do you feel is more important?
3. Where does the idea of complete functionality fit with these two concerns?

The two major concerns of any software project are how much the project will cost and how long it will take. I believe that monetary constraint is a bigger concern for software projects because the budget has to be decided before production has even begun in order to ensure that enough funding can be acquired. This is especially true for larger software projects where insufficient funding could deem the projects unfeasible. On the other hand, it is easier to recruit additional programmers (perhaps even freelancers) to help meet a tight deadline. If the project is appropriately scaled, the team will still be able to release a viable working product even if they run out of time to implement complete functionality, and release the remaining features as updates in the future. A lack of funding, however, might bring the project to a complete halt, or force programmers to produce a lackluster product.


### Problem 2

In the Agile method for software development, what are the four main phases that occur in each and every iteration? Do you feel that any of them could be done at the start of the project and not be repeated in every iteration? Do you feel that would save time overall on the project? Justify your answers with a brief explanation.

The four main phases are requirements, design, code, and test. Requirements includes outlining and understanding the requirements for the software you're building, design includes designing how the product (or that portion of the product) will actually be built, code is coding the project, and test involves testing it to make sure it's foolproof and tricky edge cases are accounted for.
I believe all four stages are necessary, to an extent, for each iteration. However, I believe having a longer requirements and design stage at the very beginning of the project can lead to shorter requirements and design stages throughout. While the project requirements and design might change slightly throughout the project, overall componenets will most likely stay the same, so getting that out of the way ahead of time can save a lot of overhead throughout iterations.

### Problem 3

In the Waterfall method for software development, what are the main phases that occur? How are they different from the phases in the Agile method? What other phases are in Waterfall that are left out of Agile? Do you think these are needed in Waterfall? Describe a situation using Agile in which one of these extra Waterfall phases might be needed.

The main phases that occur in the Waterfall method are Requirements, Design, Implementation, Testing and Maintenance.
Most of these phases are similar to that in Agile, but in the Waterfall method, you can only move onto a phase when the preceding phase is verified; in the Agile method, you cycle through the four phases continuously. The Maintenance phase in Waterfall is left out of Agile; this phase allows end users to submit maintenance requests, such as reporting a bug or requesting a feature improvement. I believe that this phase is beneficial in Waterfall and would be beneficial in Agile as well. If the developers receive direct feedback from the end users at the end of each iteraction, they can then use it to incorporate bug fixes or feature improvements into the upcoming story for the next iteration.

### Problem 4

Write one-sentence answers to the following questions:

- What is a user story?
- What is blueskying?
- What are four things that user stories SHOULD do?
- What are three things that user stories SHOULD NOT do?

A user story is a realistic situation that helps define the need for your project and the basic requirements for what you're trying to build.  
Blueskying is being open to all sorts of ideas when starting out on your project, even if they seem off-base or outrageous, so long as you still keep in mind the core requirements that your project will need.  
User stories should (1) describe something that your customer needs the software to do for them, (2) be written in clear and coherent language, (3) be driven by the customer themselves, and (4) be succinct.  
User stories should not (1) be too long, (2) use technical jargon, or (3) describe specific technological implementation details.  

### Problem 5

What is your opinion on the following statements, and why do you feel that way:

```text
All assumptions are bad, and no assumption is a good assumption.
```
I agree with this statement because making the wrong assumptions can also lead to an incorrect estimation of the workload needed to complete a particular user story, which can lead to low productivity. In addition, as programmers, we can never know for sure what the customer is envisioning, and making assumptions will lead to a product that does not fulfill the customer's requirements. 

```text
A big user story estimate is a bad user story estimate.
```
I agree with this statement as well because I believe that whenever there is a deadline that seems fairly far away, people are less inclined to begin working on the tasks, even though the size of the user story indicates that there are a lot of tasks that will take a long time to complete. This leads to procrastination and an underestimation of the work load, which in turn results in the team scrambling to get all the work done in the last minute. Therefore, I agree that whenever there is a big user story, it is much more productive to break it into smaller user stories with shorter work estimates.


### Problem 6

Fill in the blanks in the statements below, using the following things [you can use each thing for more than one statement]: Blueskying; Role playing; Observation; User story; Estimate; Planning poker.

You can dress me up as a use case for a formal occasion: User story
The more of me there are, the clearer things become: User story
I help you capture EVERYTHING: Planning poker
I help you get more from the customer: Role playing
In court, I'd be admissible as firsthand evidence: Observation
Some people say I'm arrogant, but really I'm just about confidence: Estimate
Everyone's involved when it comes to me: Blueskying
NOTE: when you have finished, check your answers with the result in your text on page 62. Do you agree with the book answers? If you disagree with any of them, justify your preferred answer.

The only answer of mine that differed from the book answers was for "I help you capture EVERYTHING." I imagined "everything" as being all of the varying ideas from the team for time estimates on different portions of the project, but since the book answers were "bluesky" and "observations," it seems like they interpreted "everything" as being general ideas for the product / product requirements. I don't necessarily have a preferred answer, since I think the answer really depends on one's interpretation of "everything."  

### Problem 7

Explain what is meant by a better than best-case estimate.

A better than best-case estimate is an estimate made on the amount of time a project can be completed that is overly confident and does not accurately reflect the time required to complete a task in reality. This stems from incorrect assumptions that are made about the project, such as the difficulty of certain tasks, and a lack of regard for real-world considerations, such as the speed at which the developers on the team can complete tasks and the actual number of work days available.

### Problem 8

In your opinion, when would be the best time to tell your customer that you will NOT be able to meet her delivery schedule? Why do you feel that is the best time? Do you think that would be a difficult conversation?

In my opinion, the best time to tell the customer you won't meet the delivery schedule is as soon as you are confident in that fact. If you tell them earlier on, it's easier to reprioritize your goals and plan accordingly so that work can resume as quickly as possible. If you wait too long to tell them, they will be more disappointed, and possibly even angry if they realize that you knew this earlier on and kept it to yourself. I believe it would be a difficult conversation if it is particularly important to the customer, but necessary in order to be realistic about software development.

### Problem 9

Discuss why you think branching in your software configuration is bad or good. Describe a scenario to support your opinion.

I think branching is especially useful when you are working on a large software project. One scenario in which the use of branches is beneficial is when we have a working version of a project in the main branch and want to add new, non-trivial features to it. In this case, branching allows the developer to work on the feature over a significant period of time without having to worry about only pushing code that is completely functional. If branches are not used, the developer can only push his or her code when the feature is thoroughly tested and verified, which can make the development of the feature more tedious. In addition, if the need for the feature later becomes obsolete, or if the feature is deemed to difficult to implement, there is no need to remove references to it from the current code-- the branch can simply be abandoned and the project will remain in working condition.

### Problem 10

Have you used a build tool in your development? Which tool have you used? What are its good points? What are it's bad points?

** TODO: Maddie **

