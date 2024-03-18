<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Perpetua';
            background-color: #ffffff; /* ����� ����� ���� ���� */
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .texttt{
            text-decoration: none;
            text-align: center;
            font-size: 120px;
            color: #000000;
            letter-spacing: .05em
        }

        .links {
            text-align: center;
            margin: 20px 10px; /* ����������� ���������� ����� �������� */
        }

        .links a {
            display: inline-block;
            font-size: 20px;
            color: #333;
            text-decoration: none;
            margin: 0 10px;
        }

        .catalog {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 30px;
        }

        .item {
            width: 500px; /* ������������� ������ �������� */
            height: 600px;
            margin-bottom: 10px;
            margin-right: 2px; /* ���������� ����� ���������� */
            padding: 10px;
            text-align: center;
            box-sizing: border-box;

            overflow: hidden; /* ������� ������ ��������, ���������� �� ������� �������� */
        }

        .item p {
            margin: 0;
        }

       


        .item-content {
            position: relative;
        }

        .item-content img {
            width: 100%;
            max-height: 20%;
            object-fit: contain; /* ���������� ��������� � ���������� ����������� � ���� */
            display: block;
            margin:0;
        }

        .product-name {
            color: #000; /* ������ ���� ������ */
            font-size: 18px; /* ���������� ������� ������ ��� ���� ���������� */
            text-align: center;
            padding: 2px; /* ���������� ������� ��� ���� ���������� */
        }

        .product-price {
            color: #000; /* ������ ���� ������ */
            font-size: 18px; /* ���������� ������� ������ ��� ���� ���������� */
            text-align: center;
            padding: 2px;
            font-weight: bold; /* ������ ����� */
        }

        .item-link {
            display: block;
             text-decoration-color: black;
            color: inherit; /* ���������� ���� �������� ������ */
        }

        .item-link:hover {
            text-decoration: none; /* ������� ������������� ��� ��������� */
        }

        .item:hover {
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .love-icon {
            position: absolute;
            top: 10px; /* ������������ ������ */
            left: 200px; /* ������������ ������ */
            width: 30px; /* ������ ������ */
            height: 30px; /* ������ ������ */
            z-index: 1; /* ����� ������ ���� ������ ��������� ����������� */
        }

    </style>
</head>

<body>
    <div class="container">
        <div class="links">
            <div class="texttt">
            AnFORCE
            </div>
            
            <a href="https://ru.pinterest.com/pin/983262531132708974/">MEN</a>

            <a href="women.html">WOMEN</a>
        </div>

        <div class="catalog">
            <a href="https://www.dolcegabbana.com" style="text-decoration: none;">
            <div class="item">
                <div class="item-content">
                    <img src="static/images/Black(T-shirt).jpeg" alt="Product Image">
                    <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                    <p class="product-name">Cotton T-Shirt</p>
                    <p class="product-price">$36.99</p>
                </div>
            </div>
            </a>

            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
            <div class="item">
                <div class="item-content">
                    <img src="static/images/T-Shirt.jpeg" alt="Product Image">
                    <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                    <p class="product-name">Cotton T-Shirt</p>
                    <p class="product-price">$39.99</p>
                </div>
            </div>
            </a>

            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
                <div class="item">
                    <div class="item-content">
                        <img src="static/images/Jacket.jpeg" alt="Product Image">
                        <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                        <p class="product-name">Jacket</p>
                        <p class="product-price">$89.99</p>
                    </div>
                </div>
            </a>

            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
               <div class="item">
                    <div class="item-content">
                        <img src="static/images/Trousers.jpeg" alt="Product Image">
                        <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                        <p class="product-name">Trousers</p>
                        <p class="product-price">$55.99</p>
                    </div>
               </div>
            </a>

            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
                <div class="item">
                    <div class="item-content">
                        <img src="static/images/Bag.jpeg" alt="Product Image">
                        <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                        <p class="product-name">Leather Bag</p>
                        <p class="product-price">$79.99</p>
                    </div>
                </div>
            </a>


            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
                 <div class="item">
                    <div class="item-content">
                        <img src="static/images/WhiteShirt.jpeg" alt="Product Image">
                        <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                        <p class="product-name">Cotton Shirt</p>
                        <p class="product-price">$41.99</p>
                    </div>
                </div>
            </a>

            
            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
                <div class="item">
                    <div class="item-content">
                        <img src="static/images/BlackJeans.jpeg" alt="Product Image">
                        <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                        <p class="product-name">Jeans</p>
                        <p class="product-price">$69.99</p>
                    </div>
                </div>
            </a>


            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
                <div class="item">
                    <div class="item-content">
                        <img src="static/images/White(T-Shirt).jpeg" alt="Product Image">
                        <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                        <p class="product-name">Cotton T-Shirt</p>
                        <p class="product-price">$35.99</p>
                    </div>
                </div>
            </a>

            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
                <div class="item">
                    <div class="item-content">
                        <img src="static/images/Black(T-shirt)2.jpeg" alt="Product Image">
                        <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                        <p class="product-name">Cotton T-Shirt</p>
                        <p class="product-price">$29.99</p>
                    </div>
                </div>
            </a>

            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
                <div class="item">
                    <div class="item-content">
                        <img src="static/images/Shirt.jpeg" alt="Product Image">
                        <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                        <p class="product-name">Cotton Shirt</p>
                        <p class="product-price">$109.99</p>
                    </div>
                </div>
            </a>


            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
                <div class="item">
                    <div class="item-content">
                        <img src="static/images/BlueJeans.jpeg" alt="Product Image">
                        <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                        <p class="product-name">Jeans</p>
                        <p class="product-price">$67.99</p>
                    </div>
                </div>
            </a>

            <a href="https://www.dolcegabbana.com"  style="text-decoration: none;">
                <div class="item">
                    <div class="item-content">
                        <img src="static/images/Hoodie.jpeg" alt="Product Image">
                        <img src="static/images/Love.png" class="love-icon" alt="Love Icon"> 
                        <p class="product-name">Hoodie</p>
                        <p class="product-price">$99.99</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
</body>
</html>
