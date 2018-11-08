import { mount } from '@vue/test-utils';
import Zondicon from '@/components/Zondicon.vue';

describe('Zondicon.vue', () => {
  it('renders an icon', () => {
    const wrapper = mount(Zondicon, {
      propsData: { icon: 'arrow-left' },
    });
    expect(wrapper.contains('svg')).toBe(true);
    expect(wrapper.contains('polygon')).toBe(true);
  });
});
