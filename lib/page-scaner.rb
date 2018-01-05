require "pdfkit"
 
PDFKit.new('https://code.tutsplus.com/tutorials/generating-pdfs-from-html-with-rails--cms-22918', :page_size => 'A3').to_file('../tmp/tutorial.pdf')

