require "erb"
require "pdfkit"

class Generator

  attr_reader :full_name, :template

  def initialize(name, surname)
    @full_name = %{#{name} #{surname}}
    @template = File.read("../templates/doc.html.erb")
  end

  def render
    html = ERB.new(template).result(binding)
    PDFKit.new(html, :page_size => 'A3').to_file("../tmp/doc.pdf")
  end
end

Generator.new("Alex", "Miasoiedov").render

