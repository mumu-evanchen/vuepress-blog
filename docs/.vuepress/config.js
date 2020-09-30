module.exports = {
  base: '/vuepress-blog/',
  title: 'Hello Vuepress',
  description: 'an example',
  head: [['link', { rel: 'icon', href: '/favicon.ico' }]],
  cache: false,
  extraWatchFiles: [
    '.vuepress/config.js', // 使用相对路径
    '/docs/.vuepress/config.js', // 使用绝对路径
  ],
  themeConfig: {
    logo: './public/logo.svg',
  },
}
