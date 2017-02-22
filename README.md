# README

Instructions for running BonobosAPI:

clone BonobosAPI

cd into BonobosAPI

run bundle

run rails s in terminal
^this will run the API

open a new tab, cd into /client/app

run ruby -run -e httpd . -p 9000
^this will run the front end

open http://localhost:9000/#!/home in your browser



My approach:

I wanted an opportunity to use Rails 5, since I know Rails 5 came with an API-only setup. I chose Angular for my frontend because I have experience with it, and wanted to brush up on my old skills. I broke out the CSVs into three tables, thinking it would be easier to have separate tables for products, inventories, and styles. This resulted in some issues with my associations (grabbing styles and inventories from an individual product), and I had to manually create the association in my serializer. Prior to solving this problem, a given product showed a style_id, but didn't provide the associated name of that style for visual purposes in the view (same for inventory). Given this issue, I'd choose not to break out styles into their own table in the future, and I'd try a NoSQL database, since I don't recall having an issue like this when I worked in the MEAN stack previously. After doing some research, I found that this is a common problem in Rails 5. I'd also spend a little more time using custom filters for the view in the front end - sorting by size instead of just listing the four products, then showing available products and styles according to that size. This would make for a better customer experience, since I wouldn't want to see products that aren't available in my size.