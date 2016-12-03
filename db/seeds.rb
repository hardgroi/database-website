User.new(email: "hardgrove.22@osu.edu", address: "55 E 13th Ave, Columbus, OH 43201", first_name: "Ian", last_name: "Hardgrove", password: "jamesb007").save

Book.new(isbn: 1781109605, price: 12.99,
          title: 'Fantastic Beasts and Where to Find Them',
          year: '2016', qty_on_order: 50, qty_in_stock: 50).save

Author.new(first_name: 'J.K.', last_name: 'Rowling').save

Publisher.new(pub_name: 'Scholastic, Inc.').save

BookPub.new(isbn_id: 1781109605, publisher_id: 1).save

BookAuth.new(author_id: 1, book_id: 1781109605).save

BookCategory.new(isbn_id: 1781109605, category: 'Fantasy').save
