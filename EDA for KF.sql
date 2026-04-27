-- Overall summary
SELECT
    COUNT(transaction_id)       AS total_transactions,
    SUM(nett_sales)             AS total_nett_sales,
    ROUND(AVG(rating), 2)       AS avg_rating
FROM `kf-performance-analysis.KFDataset.kf_transaction`;

-- Revenue per year
SELECT
    year,
    COUNT(transaction_id)       AS total_transactions,
    SUM(nett_sales)             AS total_nett_sales
FROM `kf-performance-analysis.KFDataset.kf_transaction`
GROUP BY year
ORDER BY year;

-- Revenue per province
SELECT
    b.province,
    COUNT(t.transaction_id)     AS total_transactions,
    SUM(t.nett_sales)           AS total_nett_sales
FROM `kf-performance-analysis.KFDataset.kf_transaction` t
LEFT JOIN `kf-performance-analysis.KFDataset.kf_branch` b ON t.branch_id = b.branch_id
GROUP BY b.province
ORDER BY total_nett_sales DESC;

-- Top 10 branches by sales
SELECT
    t.branch_id,
    b.branch_name,
    b.city,
    b.province,
    COUNT(t.transaction_id)     AS total_transactions,
    SUM(t.nett_sales)           AS total_nett_sales,
    ROUND(AVG(t.rating), 2)     AS avg_rating
FROM `kf-performance-analysis.KFDataset.kf_transaction` t
LEFT JOIN `kf-performance-analysis.KFDataset.kf_branch` b ON t.branch_id = b.branch_id
GROUP BY t.branch_id, b.branch_name, b.city, b.province
ORDER BY total_nett_sales DESC
LIMIT 10;

-- Top 10 products by sales
SELECT
    t.product_id,
    p.product_name,
    p.product_category,
    COUNT(t.transaction_id)     AS total_transactions,
    SUM(t.nett_sales)           AS total_nett_sales
FROM `kf-performance-analysis.KFDataset.kf_transaction` t
LEFT JOIN `kf-performance-analysis.KFDataset.kf_product` p ON t.product_id = p.product_id
GROUP BY t.product_id, p.product_name, p.product_category
ORDER BY total_nett_sales DESC
LIMIT 10;

-- Monthly revenue trend
SELECT
    year,
    month,
    month_name,
    COUNT(transaction_id)       AS total_transactions,
    SUM(nett_sales)             AS total_nett_sales
FROM `kf-performance-analysis.KFDataset.kf_transaction`
GROUP BY year, month, month_name
ORDER BY year, month;

-- Revenue by product category
SELECT
    p.product_category,
    COUNT(t.transaction_id)     AS total_transactions,
    SUM(t.nett_sales)           AS total_nett_sales
FROM `kf-performance-analysis.KFDataset.kf_transaction` t
LEFT JOIN `kf-performance-analysis.KFDataset.kf_product` p ON t.product_id = p.product_id
GROUP BY p.product_category
ORDER BY total_nett_sales DESC;

-- Branch rating vs sales
SELECT
    b.branch_name,
    b.city,
    ROUND(AVG(t.rating), 2)     AS avg_rating,
    SUM(t.nett_sales)           AS total_nett_sales
FROM `kf-performance-analysis.KFDataset.kf_transaction` t
LEFT JOIN `kf-performance-analysis.KFDataset.kf_branch` b ON t.branch_id = b.branch_id
GROUP BY b.branch_name, b.city
ORDER BY avg_rating DESC
LIMIT 20;