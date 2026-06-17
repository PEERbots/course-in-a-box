---
title: 2. Explain - Interaction Prototyping
---

# 2. Explain - Interaction Prototyping

To prototype robot interactions without writing complex code, we can use the **Peerbots Platform**. This allows us to connect a device as the robot's face and control it remotely using another device as the controller. This is just like a remote controller and a car, except the car is now a robot, and our controller is another device.

---

## Peerbots Setup Guide

Follow these steps to set up and connect your prototyping devices:

### Step 1: Set Up the Robot Face
1. On your designated face device (such as a tablet or phone), navigate to **[app.peerbots.org/face](https://app.peerbots.org/face)**.
2. Sign in to your Peerbots account to persist your settings.
3. Select **"Allow Speech"** and configure the face appearance and text-to-speech voice parameters.

### Step 2: Connect the Controller Dashboard
1. On your designated controller device (such as a laptop), go to **[app.peerbots.org/dash/robot](https://app.peerbots.org/dash/robot)**.
2. **Option A (Same Account)**: If both devices are on the same account, click **"Call your Peerbots"**.
3. **Option B (Different Accounts)**: Enter the username or email address of the account signed in on the face device and click **"Call"**.
4. Accept the incoming call request on the face device.

### Step 3: Test the Interface
- Navigate to **[app.peerbots.org/dash/control/](https://app.peerbots.org/dash/control/)**.
- Click any command button to verify the face device animates and speaks the button's content.

---

## Content Authoring Methods

To make control seamless during interactions, you can prepare buttons beforehand. Peerbots offers three authoring interfaces:

- **Bulk Author**: Best for pasting and parsing an entire script. It automatically splits lines into separate buttons.
- **Table View**: Best for making bulk changes to button colors, tags, and emotions.
- **Button Editor**: Best for fine-tuning individual button texts, positions, or sound properties.

> [!TIP]
> Before authoring, review the **[Peerbots Content Authoring Guidelines](https://docs.google.com/document/d/1OuuhuPrlIWlhrXEF_3tie8YI4bf3-kQNTYyFWuVF2l4/edit?tab=t.0#heading=h.5p1o4txvfvvd)** for best practices.

---

{% include interactive_check.html statement="I have read the Peerbots Setup Guide" %}
