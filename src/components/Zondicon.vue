<template>
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" :class="$attrs.class">
    <component :is="$attrs.icon" />
  </svg>
</template>

<script>
import icons from '../zondicons';

export default {
  name: 'Zondicon',
  components: {
    ...icons,
  },
};
</script>
