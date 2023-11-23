-- CREATE base_table
SELECT
	CONCAT (pjl.id_invoice, pjl.id_barang) AS id_penjualan,
	pjl.id_invoice,
	pjl.tanggal,
	pjl.id_customer,
	plg.nama AS nama_customer,
	pjl.id_barang,
	brg.nama_barang,
	pjl.harga,
	pjl.jumlah_barang,
	pjl.unit,
	(jumlah_barang * pjl.harga) AS total_harga_per_barang,
	pjl.mata_uang,
	brg.kode_lini AS kode_brand,
	brg.lini AS brand,
	plg.cabang_sales,
	plg.id_distributor,
	plg.grup AS group_category
	INTO
		base_table
	FROM 
		penjualan AS pjl
	LEFT JOIN 
		barang AS brg
	ON (pjl.id_barang = brg.kode_barang)
	LEFT JOIN 
		pelanggan_ds AS plg
	ON (pjl.id_customer = plg.id_customer
	);