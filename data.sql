/*Nhập dữ liệu cho 2 bảng : Category và Category_Group

1/+ Thịt, cá, trứng, hải sản (chọn hết)  

2/+ Rau, củ, trái cây  

Rau, củ làm sẵn  

trái cây  

3/+ Dầu ăn, nước chấm, gia vị  

Dầu ăn,  

Nước mắm,  

nước tương,  

Đường  

Hạt nêm, bột ngọt, bột canh  

Muối  

Tương ớt - đen, mayonnaise  

Gia vị nêm sẵn  

4/+ Mì, miến, phở  

Mì ăn liền  

hủ tiếu, miến  

phở, bún ăn liền  

5/+ Đồ khô  

Xúc xích  

Đồ hộp  

6/+ Bia, nước giải khát  

Bia, nước có cồn  

Nước ép trái cây  

Nước ngọt  

Nước suối  

7/+ Sữa các loại  

Sữa tươi  

Sữa bột  

Sữa đặc  

Sữa chua  

Bơ sữa, phô mai  

8/+ Bánh kéo các loại  

Bánh quy  

Bánh gạo  

Bánh quế  

Bánh snack, rong biển  

Bánh tươi, sandwich  

Socola  

Kẹo  

Trái cây sấy  

Bánh xốp(ko có)

Bánh que(ko có)*/








--1
INSERT INTO Category_Group (name,thumbnail) 
VALUES (N'Thịt, Cá, Trứng, Hải Sản','https://cdn.tgdd.vn/2021/04/CookProduct/13-1200x676.jpg'); 

--Thịt heo
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Thịt heo','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8781/bhx/icon_8781.png',0); 


--Thịt bò 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Thịt bò','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8139/bhx/thit-bo-cac-loai-202212051413547147.png',0); 


--Thịt gà, Thịt Vịt , Thịt Chim
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Thịt gà, Thịt vịt , Thịt chim','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8790/bhx/thit-ga-thit-vit-202212051413239059.png',0); 

--Thịt sơ chế tẩm ướt
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Thịt sơ chế tẩm ướt','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/12718/bhx/thit-so-che-tam-uop-202308231439054959.png',0);


--Cá , hải sản
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Cá , hải sản','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8782/bhx/8782_st_2.png',0)


--Trứng gà ,vịt,cút
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Trứng gà ,vịt,cút','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8783/bhx/trung-ga-vit-cut-202212051414238645.png',0)


--Thực phẩm làm sẵn
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Thực phẩm làm sẵn','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8791/bhx/so-che-tam-uop-202212051422114754.png',0)



--2 
INSERT INTO Category_Group (name,thumbnail) 
VALUES (N'Rau,Củ , Nấm, Trái Cây','https://tse2.mm.bing.net/th?id=OIP.63DOWXdtgj749JhlW_iuAAHaEo&pid=Api&P=0&h=220'); 


--Trái cây
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Trái cây','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8788/bhx/trai-cay-cac-loai-202210311314516525.png',0)

--Rau củ làm sẵn
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Rau củ làm sẵn','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/12439/bhx/rau-cu-lam-san-202308231530220239.png
',0)






--3
INSERT INTO Category_Group (name,thumbnail) 
VALUES (N'Dầu ăn, nước chấm, gia vị  ','https://salt.tikicdn.com/ts/product/87/1f/90/7705928168ae46f1fd70fa21e05b1eec.jpg'); 


--Dầu ăn
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Dầu ăn','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2286/bhx/dau-an-202212060830181775.png
',0)



--Nước mắm
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Nước mắm','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2289/bhx/nuoc-mam-202212051441046889.png
',0)


--Nước tương
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Nước tương','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2683/bhx/nuoc-tuong-202209301504550560.png
',0)


--Đường
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Đường','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2804/bhx/duong-cac-loai-202209301451483040.png
',0)

--Hạt nêm, bột ngọt, bột canh 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Hạt nêm, bột ngọt, bột canh ','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2806/bhx/hat-nem-bot-ngot-bot-canh-202209301438042697.png
',0)

--Muối 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Muối','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2803/bhx/muoi-cac-loai-202212051440575176.png
',0)


