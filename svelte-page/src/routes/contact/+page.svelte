<script lang="ts">
  import { PUBLIC_EMAIL, PUBLIC_RESPONSE_TIME } from "$env/static/public";
</script>

<h1>Contact</h1>

<p>
  <strong>Email:</strong>
  <a href="mailto:{PUBLIC_EMAIL}">{PUBLIC_EMAIL}</a>
</p>

<h2>Best for:</h2>
<ul>
  <li>Information requests</li>
  <li>Project engagement</li>
  <li>Technical consulting</li>
</ul>

<p><strong>Response:</strong> {PUBLIC_RESPONSE_TIME}</p>
