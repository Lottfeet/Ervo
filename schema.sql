-- =====================================================================
-- schema.sql — Skema database MySQL untuk Ervo Store Kasir (versi cPanel)
-- ---------------------------------------------------------------------
-- CARA IMPORT:
--   1. Login ke cPanel -> phpMyAdmin
--   2. Pilih database yang sudah dibuat (misal: username_ervodb)
--   3. Klik tab "Import" -> Choose File -> pilih schema.sql ini -> Go/Tumbler
--
-- Desain: setiap koleksi Firestore menjadi satu tabel dengan kolom:
--   id    VARCHAR(191) PRIMARY KEY  (sama dengan document ID Firebase)
--   data  JSON                      (seluruh field dokumen, apa adanya)
-- Struktur field di dalam JSON TIDAK diubah sehingga tampilan & logika
-- aplikasi tetap identik dengan versi Google AI Studio.
-- =====================================================================

SET NAMES utf8mb4;

-- Koleksi: products
CREATE TABLE IF NOT EXISTS `products` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: kasirUsers
CREATE TABLE IF NOT EXISTS `kasirUsers` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: expenses
CREATE TABLE IF NOT EXISTS `expenses` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: stockIn
CREATE TABLE IF NOT EXISTS `stockIn` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: stockOpname
CREATE TABLE IF NOT EXISTS `stockOpname` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: vendors
CREATE TABLE IF NOT EXISTS `vendors` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: deletedProducts
CREATE TABLE IF NOT EXISTS `deletedProducts` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: deletedCustomers
CREATE TABLE IF NOT EXISTS `deletedCustomers` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: deletedInvoices
CREATE TABLE IF NOT EXISTS `deletedInvoices` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: deletedExpenses
CREATE TABLE IF NOT EXISTS `deletedExpenses` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: backupCheckpoints
CREATE TABLE IF NOT EXISTS `backupCheckpoints` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Koleksi: businessTransactions
CREATE TABLE IF NOT EXISTS `businessTransactions` (
  `id`   VARCHAR(191) NOT NULL,
  `data` JSON NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Selesai. Database siap dipakai oleh api/index.php
