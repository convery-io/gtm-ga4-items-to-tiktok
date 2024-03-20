___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "GA4 items to TikTok contents",
  "description": "This GTM Variable Template translates GA4 ecommerce items array into corresponding TikTok contents array, facilitating the integration of a single \"ecommerce\" TikTok Pixel tag within Google Tag Manage",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "items",
    "displayName": "Variabile items",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_SERVER___

const items = data.items;
if(items.length > 0){
  var contents = [];
  items.forEach(function(item) {
    var categories = [];
    if (item.item_category) categories.push(item.item_category);
    if (item.item_category2) categories.push(item.item_category2);
    if (item.item_category3) categories.push(item.item_category3);
    if (item.item_category4) categories.push(item.item_category4);
    var content = {
      content_id: item.item_id,
      content_name: item.item_name,
      content_category: categories.join(" > "),
      brand: item.item_brand,
      price: item.price,
      quantity: item.quantity
    };
    contents.push(content);
  });
  return contents;
} else {
  return "no items object was provided";
}


___TESTS___

scenarios: []


___NOTES___

Created on 20/3/2024, 16:14:09


