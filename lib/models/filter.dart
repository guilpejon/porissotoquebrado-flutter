enum OrderBy { DATE, PRICE, FAVORITE }

const VENDOR_NAME_AMAZON = 1 << 0;
const VENDOR_NAME_ALIEXPRESS = 1 << 1;
const VENDOR_NAME_AMERICANAS = 1 << 2;
const VENDOR_NAME_SUBMARINO = 1 << 3;
const VENDOR_NAME_SHOPTIME = 1 << 4;
const VENDOR_NAME_MAGALU = 1 << 5;

class Filter {
  Filter({
    this.search,
    this.orderBy = OrderBy.DATE,
    this.minPrice,
    this.maxPrice,
    this.vendorName = VENDOR_NAME_AMAZON |
        VENDOR_NAME_ALIEXPRESS |
        VENDOR_NAME_AMERICANAS |
        VENDOR_NAME_MAGALU,
  });

  String search;

  OrderBy orderBy;
  int minPrice;
  int maxPrice;
  int vendorName;
}
