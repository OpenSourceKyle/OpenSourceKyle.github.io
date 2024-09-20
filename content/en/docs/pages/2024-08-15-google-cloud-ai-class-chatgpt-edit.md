---
title: "Google Cloud AI Class (ChatGPT Edited Version)"
tags:
  - notes
---

<https://www.cloudskillsboost.google/paths/118>

# AI Notes - Introduction

### Generative AI
- **Types:** Text, image, audio, and fake data generation.
- **Definition:** AI is a branch of computer science focused on creating systems that think and act like humans.

### Machine Learning (ML)
- **Supervised Learning:** Involves labeled data. The model learns from past data to predict future outcomes. Errors are calculated by comparing predictions with expected results.
- **Unsupervised Learning:** Involves unlabeled data, focusing on discovering hidden patterns.
- **Discriminative Models:** Predict labels or new data points (e.g., identifying a picture of a dog).

### Large Language Models (LLMs)
- **Definition:** Learn patterns from unstructured data to generate new content.
- **Dependence:** Heavily reliant on training data.

### Deep Learning
- **Definition:** Uses artificial neural networks with multiple layers to predict patterns.
- **Semi-supervised Learning:** Combines a small amount of labeled data with a large amount of unlabeled data.
- **Generative Models:** Combine ML and Deep Learning to create new data or content.

### Not Generative AI:
- Numbers, discrete values, classes, probabilities.

### Generative AI:
- Natural language, images, audio.

### Key Concepts:
- **Transformers:** Models that process input to generate output. May produce "hallucinations" (inaccurate outputs).
- **Vertex AI:** Platform to build custom generative models and generate code from text.
- **Gemini:** A highly adaptable model.
- **Temperature:** A parameter to adjust the model's confidence, balancing accuracy and creativity.

---

# AI Notes - Large Language Models (LLM)

### Characteristics of LLMs:
- **Deep Learning-Based:** Utilize large datasets and numerous parameters.
- **Versatile:** Can perform various tasks with a single model.
- **Prompt Design:** Tailored to specific tasks.

### Types of Prompt Design:
- **Generic (Autocomplete):** Predicts the next word.
- **Instruction Tuned:** Follows instructions like summarization or style-based generation.
- **Dialog Tuned:** Fine-tunes outputs through interactive back-and-forth questions.

### Efficient Tuning Methods:
- **Parameter-Efficient Tuning:** Adds layers on top of a base model with custom data.
- **Prompt Tuning:** A parameter-efficient method focusing on prompt adjustments.

### Transformers:
- **Encoder:** Converts input into an intermediate representation.
- **Decoder:** Converts intermediate representations into output.
- **Example:** In language translation, the encoder converts English to an intermediate format, making translation to multiple languages more flexible.

### Attention Mechanism:
- Focuses on the relevance of each input token in generating the output.

### Emergent Abilities:
- LLMs are evolving from text prediction to more generalized tasks, with unexpected emergent abilities.

### Techniques:
- **Offline Inferences:** Cached model responses.
- **Distillation:** Simplified "student" models learn from more complex "teacher" models.

---

# Introduction to Responsible AI

### Key Considerations:
- **Limitations and Issues:** Recognize the limitations and potential unintended consequences of AI.
- **Ethics:** No universal standards; decisions are influenced by human values.

---

# Generative AI with Vertex AI: Prompt Design

### Best Practices:
- Be concise and specific.
- Focus on one task at a time.
- Include examples to improve response quality.
- Convert generative tasks into classification tasks to enhance safety.

### Using Examples or "Shots":
- **Chain of Thought Prompting:** Encourages the model to "show its work," improving accuracy.
- **0-Shot:** Add "Let's think step by step" to improve reasoning.

### Self-Consistency:
- Generates multiple output candidates with varying temperatures and selects the best one.

### ReAct:
- Interaction with live external systems, like querying current data from Wikipedia.

---

# Labs Notes - Nucleus Sampling

### Overview:
- **Nucleus Sampling:** Controls randomness and diversity in generated text.
- **Key Parameters:**
  - **Temperature:** Adjusts randomness; higher values increase diversity.
  - **Top-p (Nucleus):** Probability cutoff for token selection; lower values reduce diversity.
  - **Top-k:** Samples from the k most likely next tokens.

### Practical Advice:
- **Balancing Act:** Temperature increases variety, while top-p and top-k reduce variety and focus on top predictions.
- **OpenAI Recommendations:** Alter either temperature or top-p, but not both simultaneously.
- **Hallucinations:** Nucleus sampling alone cannot prevent hallucinations but can guide the model toward more plausible outputs.
