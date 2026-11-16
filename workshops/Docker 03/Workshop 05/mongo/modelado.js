const tienda = db.getSiblingDB("tienda");
tienda.dropDatabase();

tienda.createCollection("products");
tienda.createCollection("customers");
tienda.createCollection("orders");

tienda.products.insertMany([
  { _id: 1, name: "Laptop", price: 3500000 },
  { _id: 2, name: "Mouse", price: 50000 },
  { _id: 3, name: "Teclado", price: 120000 }
]);

tienda.customers.insertMany([
  { _id: 1, name: "Ana Torres", email: "ana.torres@example.com" },
  { _id: 2, name: "Carlos Ruiz", email: "carlos.ruiz@example.com" }
]);

tienda.orders.insertMany([
  {
    customerId: 1,
    date: ISODate("2026-08-24T00:00:00Z"),
    items: [
      { product: "Laptop", quantity: 1 },
      { product: "Mouse", quantity: 2 }
    ]
  },
  {
    customerId: 2,
    date: ISODate("2026-08-25T00:00:00Z"),
    items: [{ product: "Teclado", quantity: 1 }]
  }
]);