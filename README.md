UAS STATISTIKA DAN PROBABILITAS
DESKRIPSI ANALISIS KORELASI TINGGI BADAN DAN BERAT BADAN :

Dataset terdiri dari 10 pengamatan dengan dua variabel: tinggi badan (dalam cm) dan berat badan (dalam kg). Data ini bertujuan untuk menguji apakah terdapat hubungan signifikan antara tinggi badan dan berat badan menggunakan analisis korelasi Pearson

HASIL UJI : 

a. Uji Normalitas
Uji Shapiro-Wilk dilakukan untuk memeriksa apakah distribusi data tinggi dan berat badan mengikuti distribusi normal:

p-value untuk tinggi badan: Nilai p menunjukkan apakah tinggi badan terdistribusi normal.
p-value untuk berat badan: Nilai p menunjukkan apakah berat badan terdistribusi normal.
Jika nilai p-value > 0.05, data dianggap memenuhi asumsi normalitas. Dalam analisis ini, hasil akan menentukan apakah analisis Pearson dapat digunakan secara valid.

b. Uji Linearitas
Scatterplot menunjukkan hubungan antara tinggi badan (variabel independen) dan berat badan (variabel dependen). Jika pola data menunjukkan tren linier dan garis regresi cocok dengan distribusi titik-titik, asumsi linearitas terpenuhi.

c. Deteksi Outlier
Boxplot digunakan untuk mendeteksi outlier pada data tinggi dan berat badan. Outlier dapat memengaruhi hasil korelasi, sehingga penting untuk mengidentifikasi apakah ada data yang jauh dari distribusi umum.

HASIL UJI KORELASI PEARSON:

Koefisien Korelasi (r):
Pearson’s r menunjukkan kekuatan dan arah hubungan antara dua variabel:

Nilai mendekati +1 menunjukkan hubungan positif yang kuat.
Nilai mendekati 0 menunjukkan tidak ada hubungan.
Nilai mendekati -1 menunjukkan hubungan negatif yang kuat.

Nilai p-value:
Nilai p-value digunakan untuk menguji signifikansi hubungan:

Jika p < 0.05, hubungan antara tinggi dan berat badan signifikan secara statistik.
Jika p ≥ 0.05, hubungan tersebut tidak signifikan.

VISUALISASI :

Scatterplot dan garis regresi memberikan gambaran hubungan antara tinggi dan berat badan.
Hasil analisis korelasi Pearson juga ditampilkan dalam grafik sebagai koefisien korelasi (r).

INTERPRETASI :
Berdasarkan hasil analisis:

Jika p-value < 0.05: Terdapat hubungan yang signifikan antara tinggi dan berat badan. Artinya, tinggi badan memiliki pengaruh signifikan terhadap berat badan. Semakin tinggi seseorang, cenderung semakin berat badannya.
Jika p-value ≥ 0.05: Tidak terdapat hubungan signifikan antara tinggi dan berat badan. Hubungan tersebut mungkin terjadi secara kebetulan.
Dengan melihat scatterplot dan garis regresi, pola hubungan dapat diperkuat secara visual.

KESIMPULAN :

Jika hasil analisis menunjukkan nilai p < 0.05 dan r positif, maka kita dapat menyimpulkan bahwa terdapat hubungan linier positif yang signifikan antara tinggi dan berat badan. Namun, jika asumsi normalitas atau linearitas tidak terpenuhi, hasil korelasi perlu ditinjau lebih lanjut atau menggunakan metode non-parametrik seperti Spearman.
