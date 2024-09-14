---
date: "2024-08-15T00:00:00Z"
tags:
- notes
---

<https://www.cloudskillsboost.google/paths/118>

# 1) AI Notes - Intro

Generative AI: text, image, audio, fake date

AI is a discipline or branch of compsci of systems that think and act like humans

---

Machine Learning (association of data and labels): learning from examples
trains model from input data without explicit programming
- supervised: labeled data ==> usually past data to influence future data (predictions); output/prediction gets compared to expected output (checked) where the difference is error
- unsupervised: unlabelled data (discovery)

Discriminative model (existing data): predicts label or new points of data ==> creates a picture of a dog

---

Large Language Model (LLM)/Gen AI:
(learns patterns from unstructured data) => create data from what it has learned from existing content; DEPENDS a lot on training data

Deep Learning
uses artificial neural networks to predict patterns, usually with many layers
- semisupervised: a small amount of labelled data (supervised) and a large amount of unlabelled data (unsupervised)

Generative model (new data): basically Machine and Deep learning combined with labelled and unlabelled data; CREATES new data/content ==> discerns this is a picture of a dog

---

NOT Gen AI:
• number
• discrete
• class
• probability

Gen AI:
• natural language
• image
• audio

Types of Generative AI:
• language
• image
• audio
• decisions

Transformers: input => output; but sometimes there are **hallucinations** (nonsense)

---

Vertex AI models: create own generative models
Vertex AI: build code from text
Gemini: very adaptable

---

Temperature: variable to increase/decrease confidence in a model in its own response (accuracy vs creativity)

# 2) AI Notes - LLM

LLMs are Deep Learning
- L: large training dataset and parameters
- single model can be used for different tasks
- focused on prompt design (using pre-trained APIs)

ML
- resource heavy: needs ML expertise, training examples, model lacks training, computer time

Prompt Design (general): tailored to a specific task 
Prompt Engineering (specialized): creating a prompt to improve performance -- "Prompt engineering is the art of asking the right question to get the best output from an LLM"

Generic (autocomplete): next word predictor
Instruction tuned: summarize, generate in the style of
Dialog tuned: VARIOUS Questions to fine tune the output (back and forth)

More Efficient:
- parameter efficient tuning: base model stays the say and layers or wrappers are added on top with custom data
- prompt tuning: parameter- efficient tuning method

Transformers:
- encoder: convert input into intermediate representation
- decoder: converts intermediate to output
Ex: for language translation, encoder takes English to the intermediate (not a natural language), which allows decoders to more easily translate to any other language (more flexible than 1-to-1 translation from English to say Spanish -- what about French??)

Attention:
- how much does each token of input matter or is relevant?

LLMs are useful for next text prediction but are becoming more useful for other generalized tasks (e.g. summarization) -- emergent abilities are unexpected or unpredictable phenomenon

Offline Inferences: cached responses
Distillation: "student" models learn from a "teacher" model instead of a dataset

# 3) Intro to Responsible AI

• limitations
• issues
• unintended consequences

No universal definition or practices at this moment
People design and build the machines and select the data used
Decisions are influenced by values

# 4) Generative AI w/ Vertex AI: Prompt Design

Best Practices:
• Be concise
• Be specific, and well-defined
• Ask one task at a time
• Improve response quality by including examples
• Turn generative tasks to classification tasks to improve safety

## Using examples or "shots"

Examples of data or prompts can give better results, though generally only 1-5 examples are recommended so that the model does not try to overfit the result.

* **Chain of Thought prompting**: a good way to get the model to *show its work* to prove the answer instead of just providing the final result:

```
# Example of 1-shot prompt (1 example)

prompt = """
Q: Rob has 7 apples. He buys two more buckets, where each bucket has 6 apples each. How many apples total does he have afterwards?
A: So, he has 7 + 6 + 6 = 19 apples in total.
Q: ...
A: ...
"""
```

### For 0-shot (no examples)

**Add** "*Let's think step by step*" to the end of a question. This can also be helpful with 1=< shots.


### Self-Consistency

Self-consistency generates multiple candidates for the results, varying the *temperature* of each one, and then compares or picks the best candidate.

```
question = """The cafeteria had 23 apples.
If they used 20 to make lunch and bought 6 more, how many apples do they have?"""

context = """Answer questions showing the full math and reasoning.
Follow the pattern in the example.
"""

one_shot_exemplar = """Example Q: Roger has 5 tennis balls. He buys 2 more cans of tennis balls.
Each can has 3 tennis balls. How many tennis balls does he have now?
A: Roger started with 5 balls. 2 cans of 3 tennis balls
each is 6 tennis balls. 5 + 6 = 11.
The answer is 11.

Q: """
```

### ReAct (interact with external systems -- outside of the training data aka live systems)

For example, this could query the current date or a live Wikipedia page to ask what famous person died today (current date) and querying Wikipedia.

# 5) Labs Notes

## Nucleus Sampling

Nucleus sampling is a technique used in large language models to control the randomness and diversity of generated text. It works by sampling from only the most likely tokens in the model’s predicted distribution.

The key parameters are:

* Temperature: Controls randomness, higher values increase diversity.
* Top-p (nucleus): The cumulative probability cutoff for token selection. Lower values mean sampling from a smaller, more top-weighted nucleus.
* Top-k: Sample from the k most likely next tokens at each step. Lower k focuses on higher probability tokens.

In general:

* Higher temperature will make outputs more random and diverse.
* Lower top-p values reduce diversity and focus on more probable tokens.
* Lower top-k also concentrates sampling on the highest probability tokens for each step.

So temperature increases variety, while top-p and top-k reduce variety and focus samples on the model’s top predictions. You have to balance diversity and relevance when tuning these parameters for different applications.

OpenAI recommends only altering either temperature or top-p from the default.

Top-k is not exposed.

Nucleus sampling parameters alone cannot stop an AI from hallucinating, but they can keep the output on a path of low perplexity. When the temperature is set high, alternate token choices can be made that are not a good fit.
