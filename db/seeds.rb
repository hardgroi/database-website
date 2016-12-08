User.new(email: "hardgrove.22@osu.edu", address: "55 E 13th Ave, Columbus, OH 43201", first_name: "Ian", last_name: "Hardgrove", password: "jamesb007").save

# 1 book
Book.new(isbn: 1781109605, price: 12.99, title: 'Fantastic Beasts and Where to Find Them', year: '2016', qty_on_order: 50, qty_in_stock: 50).save
Author.new(first_name: 'J.K.', last_name: 'Rowling').save
Publisher.new(pub_name: 'Scholastic, Inc.').save
BookPub.new(isbn_id: 1781109605, publisher_id: 1).save
BookAuth.new(author_id: 1, book_id: 1781109605).save
BookCategory.new(isbn_id: 1781109605, category: 'Fantasy').save

# 2 book
Book.new(isbn: 782140661, price: 104.97, title: 'OCP: Oracle9i Certification Kit', year: '2002', qty_on_order: 1, qty_in_stock: 10).save
BookCategory.new(isbn_id: 782140661, category: 'computer').save
BookAuth.new(author_id: 2, book_id: 782140661).save
BookAuth.new(author_id: 3, book_id: 782140661).save
BookAuth.new(author_id: 4, book_id: 782140661).save
BookAuth.new(author_id: 5, book_id: 782140661).save
BookAuth.new(author_id: 6, book_id: 782140661).save
Author.new(first_name: 'Chip', last_name: 'Dawes').save
Author.new(first_name: 'Biju', last_name: 'Thomas').save
Author.new(first_name: 'Doug', last_name: 'Stuns').save
Author.new(first_name: 'Matthew', last_name: 'Weishan').save
Author.new(first_name: 'Joseph', last_name: 'Johnson').save
BookPub.new(isbn_id: 782140661, publisher_id: 2).save
Publisher.new(pub_name: 'Sybex', address: '1234 1st Street Columbus Ohio 43614').save

# 3 book
Book.new(isbn: 72227885, price: 34.99, title: "SQL Server 2000 for Experienced DBA's", year: '2003', qty_on_order: 0, qty_in_stock: 4).save
BookCategory.new(isbn_id: 72227885, category: "Computer").save
BookAuth.new(author_id: 7, book_id: 72227885).save
Author.new(first_name: 'Brian', last_name: 'Knight').save
BookPub.new(isbn_id: 72227885, publisher_id: 3).save
Publisher.new(pub_name:'McGraw-Hill Osborne Media', address: '1235 2nd Street Cleveland Ohio 43216').save

# 4 book
Book.new(qty_on_order: 6,year: '2002', qty_in_stock: 10, title: 'The Data Warehouse Toolkit: The Complete Guide to Dimensional Modeling', price: 50.00, isbn: 471200247).save
BookCategory.new(isbn_id: 471200247, category: 'Computer').save
BookAuth.new(book_id: 471200247, author_id: 8).save
BookAuth.new(book_id: 471200247, author_id: 9).save
Author.new(first_name: 'Ralph', last_name: 'Kimball').save
Author.new(first_name: 'Margy',	last_name: 'Ross').save
BookPub.new(isbn_id: 471200247, publisher_id: 4).save
Publisher.new(pub_name: 'John Wiley & Sons', address: '1236 3rd Street Cincinatti Ohio 43513').save

# 5 book
Book.new(qty_on_order: 6, year: '2003', qty_in_stock: 10, title: "How To Do Everything with Your Tablet PC", price: 17.49, isbn: 72227710).save
BookCategory.new(isbn_id: 72227710, category:'Computer').save
BookAuth.new(book_id: 72227710, author_id: 10).save
Author.new(first_name: 'Bill', last_name:'Mann').save
BookPub.new(isbn_id: 72227710, publisher_id: 2).save

# 6 book
Book.new(qty_on_order: 5, year: '1999', qty_in_stock: 10, title: 'Data Mining: Practical Machine Learning Tools and Techniques with Java Implementations', price: 49.95, isbn: 1558605525).save
BookCategory.new(isbn_id: 1558605525, category: 'Computer').save
BookAuth.new(book_id: 1558605525, author_id: 11).save
BookAuth.new(book_id: 1558605525, author_id: 12).save
Author.new(first_name: 'Ian', middle_name: 'H.', last_name: 'Witten').save
Author.new(first_name: 'Eibe', last_name: 'Frank').save
BookPub.new(isbn_id: 1558605525, publisher_id: 5).save
Publisher.new(pub_name: 'Morgan Kaufmann', address: '1237 4th Street Columbus Ohio 43614').save
