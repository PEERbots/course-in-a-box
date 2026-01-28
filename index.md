---
layout: index
published: true
---

### Available Courses

{% for course in site.data.courses %}
- **[{{ course.title }}]({{ site.baseurl }}/courses/{{ course.id }}/)** - {{ course.description }}
{% endfor %}

<br>

#### Thanks to P2PU

We would like to thank [P2PU](p2pu.org) for creating [Course-in-a-Box](https://github.com/p2pu/course-in-a-box) which was used to develop this platform.
