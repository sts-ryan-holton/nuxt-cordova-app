import * as path from 'path'
import serveStatic from 'serve-static'

const rootAssetDir = path.resolve(__dirname, '../../.nuxt/dist/client')
const serveAssets = serveStatic(rootAssetDir)

export default function(req, res, next) {
  // add CORS headers
  res.setHeader('Access-Control-Allow-Origin', '*')
  res.setHeader('Vary', 'Origin')

  // remove _pwa_assets from path
  req.originalUrl = req.originalUrl.replace('/nuxtfiles', '')

  return serveAssets(req, res, next)
}
