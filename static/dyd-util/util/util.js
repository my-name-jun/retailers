import dydUtil from '../lib/axios'
import serveUrl from './url'
let util=new dydUtil(serveUrl).util

import user from './api/user'
import adress from './api/adress'
let api= Object.assign(
    user,adress
)

export {
    util,
    api
}
