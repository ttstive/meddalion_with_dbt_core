{% macro to_sanke_case(string)%}
    {{ string | lower | replace(' ', '_') }}
{%endmacro%}