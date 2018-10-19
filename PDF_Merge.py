import os
from PyPDF2 import PdfFileMerger

pdfs = os.listdir()
pdfs.pop()

merger = PdfFileMerger()

for pdf in pdfs:
    merger.append(open(pdf, 'rb'))

with open('result.pdf', 'wb') as fout:
    merger.write(fout)
