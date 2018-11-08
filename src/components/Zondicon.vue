<template>
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" :class="$attr.class">
    <component :is="$attr.icon" />
  </svg>
</template>

<script>
import icons from '../zondicons';

export default {
  name: 'Zondicon',
  components: {
    ...icons
  }
};
</script>

