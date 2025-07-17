---
title: Notes from Intro to AI with Google Cloud
date: 2024-08-15
tags:
  - notes
  - ai
  - google-cloud
image: /images/pages/igor-omilaev-eGGFZ5X2LnA-unsplash.jpg
image_caption: "@omilaev on Unsplash"
image_link: https://unsplash.com/@omilaev
description: "An overview of AI concepts, including Generative AI, Machine Learning, Large Language Models, and best practices for prompt design using Google Cloud's Vertex AI."
---

# Intro

For a while, I had had my head in the sand in regards to AI. I finally made the decision, after a few friends coaxed me into it, to give it a try. I asked around for some good ways to learn how to prompt AIs and got some "okay" recommendations. Given my background, I decided to give a free class a shot to interact with AI on the front and back end.

The following details are a serious of notes from that Google class; the link can be found at [the bottom](#action).

# Details

**Generative AI**: text, image, audio, fake data

AI is a discipline or branch of computer science focused on systems that think and act like humans.

---

**Machine Learning** (association of data and labels): learning from examples
- Trains models from input data without explicit programming:
  - **Supervised**: labeled data ==> usually past data to influence future data (predictions); output/prediction gets compared to expected output (checked) where the difference is error.
  - **Unsupervised**: unlabeled data (discovery).

**Discriminative model** (existing data): predicts labels or new points of data ==> creates a picture of a dog.

---

**Large Language Model (LLM)/Generative AI**:
- Learns patterns from unstructured data => creates data from what it has learned from existing content; DEPENDS heavily on training data.

**Deep Learning**:
- Uses artificial neural networks to predict patterns, usually with many layers:
  - **Semi-supervised**: a small amount of labeled data (supervised) and a large amount of unlabeled data (unsupervised).

**Generative model** (new data):
- Combines Machine Learning and Deep Learning with labeled and unlabeled data; CREATES new data/content ==> discerns this is a picture of a dog.

---

**NOT Generative AI**:
- Numbers
- Discrete
- Class
- Probability

**Generative AI**:
- Natural language
- Image
- Audio

**Types of Generative AI**:
- Language
- Image
- Audio
- Decisions

**Transformers**: input => output; but sometimes there are **hallucinations** (nonsense).

---

**Vertex AI models**: create your own generative models.
- Vertex AI: build code from text.
- Gemini: very adaptable.

---

**Temperature**: a variable to increase/decrease confidence in a model's response (accuracy vs. creativity).

## 2) AI Notes - LLM

**LLMs are Deep Learning models**:
- **L**: large training dataset and parameters.
- A single model can be used for different tasks.
- Focused on prompt design (using pre-trained APIs).

**Machine Learning**:
- Resource-heavy: needs ML expertise, training examples, model lacks training, and computer time.

**Prompt Design** (general): tailored to a specific task. 
**Prompt Engineering** (specialized): creating a prompt to improve performance -- "Prompt engineering is the art of asking the right question to get the best output from an LLM."

**Types of Prompting**:
- **Generic** (autocomplete): next word predictor.
- **Instruction-tuned**: summarize, generate in the style of.
- **Dialog-tuned**: VARIOUS questions to fine-tune the output (back and forth).

**More Efficient**:
- **Parameter-efficient tuning**: base model stays the same, and layers or wrappers are added on top with custom data.
- **Prompt tuning**: a parameter-efficient tuning method.

**Transformers**:
- **Encoder**: converts input into intermediate representation.
- **Decoder**: converts intermediate to output.
- Example: for language translation, the encoder takes English to the intermediate (not a natural language), which allows decoders to more easily translate to any other language (more flexible than 1-to-1 translation from English to, say, Spanish -- what about French?).

**Attention**:
- How much does each token of input matter or is relevant?

LLMs are useful for next text prediction but are becoming more useful for other generalized tasks (e.g., summarization) -- emergent abilities are unexpected or unpredictable phenomena.

**Offline Inferences**: cached responses.
**Distillation**: "student" models learn from a "teacher" model instead of a dataset.

## 3) Intro to Responsible AI

- **Limitations**
- **Issues**
- **Unintended consequences**

No universal definition or practices at this moment.
People design and build the machines and select the data used.
Decisions are influenced by values.

## 4) Generative AI w/ Vertex AI: Prompt Design

**Best Practices**:
- Be concise.
- Be specific and well-defined.
- Ask one task at a time.
- Improve response quality by including examples.
- Turn generative tasks into classification tasks to improve safety.

### Using Examples or "Shots"

Examples of data or prompts can yield better results, though generally, only 1-5 examples are recommended so that the model does not try to overfit the result.

* **Chain of Thought Prompting**: a good way to get the model to *show its work* to prove the answer instead of just providing the final result:

```python
## Example of 1-shot prompt (1 example)
prompt = """
Q: Rob has 7 apples. He buys two more buckets, 
   where each bucket has 6 apples each. How many 
   apples total does he have afterwards?
A: So, he has 7 + 6 + 6 = 19 apples in total.
Q: ...
A: ...
"""
```

#### For 0-shot (no examples)

**Add** "*Let's think step by step*" to the end of a question. This can also be helpful with 1=< shots.

#### Self-Consistency

Self-consistency generates multiple candidates for the results, varying the *temperature* of each one, and then compares or picks the best candidate.

```python
question = """
The cafeteria had 23 apples.
If they used 20 to make lunch and bought 6 more, 
how many apples do they have?
"""

context = """
Answer questions showing the full math and reasoning.
Follow the pattern in the example.
"""

one_shot_exemplar = """
Example Q: Roger has 5 tennis balls. He buys 2 more 
cans of tennis balls. Each can has 3 tennis balls. 
How many tennis balls does he have now?

A: Roger started with 5 balls. 2 cans of 3 tennis 
   balls each is 6 tennis balls. 5 + 6 = 11.
   The answer is 11.

Q: """
```

#### ReAct (Interact with External Systems)

For example, this could query the current date or a live Wikipedia page to ask what famous person died today (current date) and querying Wikipedia.

## 5) Labs Notes

### Nucleus Sampling

Nucleus sampling is a technique used in large language models to control the randomness and diversity of generated text. It works by sampling from only the most likely tokens in the model's predicted distribution.

**The key parameters are**:
- **Temperature**: controls randomness; higher values increase diversity.
- **Top-p (nucleus)**: the cumulative probability cutoff for token selection. Lower values mean sampling from a smaller, more top-weighted nucleus.
- **Top-k**: sample from the k most likely next tokens at each step. Lower k focuses on higher probability tokens.

In general:
- Higher temperature will make outputs more random and diverse.
- Lower top-p values reduce diversity and focus on more probable tokens.
- Lower top-k also concentrates sampling on the highest probability tokens for each step.

So, temperature increases variety, while top-p and top-k reduce variety and focus samples on the model's top predictions. You have to balance diversity and relevance when tuning these parameters for different applications.

OpenAI recommends only altering either temperature or top-p from the default.

Top-k is not exposed.

Nucleus sampling parameters alone cannot stop an AI from hallucinating, but they can keep the output on a path of low perplexity. When the temperature is set high, alternate token choices can be made that are not a good fit.

# Action

Do Google's [Beginner: Introduction to Generative AI Learning Path](https://www.cloudskillsboost.google/paths/118) for yourself!