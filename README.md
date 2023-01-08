# Captrack

Keep track of BOMs purchased from digikey and what projects end up using it.


## Why

Need to properly learn Rails. Also want to create a little database program.

## Req.

- Ruby 3.2.0
- Rails 7.0.4
- MySQL 8

## Docker

Access DB:
```
mysql -h127.0.0.1 -pdev -uroot
```

TODO: Deploy product live on Docker, also on old school capistrano

## Schema

Start with replicating DigiKey for Products.
Then create new model of Project. Project can require many Products to complete.
A User has an Inventory. An Inventory is the quantity of Products he/she has on hand.
User has many Products. Products can decrement Inventories.

## Interaction

Website is driven by basic static pages for now. Add React + API later for use on Mobile.

## Future ideas

- Digikey Integration
 - Check quantity
 - Direct Ordering