--Tương ớt - đen, mayonnaise 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Tương ớt - đen, mayonnaise','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2567/bhx/tuong-ot-den-mayonnaise-202209301521405358.png
',0)


--Gia vị nêm sẵn  
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Gia vị nêm sẵn','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8271/bhx/gia-vi-hoan-chinh-nem-san-202209301454403180.png
',0)


 

--4
INSERT INTO Category_Group (name,thumbnail) 
VALUES (N' Mì, miến, phở ','http://s1.storage.5giay.vn/image/2016/05/20160524_76a7a1b133486c96241b507b325903dc_1464074362.jpg'); 



--Mì ăn liền
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Mì ăn liền','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2565/bhx/mi-an-lien-202209301456432997.png
',0)


--hủ tiếu, miến 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Mì ăn liền','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2965/bhx/hu-tieu-mien-banh-canh-202209301458049760.png
',0)


--phở, bún ăn liền 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Phở, bún ăn liền','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2566/bhx/pho-bun-an-lien-202209301506114557.png
',0)



--5
INSERT INTO Category_Group (name,thumbnail) 
VALUES (N'Đồ khô','https://tse1.mm.bing.net/th?id=OIP.ulUqqe478nsyo3BNf2kHlAHaHa&pid=Api&P=0&h=220'); 


--Xúc xích
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Xúc xích','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/3507/bhx/xuc-xich-202212051432208678.png
',0)


--Đồ hộp
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Đồ hộp','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/3237/bhx/ca-hop-cac-loai-202212051434464463.png
',0)

 

--6
INSERT INTO Category_Group (name,thumbnail) 
VALUES (N'Bia, nước giải khát','https://tse4.mm.bing.net/th?id=OIP.GUyxVKpM-IpXmtZzMnXrDAHaEE&pid=Api&P=0&h=220'); 


--Bia, nước có cồn  
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Bia, nước có cồn','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2282/bhx/bia-nuoc-co-con-202308281645335051.png
',0)


--Nước ép trái cây  
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Nước ép trái cây  ','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/3265/bhx/nuoc-ep-trai-cay-202212051444585466.png
',0)


--Nước ngọt 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Nước ngọt ','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2443/bhx/nuoc-ngot-202210311315510981.png
',0)


--Nước suối
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Nước suối','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2563/bhx/nuoc-suoi-202210311319484504.png
',0)



--7
INSERT INTO Category_Group (name,thumbnail) 
VALUES (N'Sữa các loại','https://tse1.mm.bing.net/th?id=OIP.lDqIONcbXFFa433kLC_sdwHaE6&pid=Api&P=0&h=220');

--Sữa tươi 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Sữa tươi','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2386/bhx/sua-tuoi-202210311320147075.png
',0)


--Sữa bột
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Sữa bột','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2382/bhx/sua-bot-cac-loai-202209301512594596.png
',0)


--Sữa đặc  
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Sữa đặc','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/2526/bhx/sua-dac-202210311321319764.png
',0)


--Sữa chua 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Sữa chua','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/7598/bhx/sua-chua-uong-202212051422468585.png
',0)

--Bơ sữa, phô mai 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Bơ sữa, phô mai ','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/7599/bhx/bo-sua-pho-mai-202212051422389842.png
',0)


  

 

--8
Bánh que
INSERT INTO Category_Group (name,thumbnail) 
VALUES (N'Bánh kẹo các loại  ','https://tse1.mm.bing.net/th?id=OIP.lDqIONcbXFFa433kLC_sdwHaE6&pid=Api&P=0&h=220');


--Bánh quy 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Bánh quy','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/3357/bhx/banh-quy-202212051453352399.png
',0)

--Bánh gạo 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Bánh gạo','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/3361/bhx/banh-gao-202212051453477652.png
',0)


--Bánh quế
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Bánh quế','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/3359/bhx/banh-que-202212051454447088.png
',0)

--Bánh snack, rong biển  
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Bánh snack, rong biển','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/3364/bhx/snack-rong-bien-202210071644499789.png
',0)


--Bánh tươi, sandwich  
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Bánh tươi, sandwich','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/9027/bhx/banh-tuoi-sandwich-202212051416571062.png
',0)


--Socola 
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Socola','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/6597/bhx/keo-socola-202212051500103072.png
',0)


