---
layout: index
published: true
---

<div class="container py-4">
  <div class="row mb-5">
    <div class="col-12 text-center">
      <p class="lead">
        <a href="https://peerbots.org">Peerbots</a> is building social robots for everyone, powered by experts like you! We make it possible for non-roboticists to get started with social robots through the <a href="https://app.peerbots.org">Peerbots Platform</a>, even without access to what you might traditionally think of as a robot.
      </p>
    </div>
  </div>

  <div class="row">
    {% for course in site.data.courses %}
    <div class="col-md-6 mb-4">
      <div class="card h-100 shadow-sm border-0">
        {% if course.image %}
        <div style="height: 250px; overflow: hidden;">
          <img src="{{ site.baseurl }}/{{ course.image }}" class="card-img-top" alt="{{ course.title }}" style="width: 100%; height: 100%; object-fit: cover;">
        </div>
        {% endif %}
        <div class="card-body d-flex flex-column">
          <h3 class="card-title">{{ course.title }}</h3>
          <p class="card-text text-muted">{{ course.description }}</p>
          <div class="mt-auto">
            {% capture first_module_id %}{{ course.modules[0].id }}{% endcapture %}
            {% capture start_url %}{% include get_first_post_url.html course_id=course.id module_id=first_module_id %}{% endcapture %}
            <a href="{{ start_url | strip }}" class="btn btn-primary text-white btn-lg btn-block">Start Course</a>
          </div>
        </div>
      </div>
    </div>
    {% endfor %}
  </div>

  <div class="row mt-5">
    <div class="col-12">
      <hr>
      <p class="text-muted small">
        <strong>Thanks to P2PU</strong> - We would like to thank <a href="http://p2pu.org">P2PU</a> for creating <a href="https://github.com/p2pu/course-in-a-box">Course-in-a-Box</a> which was used to develop this platform.
      </p>
    </div>
  </div>
</div>
