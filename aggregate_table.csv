-- Create Aggregate table
-- From base_table
SELECT
	id_penjualan,
	id_invoice,
	tanggal,
	id_customer,
	nama_customer,
	nama_barang,
	cabang_sales,
	id_distributor,
	group_category,
	SUM(jumlah_barang) AS jumlah_barang,
	COUNT(DISTINCT id_barang) AS total_barang,
	SUM(total_harga_per_barang) AS total_pembelian
INTO
	aggregate_table
FROM base_table
GROUP BY 
	id_penjualan,
	id_invoice,
	tanggal,
	id_customer,
	nama_customer,
	nama_barang,
	cabang_sales,
	id_distributor,
	group_category
ORDER BY 
	id_invoice,
	tanggal ASC,
	id_customer,
	nama_customer