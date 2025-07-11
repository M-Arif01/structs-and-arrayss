// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/MahasiswaData.sol";

contract MahasiswaDataTest is Test {
    MahasiswaData public mahasiswaData;

    function setUp() public {
        mahasiswaData = new MahasiswaData();
    }

    function testTambahMahasiswa() public {
        mahasiswaData.tambahMahasiswa("Andi", 20);
        mahasiswaData.tambahMahasiswa("Budi", 22);

        (string memory nama1, uint umur1) = mahasiswaData.lihatMahasiswa(0);
        assertEq(nama1, "Andi");
        assertEq(umur1, 20);

        (string memory nama2, uint umur2) = mahasiswaData.lihatMahasiswa(1);
        assertEq(nama2, "Budi");
        assertEq(umur2, 22);

        assertEq(mahasiswaData.jumlahMahasiswa(), 2);
    }
}