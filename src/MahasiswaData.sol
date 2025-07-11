// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MahasiswaData {
    struct Mahasiswa {
        string nama;
        uint umur;
    }

    Mahasiswa[] public daftarMahasiswa;

    function tambahMahasiswa(string memory _nama, uint _umur) public {
        Mahasiswa memory mhsBaru = Mahasiswa({
            nama: _nama,
            umur: _umur
        });
        daftarMahasiswa.push(mhsBaru);
    }

    function lihatMahasiswa(uint index) public view returns (string memory, uint) {
        require(index < daftarMahasiswa.length, "Index di luar jangkauan!");
        Mahasiswa memory mhs = daftarMahasiswa[index];
        return (mhs.nama, mhs.umur);
    }

    function jumlahMahasiswa() public view returns (uint) {
        return daftarMahasiswa.length;
    }
}