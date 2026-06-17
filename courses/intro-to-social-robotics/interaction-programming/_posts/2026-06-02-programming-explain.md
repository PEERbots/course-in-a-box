---
title: 2. Explain - Interaction Programming
---

# 2. Explain - Interaction Programming

To automate our robot and link it to physical events, we connect a **Raspberry Pi Pico W** microcontroller to hardware buttons, connect it to Wifi, and program it to trigger speech over the **Peerbots API**.

---

## Core Concepts

Before we write code, let's look at the key concepts:

### 1. Functions
A **function** is a reusable block of code that performs a specific action. If you find yourself writing the same code more than twice, it's best to wrap it in a function. Functions can take inputs called **parameters**.

### 2. Application Programming Interfaces (APIs)
An **API** is a set of functions that allow developers to communicate with a service. We use the Peerbots API to trigger expressions on the robot face device programmatically.

### 3. API Keys
An **API Key** is a unique passcode string sent with every API request to authorize and identify who is sending the message. This tells the face device which account the trigger is coming from.

---

## Setting Up the API

### Method 1: The Interactive Docs (api.peerbots.org/docs)
1. Set up the robot face on **[app.peerbots.org/face](https://app.peerbots.org/face)** and note the username.
2. Go to the docs page at **[api.peerbots.org/docs](https://api.peerbots.org/docs)**.
3. Click **"Authorize"** in the top right corner and paste your API Key.
4. Try the `/v1/send-message/{username}` endpoint by entering parameters and clicking execute.

### Method 2: Python Scripting
You can run code to programmatically send messages to your face device:

```python
import requests

api_key = "YOUR_API_KEY"
username = "ROBOT_FACE_USERNAME"
url = f"https://api.peerbots.org/v1/send-message/{username}"

headers = {
    "Authorization": f"Bearer {api_key}",
    "Content-Type": "application/json"
}

payload = {
    "message": "Hello! I am a social robot."
}

response = requests.post(url, json=payload, headers=headers)
print("Response:", response.status_code, response.text)
```

---

## Video & Software Guides
- **[Getting Started with Raspberry Pi Pico](https://youtu.be/n79G9hO_x88)** (MicroPython tutorials for beginners)
- **[Thonny IDE Guide](https://thonny.org)** (Recommended environment for editing code on the Pi Pico)
- **[Picozero Library Docs](https://picozero.readthedocs.io)** (Helpers to access hardware buttons and LEDs)

---

{% include interactive_check.html statement="I authorize-tested the API endpoint in the documentation site" %}
{% include interactive_check.html statement="I ran a test script on my computer to trigger a speech message" %}

{% include interactive_textbox.html id="programming-api-reflections" label="What challenges did you face when connecting to the API or setting up the code parameters?" placeholder="Share your experience setting up parameters, authorization, or run errors..." %}
