<script lang="ts">
  import ContactCard from "$lib/components/ContactCard/ContactCard.svelte";
  import { PUBLIC_RESPONSE_TIME, PUBLIC_EMAIL } from "$env/static/public";
</script>

<ContactCard
  email={PUBLIC_EMAIL}
  useFor="General inquiries"
  responseTime={PUBLIC_RESPONSE_TIME}
/>
