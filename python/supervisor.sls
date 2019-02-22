{%- if grains['os'] != 'Windows' %}
include:
  - python.pip
{%- endif %}

supervisor:
  pip2.installed:
    - name: supervisor
  {%- if grains['os'] != 'Windows' %}
    - require:
      - cmd: pip-install
  {%- endif %}
