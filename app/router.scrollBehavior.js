export default function (to, from, savedPosition) {
  return new Promise(resolve => {
    window.$nuxt.$once('triggerScroll', () => {
      resolve({ x: 0, y: 0 })
    })
  })
}
