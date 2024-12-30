<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .card{
            height:500px;
            width:400px;
            border:1px solid black;
            display: flex;
            align-items: center;
            justify-content:center;
            flex-direction: column;
            padding: 10px;
            gap:10px;
            
        }
        .card .up-name,.card .sb-name{
            width: 90%;
            border: 1px solid blue;
            font-weight: bold;
            font-size: 25px;
            padding:10px 0px;
            /* text-align:; */
        }
        .card .sb-img{
            width: 100%;
            height: 40%;
            display: flex;
            justify-content: center;
            align-items: center;

        }
        .card .price-view-buy, .card .ent-cmnt{
            height: 10%;
            width: 90%;
            display: flex;
            align-items: center;
            justify-content: center;
            gap:30px;
        }
        .card .show-cmnt{
            height: 20%;
            width: 90%;
            border:1px solid black;
        }
    </style>    
</head>
<body>

    <div class="card">
        <div class="up-name">Uploaded By: Faiz </div>
        <div class="sb-name">Subject: Subject Name </div>
        <div class="sb-img"><img src="mariyam.jpg" alt="img" height="100%" width="90%"></div>
        <div class="price-view-buy">
            <div>Price: Rs25</div>
            <div><button>view</button></div>
            <div><button>buy</button></div>
        </div>
        <div class="ent-cmnt">
            <div><input type="text" placeholder="Enter Your Comment"></div>
            <div><button>Submit</button></div>
            <div><button>Comments</button></div>
        </div>
        <div class="show-cmnt">

        </div>

    </div>
    
</body>
</html>