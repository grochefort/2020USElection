#!/bin/bash

curl 'https://data.api.cnn.io/graphql' \
	  -H 'authority: data.api.cnn.io' \
	  -H 'pragma: no-cache' \
	  -H 'cache-control: no-cache' \
	  -H 'sec-ch-ua: "Google Chrome";v="89", "Chromium";v="89", ";Not A Brand";v="99"' \
	  -H 'accept: */*' \
	  -H 'x-graphql-query-uuid: livestory---PostsWithGraph{"livestory_id":"h_f887fc510d5e8ae829971ae452386965","startId":null}---6cfb637bd4a95bb97e5bd7ba14b0415b7a76d0dfdc83caf87662b319f1354af9' \
	  -H 'sec-ch-ua-mobile: ?0' \
	  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36' \
	  -H 'x-api-key: P7LEOCujzt2RqSaWBeImz1spIoLq7dep7x983yQc' \
	  -H 'content-type: application/json' \
	  -H 'origin: https://www.cnn.com' \
	  -H 'sec-fetch-site: cross-site' \
	  -H 'sec-fetch-mode: cors' \
	  -H 'sec-fetch-dest: empty' \
	  -H 'referer: https://www.cnn.com/' \
	  -H 'accept-language: en-US,en;q=0.9,fr-FR;q=0.8,fr;q=0.7' \
	  --data-raw '{"operationName":"PostsWithGraph","variables":{"livestory_id":"h_f887fc510d5e8ae829971ae452386965","startId":null},"query":"query PostsWithGraph($livestory_id: String) {\n  getLivestoryWebData(livestory_id: $livestory_id) {\n    id\n    lastPublishDate\n    lastPublishDateFormatted\n    activityStatus\n    pinnedPosts {\n      id\n      lastPublishDate\n      __typename\n    }\n    unpinnedPosts {\n      id\n      sourceId\n      lastPublishDate\n      lastPublishDateFormatted\n      headline\n      byline\n      content\n      tags\n      __typename\n    }\n    tags\n    __typename\n  }\n}\n"}' \
	  --compressed > 05.json


cat 05.json | jq '[.data.getLivestoryWebData.unpinnedPosts[].content[].elements[].target | select(.type=="video") | [.id, .type, .cdnUrls.embedded_cc, .firstPublishDate, .sourceId, .attributes.thumbUrl]]' > livestory05.json


curl 'https://data.api.cnn.io/graphql' \
	  -H 'authority: data.api.cnn.io' \
	  -H 'pragma: no-cache' \
	  -H 'cache-control: no-cache' \
	  -H 'sec-ch-ua: "Google Chrome";v="89", "Chromium";v="89", ";Not A Brand";v="99"' \
	  -H 'accept: */*' \
	  -H 'x-graphql-query-uuid: livestory---PostsWithGraph{"livestory_id":"h_834c94272fb36b70380195e1c7256113","startId":null}---fa2bffb0f77f457aed29f5c99641e0702b17d0461834e0a45f0af2ab62ce1fa8' \
	  -H 'sec-ch-ua-mobile: ?0' \
	  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36' \
	  -H 'x-api-key: P7LEOCujzt2RqSaWBeImz1spIoLq7dep7x983yQc' \
	  -H 'content-type: application/json' \
	  -H 'origin: https://www.cnn.com' \
	  -H 'sec-fetch-site: cross-site' \
	  -H 'sec-fetch-mode: cors' \
	  -H 'sec-fetch-dest: empty' \
	  -H 'referer: https://www.cnn.com/' \
	  -H 'accept-language: en-US,en;q=0.9,fr-FR;q=0.8,fr;q=0.7' \
	  --data-raw '{"operationName":"PostsWithGraph","variables":{"livestory_id":"h_834c94272fb36b70380195e1c7256113","startId":null},"query":"query PostsWithGraph($livestory_id: String) {\n  getLivestoryWebData(livestory_id: $livestory_id) {\n    id\n    lastPublishDate\n    lastPublishDateFormatted\n    activityStatus\n    pinnedPosts {\n      id\n      lastPublishDate\n      __typename\n    }\n    unpinnedPosts {\n      id\n      sourceId\n      lastPublishDate\n      lastPublishDateFormatted\n      headline\n      byline\n      content\n      tags\n      __typename\n    }\n    tags\n    __typename\n  }\n}\n"}' \
	  --compressed > 06.json


cat 06.json | jq '[.data.getLivestoryWebData.unpinnedPosts[].content[].elements[].target | select(.type=="video") | [.id, .type, .cdnUrls.embedded_cc, .firstPublishDate, .sourceId, .attributes.thumbUrl]]' > livestory06.json


curl 'https://data.api.cnn.io/graphql' \
	  -H 'authority: data.api.cnn.io' \
	  -H 'pragma: no-cache' \
	  -H 'cache-control: no-cache' \
	  -H 'sec-ch-ua: "Google Chrome";v="89", "Chromium";v="89", ";Not A Brand";v="99"' \
	  -H 'accept: */*' \
	  -H 'x-graphql-query-uuid: livestory---PostsWithGraph{"livestory_id":"h_0b89b5cffc92d90ef342dffa0053185f","startId":null}---a1c3c4c9a78f17cf330aee068136423a9273eee282f2f86d4e9ab8bd678b302f' \
	  -H 'sec-ch-ua-mobile: ?0' \
	  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36' \
	  -H 'x-api-key: P7LEOCujzt2RqSaWBeImz1spIoLq7dep7x983yQc' \
	  -H 'content-type: application/json' \
	  -H 'origin: https://www.cnn.com' \
	  -H 'sec-fetch-site: cross-site' \
	  -H 'sec-fetch-mode: cors' \
	  -H 'sec-fetch-dest: empty' \
	  -H 'referer: https://www.cnn.com/' \
	  -H 'accept-language: en-US,en;q=0.9,fr-FR;q=0.8,fr;q=0.7' \
	  --data-raw '{"operationName":"PostsWithGraph","variables":{"livestory_id":"h_0b89b5cffc92d90ef342dffa0053185f","startId":null},"query":"query PostsWithGraph($livestory_id: String) {\n  getLivestoryWebData(livestory_id: $livestory_id) {\n    id\n    lastPublishDate\n    lastPublishDateFormatted\n    activityStatus\n    pinnedPosts {\n      id\n      lastPublishDate\n      __typename\n    }\n    unpinnedPosts {\n      id\n      sourceId\n      lastPublishDate\n      lastPublishDateFormatted\n      headline\n      byline\n      content\n      tags\n      __typename\n    }\n    tags\n    __typename\n  }\n}\n"}' \
	  --compressed > 07.json


cat 07.json | jq '[.data.getLivestoryWebData.unpinnedPosts[].content[].elements[].target | select(.type=="video") | [.id, .type, .cdnUrls.embedded_cc, .firstPublishDate, .sourceId, .attributes.thumbUrl]]' > livestory07.json