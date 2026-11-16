db = db.getSiblingDB('tienda');

db.products.insertMany([
  { name: 'Laptop', price: 3500000, stock: 5 },
  { name: 'Mouse', price: 80000, stock: 20 },
  { name: 'Keyboard', price: 150000, stock: 12 }
]);

db.customers.insertMany([
  { name: 'Ana', email: 'ana@example.com' },
  { name: 'Luis', email: 'luis@example.com' }
]);