<?php
include ('../conn/conn.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get form data
    $product_name = $_POST['product_name'] ?? '';
    $tbl_supplier_id = $_POST['tbl_supplier_id'] ?? '';
    $purchase = $_POST['purchase'] ?? '';
    $selling = $_POST['selling'] ?? '';
    $stock = $_POST['stock'] ?? '';

    // Validate form data
    if (empty($product_name) || empty($tbl_supplier_id) || empty($purchase) || empty($selling) || empty($stock)) {
        echo "All fields are required!";
        exit;
    }

    // Insert into the database
    try {
        $stmt = $conn->prepare("INSERT INTO tbl_product (product_name, tbl_supplier_id, purchase, selling, stock) VALUES (?, ?, ?, ?, ?)");
        $stmt->execute([$product_name, $tbl_supplier_id, $purchase, $selling, $stock]);
        header("Location: ../products.php");
        exit;
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>
