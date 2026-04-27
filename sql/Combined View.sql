CREATE VIEW `kf-performance-analysis.KFDataset.kf_dashboard_view` AS
SELECT
    t.transaction_id,
    t.date,
    t.year,
    t.month,
    t.month_name,
    t.quarter,
    t.branch_id,
    t.product_id,
    t.customer_name,
    t.price,
    t.discount_percentage,
    t.rating,
    t.nett_sales,
    b.branch_name,
    b.branch_category,
    b.city,
    b.province,
    p.product_name,
    p.product_category
FROM `kf-performance-analysis.KFDataset.kf_transaction` t
LEFT JOIN `kf-performance-analysis.KFDataset.kf_branch` b ON t.branch_id = b.branch_id
LEFT JOIN `kf-performance-analysis.KFDataset.kf_product` p ON t.product_id = p.product_id;