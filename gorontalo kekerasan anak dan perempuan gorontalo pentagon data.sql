SELECT * FROM gorontalo.`kta-perempuan-bentukkekerasan`;
SELECT * FROM gorontalo.`kta-perempuan-usia`;
SELECT * FROM gorontalo.`kta-perempuan-tkp`;
SELECT * FROM gorontalo.`kta-perempuan-pendidikan`;
SELECT * FROM gorontalo.`kta-perempuan-jumlahkekerasan`;
ALTER TABLE gorontalo.`kta-perempuan-jumlahkekerasan`
CHANGE COLUMN `Frekuensi Kekerasan yang Dialami Korban` `frekuensi_kekerasan` INT;
SELECT * FROM gorontalo.`kta-perempuan-hubungandengankorban`;
SELECT * FROM gorontalo.`totalkekerasan-jeniskelamin`;
SELECT * FROM gorontalo.`ktp-perempuan-usia`;
SELECT * FROM gorontalo.`ktp-perempuan-statusperkawinan`;
SELECT * FROM gorontalo.`ktp-perempuan-jumlahlayananditerima`;
SELECT * FROM gorontalo.`ktp-perempuan-jumlahkekerasan`;
SELECT * FROM gorontalo.`ktp-perempuan-bentukkekerasan`;
SELECT * FROM gorontalo.`ktp-perempuan-tkp`;
SELECT * FROM gorontalo.kta_laki_frekuensi_kekerasan;
ALTER TABLE gorontalo.`kta_laki_frekuensi_kekerasan`
CHANGE COLUMN `Frekuensi Kekerasan yang Dialami Korban` `frekuensi_kekerasan` INT;
SELECT * FROM gorontalo.kta_laki_bentuk_kekerasan;

-- union all table sejenis
-- 1. bentuk kekerasan
SELECT *, 'kta-perempuan' AS table_name
FROM gorontalo.`kta-perempuan-bentukkekerasan`
UNION ALL
SELECT *,  'kta_laki' AS table_name
FROM gorontalo.kta_laki_bentuk_kekerasan
UNION ALL
SELECT * , 'ktp-perempuan' AS table_name
FROM gorontalo.`ktp-perempuan-bentukkekerasan`;
-- 2. JUMLAH KEKERASAN
SELECT *, 'kta-perempuan' AS table_name
FROM gorontalo.`kta-perempuan-jumlahkekerasan`
UNION ALL
SELECT *,  'kta_laki' AS table_name
FROM gorontalo.kta_laki_frekuensi_kekerasan
UNION ALL
SELECT * , 'ktp-perempuan' AS table_name
FROM gorontalo.`ktp-perempuan-jumlahkekerasan`;
-- 3. TKP
SELECT *, 'kta-perempuan' AS table_name
FROM gorontalo.`kta-perempuan-tkp`
UNION ALL
SELECT *,  'kta_laki' AS table_name
FROM gorontalo.kta_laki_tkp
UNION ALL
SELECT * , 'ktp-perempuan' AS table_name
FROM gorontalo.`ktp-perempuan-tkp`;
-- 4. LAYANAN DITERIMA
SELECT *, 'kta-perempuan' AS table_name
FROM gorontalo.`kta-perempuan-layananditerima`
UNION ALL
SELECT *,  'kta_laki' AS table_name
FROM gorontalo.kta_laki_frekuensi_layanan
UNION ALL
SELECT * , 'ktp-perempuan' AS table_name
FROM gorontalo.`ktp-perempuan-jumlahlayananditerima`;
-- 5. USIA
SELECT *, 'kta-perempuan' AS table_name
FROM gorontalo.`kta-perempuan-usia`
UNION ALL
SELECT *,  'kta_laki' AS table_name
FROM gorontalo.kta_laki_usia
UNION ALL
SELECT * , 'ktp-perempuan' AS table_name
FROM gorontalo.`ktp-perempuan-usia`;
