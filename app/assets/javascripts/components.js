// Manually add components to window and global
// so that react_ujs can find them and render them.

// Global components
window.SearchBox      = global.SearchBox      = require('./components/search_box.es6.jsx').default
window.SortableHeader = global.SortableHeader = require('./components/sortable_header.es6.jsx').default
window.DropDownFilter = global.DropDownFilter = require('./components/drop_down_filter.es6.jsx').default
window.NavTab         = global.NavTab         = require('./components/nav_tab.es6.jsx').default

// Page components
window.ProductMain       = global.ProductMain       = require('./components/products.es6.jsx').default
window.InventoryMain     = global.InventoryMain     = require('./components/inventories.es6.jsx').default
window.StoreMain         = global.StoreMain         = require('./components/stores.es6.jsx').default
window.BrandMain         = global.BrandMain         = require('./components/brands.es6.jsx').default
window.StoreLocationMain = global.StoreLocationMain = require('./components/store_locations.es6.jsx').default

window.ProductBucket = {}
window.ProductBucket.ProductSearch = global.ProductBucket.ProductSearch = require('./components/product_bucket/product_search.es6.jsx').default
