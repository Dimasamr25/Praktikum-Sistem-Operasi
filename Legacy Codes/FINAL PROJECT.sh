#!/bin/bash
lagi='y'

while  [ $lagi == 'y' ] ||
	   [ $lagi == 'Y' ];
do

   clear
   echo "=========================================";
   echo "	PEMESANAN TIKET PESAWAT     		  ";
   echo "	BANDARA JUANDA SURABAYA 			  ";
   echo "=========================================";
   echo "1. PEMESANAN TIKET     ";
   echo "2. LIHAT DATA TERAKHIR PEMESANAN ";
   echo "3. EXPORT KE TXT ";
   echo "4. KELUAR       ";
   echo "=========================================";
   read -p "Pilihan anda  :" pil;
   echo "=========================================";

case $pil in 1)

    clear;       

       echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
       echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
       echo "        			HARGA TIKET ";
       echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
       echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
       
 		echo  "1.Surabaya - Malang		= 1.000.000"
		echo  "2.Surabaya - Semarang		= 2.000.000"
		echo  "3.Surabaya - Bandung		= 3.000.000"
		echo  "4.Surabaya - Batam		= 4.000.000"
		echo  "5.Surabaya - Balikpapan		= 5.000.000"
		echo  "6.Surabaya - Medan		= 6.000.000"
		echo  "7.Surabaya - Makassar		= 7.000.000"
		echo  "8.Surabaya - Yokyakarta		= 8.000.000"
		echo  "9.Surabaya - Bali		= 9.000.000"
		echo  "10.Surabaya - Jakarta		= 10.000.000"
       

       echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"; 
       echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
       echo -n "Masukan nama anda                 		:";
       read nama 
       echo -n "Masukan alamat anda               		:";
       read alamat
       echo -n "Masukkan No KTP					:";
       read noktp
       echo -n "Masukan nomor tiket 				:";
       read jenis
       echo -n "Masukan total tiket yang akan dipesan		:";
       read jum
       echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
       echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";


    
       if [ $jenis -eq 1 ];  
         then penerbangan="Surabaya - Malang";
       tiket=100000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 2 ];
        then penerbangan="Surabaya - Semarang";
       tiket=200000;
       let total=jum*tiket; 

    
       elif [ $jenis -eq 3 ];
        then penerbangan="Surabaya - Bandung";
       tiket=300000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 4 ];
        then kpenerbangan="Surabaya - Batam";
       tiket=400000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 5 ];
        then penerbangan="Surabaya - Balikpapan";
       tiket=500000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 6 ];
        then penerbangan="Surabaya - Medan";
       tiket=600000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 7 ]; 
       	then penerbangan="Surabaya - Makassar";
       tiket=700000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 8 ]; 
       	then penerbangan="Surabaya - Yokyakarta";
       tiket=800000;
       let total=jum*tiket;

    
       elif [ $jenis -eq 9 ];    
       	then penerbangan="Surabaya - Bali";
       tiket=900000;
       let total=jum*tiket;


       elif [ $jenis -eq 10 ];    
       	then penerbangan="Surabaya - Jakarta";
       tiket=1000000;
       let total=jum*tiket;


       

       else
       echo "MAAF PILIHAN ANDA TIDAK TERSEDIA"
       exit 1

       fi

;; 


2)

       clear;

       echo "DATA PEMBELI TIKET";
       echo "<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>";
       echo "<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>";
       echo "NAMA        : $nama";
       echo "ALAMAT      : $alamat";
       echo "PENERBANGAN : $penerbangan";
       echo "JUMLAH      : $jum";
       echo "=======================================";
       echo "<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>";
       echo "=======================================";
       echo "TOTAL BAYAR : $total";
       echo "<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>";
       echo "<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>";
       echo

;;
3)
clear
	echo -n "Cetak Tiket : "
    read tiket
        echo  -e "        ==================================\n

                    Tiket Pesawat\n
        ==================================\n
           Nama        : ${nama}\n
           Alamat      : ${alamat}\n
           Penerbangan : ${penerbangan}\n
           Jumlah      : ${jum}\n
           Total Bayar : ${total}\n

        ==================================
           			

           				" > $tiket.txt

        echo ""

        clear

        echo "Pembuatan file telah berhasil!!"
        read
   
;;

4)
  echo
  echo
  echo "TERIMA KASIH TELAH MEMESAN TIKET DI LOKET KAMI"
 echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
      
  echo "SEMOGA ANDA PUAS ATAS PELAYANAN KAMI"
 echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
      
  echo "SEMOGA ANDA SELALU BERLANGGANAN DI MASKAPAI KAMI"
 echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
      
  echo "^.^ ^.^  TERIMA KASIH ^.^ ^.^"
 echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
      
  exit 1

;;

*)

       echo "Maaf, tidak tersedia"
       exit 1

;;

esac

echo -n "Yakin dengan pesanan anda? jika iya tekan(y) kembali ke menu awal, tekan (n) untuk keluar (y/n) :";
read lagi;

done
