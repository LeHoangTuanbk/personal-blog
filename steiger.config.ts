import { defineConfig } from 'steiger';

export default defineConfig({
  rules: {
    // page-stubからモジュールをインポートしているにも関わらず、エラーが表示されてしまうため、一旦、オフにした
    'insignificant-slice': 'off',
  },
});
