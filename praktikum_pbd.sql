CREATE DATABASE praktikum_pbd;

USE praktikum_pbd;

-- =========================
-- BAGIAN A
-- =========================

DELIMITER $$

CREATE PROCEDURE bagian_a()
BEGIN

    DECLARE v_nama VARCHAR(100);
    DECLARE v_nim VARCHAR(20);
    DECLARE v_semester INT;
    DECLARE v_prodi VARCHAR(100);

    DECLARE v_kampus VARCHAR(100)
    DEFAULT 'Universitas Mega Buana Palopo';

    SET v_nama = 'Rina Putri';
    SET v_nim = '231011045';
    SET v_semester = 4;
    SET v_prodi = 'Informatika';

    SELECT CONCAT(
        'Mahasiswa ',
        v_nama,
        ' (',
        v_nim,
        ') dari Program Studi ',
        v_prodi,
        ' terdaftar di ',
        v_kampus,
        ' pada semester ',
        v_semester,
        '.'
    ) AS hasil;

END$$

DELIMITER ;

-- =========================
-- BAGIAN B
-- =========================

DELIMITER $$

CREATE PROCEDURE bagian_b()
BEGIN

    DECLARE v_sks INT;
    DECLARE v_ipk DECIMAL(3,2);
    DECLARE v_status VARCHAR(20);

    DECLARE v_validasi VARCHAR(50);
    DECLARE v_beban VARCHAR(50);
    DECLARE v_performa VARCHAR(50);

    SET v_sks = 18;
    SET v_ipk = 3.40;
    SET v_status = 'LUNAS';

    IF v_status = 'LUNAS'
       AND v_sks > 0 THEN

        SET v_validasi = 'Valid';

    ELSE

        SET v_validasi = 'Tidak Valid';

    END IF;

    IF v_sks BETWEEN 1 AND 12 THEN

        SET v_beban = 'Ringan';

    ELSEIF v_sks BETWEEN 13 AND 18 THEN

        SET v_beban = 'Sedang';

    ELSEIF v_sks BETWEEN 19 AND 24 THEN

        SET v_beban = 'Padat';

    ELSE

        SET v_beban = 'Tidak Diketahui';

    END IF;

    IF v_ipk >= 3.50 THEN

        SET v_performa = 'Sangat Baik';

    ELSEIF v_ipk >= 3.00 THEN

        SET v_performa = 'Baik';

    ELSEIF v_ipk >= 2.50 THEN

        SET v_performa = 'Cukup';

    ELSE

        SET v_performa = 'Perlu Pembinaan';

    END IF;

    SELECT
        v_validasi AS status_data,
        v_beban AS beban_studi,
        v_performa AS performa_akademik;

END$$

DELIMITER ;

-- =========================
-- BAGIAN C
-- =========================

DELIMITER $$

CREATE PROCEDURE bagian_c()
BEGIN

    DECLARE v_nama VARCHAR(100);
    DECLARE v_nim VARCHAR(20);
    DECLARE v_semester INT;

    DECLARE v_sks INT;
    DECLARE v_ipk DECIMAL(3,2);
    DECLARE v_status VARCHAR(20);

    DECLARE v_kelayakan VARCHAR(50);
    DECLARE v_beban VARCHAR(50);
    DECLARE v_performa VARCHAR(50);

    SET v_nama = 'Rina Putri';
    SET v_nim = '231011045';
    SET v_semester = 4;

    SET v_sks = 18;
    SET v_ipk = 3.40;
    SET v_status = 'LUNAS';

    IF v_status = 'LUNAS'
       AND v_semester > 0
       AND v_sks > 0 THEN

        SET v_kelayakan = 'Layak Mengambil KRS';

    ELSE

        SET v_kelayakan = 'Tidak Layak Mengambil KRS';

    END IF;

    IF v_sks BETWEEN 1 AND 12 THEN

        SET v_beban = 'Ringan';

    ELSEIF v_sks BETWEEN 13 AND 18 THEN

        SET v_beban = 'Sedang';

    ELSE

        SET v_beban = 'Padat';

    END IF;

    IF v_ipk >= 3.50 THEN

        SET v_performa = 'Sangat Baik';

    ELSEIF v_ipk >= 3.00 THEN

        SET v_performa = 'Baik';

    ELSEIF v_ipk >= 2.50 THEN

        SET v_performa = 'Cukup';

    ELSE

        SET v_performa = 'Perlu Pembinaan';

    END IF;

    SELECT CONCAT(
        'Mahasiswa ',
        v_nama,
        ' dengan NIM ',
        v_nim,
        ' dinyatakan ',
        v_kelayakan,
        '. Beban studi ',
        v_beban,
        ' dengan performa akademik ',
        v_performa
    ) AS hasil;

END$$

DELIMITER ;

-- =========================
-- BAGIAN D
-- =========================

DELIMITER $$

CREATE PROCEDURE bagian_d()
BEGIN

    DECLARE namaA VARCHAR(100);
    DECLARE ipkA DECIMAL(3,2);
    DECLARE sksA INT;

    DECLARE namaB VARCHAR(100);
    DECLARE ipkB DECIMAL(3,2);
    DECLARE sksB INT;

    DECLARE hasil VARCHAR(200);

    SET namaA = 'Rina Putri';
    SET ipkA = 3.60;
    SET sksA = 20;

    SET namaB = 'Andi Saputra';
    SET ipkB = 3.20;
    SET sksB = 18;

    IF ipkA > ipkB THEN

        SET hasil = CONCAT(
            namaA,
            ' memiliki performa akademik lebih baik dibanding ',
            namaB
        );

    ELSEIF ipkA < ipkB THEN

        SET hasil = CONCAT(
            namaB,
            ' memiliki performa akademik lebih baik dibanding ',
            namaA
        );

    ELSE

        IF sksA > sksB THEN

            SET hasil = CONCAT(
                namaA,
                ' memiliki performa akademik lebih baik dibanding ',
                namaB
            );

        ELSE

            SET hasil = CONCAT(
                namaB,
                ' memiliki performa akademik lebih baik dibanding ',
                namaA
            );

        END IF;

    END IF;

    SELECT hasil AS kesimpulan;

END$$

DELIMITER ;

-- =========================
-- MENJALANKAN PROCEDURE
-- =========================

CALL bagian_a();

CALL bagian_b();

CALL bagian_c();

CALL bagian_d();
