module.exports = {
  root: true,
  env: { browser: true, es2020: true },
  extends: [
    'eslint:recommended',
    'plugin:@typescript-eslint/recommended',
    'plugin:react-hooks/recommended',
    'plugin:storybook/recommended',
    'prettier',
  ],
  ignorePatterns: [
    'dist',
    '.eslintrc.cjs',
    'src/shared/api/apollo-client/generated/',
    'plop-templates/',
    'public/tinymce/**',
  ],
  parser: '@typescript-eslint/parser',
  settings: {
    'import/resolver': {
      typescript: {
        alwaysTryTypes: true,
      },
    },
  },
  plugins: [
    'react-refresh',
    'unicorn',
    'vitest',
    'unused-imports',
    'import',
    'react',
  ],
  rules: {
    'react-refresh/only-export-components': [
      'warn',
      { allowConstantExport: true },
    ],
    'react-hooks/rules-of-hooks': 'error',
    'react-hooks/exhaustive-deps': 'error',
    'no-console': 'warn',
    '@typescript-eslint/no-unused-vars': [
      'error',
      {
        argsIgnorePattern: '^_',
        varsIgnorePattern: '^_',
        caughtErrorsIgnorePattern: '^_',
      },
    ],
    '@typescript-eslint/naming-convention': [
      'error',
      {
        selector: 'variable',
        format: ['camelCase', 'PascalCase', 'UPPER_CASE'],
        leadingUnderscore: 'allow',
      },
      {
        selector: 'parameter',
        format: ['camelCase'],
        leadingUnderscore: 'allow',
      },
      {
        selector: 'function',
        format: ['camelCase', 'PascalCase'],
      },
      {
        selector: 'method',
        format: ['camelCase', 'PascalCase'],
        leadingUnderscore: 'allow',
      },
      {
        selector: 'class',
        format: ['PascalCase'],
      },
      {
        selector: 'interface',
        format: ['PascalCase'],
      },
      {
        selector: 'typeAlias',
        format: ['PascalCase'],
      },
    ],
    // anyの使用を警告
    '@typescript-eslint/no-explicit-any': 'warn',
    // 使ってないimportのチェック
    'unused-imports/no-unused-imports': 'error',

    // 配列操作系
    'unicorn/prefer-includes': 'warn',
    'unicorn/prefer-array-find': 'warn',
    'unicorn/prefer-array-flat-map': 'warn',
    'unicorn/prefer-array-some': 'warn',

    // エラーの変数名
    'unicorn/catch-error-name': [
      'error',
      {
        name: 'error',
      },
    ],

    // 関数を最上位スコープで定義
    'unicorn/consistent-function-scoping': 'error',

    ////////////////////////////////
    // General
    ////////////////////////////////

    // constを推奨
    'prefer-const': 'error',
    'no-var': 'error',

    // use {} instead of new Object()
    'no-new-object': 'error',

    // https://eslint.org/docs/latest/rules/object-shorthand
    'object-shorthand': 'error',

    // https://eslint.org/docs/latest/rules/quote-props
    'quote-props': ['error', 'as-needed'],

    // use [] instead of new Array()
    'no-array-constructor': 'error',

    // https://eslint.org/docs/latest/rules/prefer-destructuring
    'prefer-destructuring': [
      'error',
      {
        array: false,
        object: true,
      },
      {
        enforceForRenamedProperties: false,
      },
    ],

    // bad: 'How are you, ' + name + '?'
    // good: `How are you, ${name}?`
    'prefer-template': 'error',

    // 関数名を正しくつける
    // https://eslint.org/docs/latest/rules/func-names
    'func-names': 'error',

    // arrow functionの使用を推奨
    'prefer-arrow-callback': 'error',

    // propertyには "." アクセスする
    'dot-notation': 'error',

    // avoid ++ / --
    'no-plusplus': 'error',

    // use === instead of == / !== instead of !=
    eqeqeq: 'error',

    // 3項演算子のネストを禁止
    'no-nested-ternary': 'error',
    // 不要な3項演算子を禁止
    'no-unneeded-ternary': 'error',

    // elseの利用が不要な場合はreturnする
    'no-else-return': 'error',

    // importの依存関係を制限
    // TODO: eslint-plugin-strict-dependenciesを使う

    // it ではなく test の使用を強制
    'vitest/consistent-test-it': ['error', { fn: 'test' }],
    // import の並び順を設定
    'import/order': [
      'warn',
      {
        groups: [
          'builtin',
          'external',
          'internal',
          ['parent', 'sibling'],
          'object',
          'type',
          'index',
        ],
        'newlines-between': 'always',
        pathGroupsExcludedImportTypes: ['builtin'],
        alphabetize: { order: 'asc', caseInsensitive: true },
        pathGroups: [
          {
            pattern: '@{app,entities,features,pages,shared,widgets}/**',
            group: 'internal',
            position: 'after',
          },
        ],
      },
    ],

    'react/jsx-curly-brace-presence': [
      'error',
      {
        props: 'never', // Force user to use quotes for static string props
        children: 'ignore', // Ignore this rule for children
        propElementValues: 'always', // Always use curly braces for dynamic prop values
      },
    ],
  },
};