--Kẹo  
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Kẹo','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/7199/bhx/keo-deo-keo-marshmallow-202212051453042764.png
',0)


--Trái cây sấy
INSERT INTO Category (name,thumbnail,product_quantity) 
VALUES (N'Trái cây sấy','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/3365/bhx/trai-cay-say-202212051455499058.png
',0)



/*Nhập dữ liệu bảng Brand*/


--1
--Bách Hóa Xanh
INSERT INTO Brand (name,thumbnail) 
VALUES (N'Bách Hóa Xanh','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/bach-hoa-xanh-1504202116252.jpeg
',0)


--C.P
INSERT INTO Brand (name,thumbnail) 
VALUES ('C.P','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/cp-14032021212030.jpg
',0)



--MVP
INSERT INTO Brand (name,thumbnail) 
VALUES ('MVP','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/mvp-04042021231531.jpg
',0)


--Meat master
INSERT INTO Brand (name,thumbnail) 
VALUES ('Meat master','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/meat-master-10112021105831.jpeg
',0)


--Greenfeed
INSERT INTO Brand (name,thumbnail) 
VALUES ('Greenfeed','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/g-100620211103.jpg
',0)



--NTPearlyFood
INSERT INTO Brand (name,thumbnail) 
VALUES ('NTPearlyFood','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/nt-pearly-food-11092023134831.jpg
',0)


--Thảo Tiến Food
INSERT INTO Brand (name,thumbnail) 
VALUES (N'Thảo Tiến Food','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/thao-tien-foods-0504202115544.jpg
',0)



-PTV
INSERT INTO Brand (name,thumbnail) 
VALUES ('PTV','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/ptv-1405202111574.jpg
',0)



--Pacow
INSERT INTO Brand (name,thumbnail) 
VALUES ('Pacow','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/pacow-15032021105552.jpg
',0)


--Fohla
INSERT INTO Brand (name,thumbnail) 
VALUES ('Fohla','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/fohla-1403202383549.jpg
',0)


--Tam Nông
INSERT INTO Brand (name,thumbnail) 
VALUES (N'Tam Nông','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/tam-nong-04042021185258.jpg
',0)




--Ngọc Tú
INSERT INTO Brand (name,thumbnail) 
VALUES (N'Ngọc Tú','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/ngoc-tu-2402202395058.jpg
',0)


--Âu Cơ
INSERT INTO Brand (name,thumbnail) 
VALUES (N'Âu Cơ','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/au-co-2410202311441.jpg
',0) 


--Nhất Tâm 
INSERT INTO Brand (name,thumbnail) 
VALUES (N'Nhất Tâm','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/nhat-tam-0404202123636.jpg
',0) 


--lenger
INSERT INTO Brand (name,thumbnail) 
VALUES ('lenger','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/lenger-04042021183958.jpg
',0)


--Song Phương
INSERT INTO Brand (name,thumbnail) 
VALUES (N'Song Phương','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/song-phuong-0504202110239.jpg
',0)


--HDC
INSERT INTO Brand (name,thumbnail) 
VALUES ('HDC','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/hdc-18122021102455.png
',0)


--B-food
INSERT INTO Brand (name,thumbnail) 
VALUES ('B-food','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/vuong-ngoc-bich-2111202385910.jpg
',0)


--Nguyễn Hồ
INSERT INTO Brand (name,thumbnail) 
VALUES (N'Nguyễn Hồ','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/nguyen-ho-24082023145012.jpg
',0)


-Happy egg
INSERT INTO Brand (name,thumbnail) 
VALUES (N'Happy egg','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/happy-egg-300920209204.jpg
',0)


--QLegg
INSERT INTO Brand (name,thumbnail) 
VALUES (N'QLegg','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/qlegg-15032021133818.jpg
',0)


--Phương Nam Farm
INSERT INTO Brand (name,thumbnail) 
VALUES (N'Phương Nam Farm','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/phuong-nam-26102023155430.png
',0)


--NH
INSERT INTO Brand (name,thumbnail) 
VALUES ('NH','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/nam-huong-21032023142454.jpg
',0)


--2
--TONY FRUIT
INSERT INTO Brand (name,thumbnail) 
VALUES ('TONY FRUIT','https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/tony-fruit-18112023132148.png
',0)

