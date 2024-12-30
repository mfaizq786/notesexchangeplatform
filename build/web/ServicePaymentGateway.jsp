<html>
    <head>
       
        <link rel="url" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
        <link rel="url" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js">
        <link rel="url" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

* {
    margin: 0px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif
}

.container {
    margin: 30px auto;
}

.container .card {
    width: 80%;
    margin-left: 10%;
    margin-top: 10px;;
    padding: 20px;
    box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
    background: #fff;
    border-radius: 0px;
}

body {
    background: #eee
}



.btn.btn-primary {
    background-color: #ddd;
    color: black;
    box-shadow: none;
    border: none;
    font-size: 20px;
    width: 100%;
    height: 100%;
}

.btn.btn-primary:focus {
    box-shadow: none;
}

.container .card .img-box {
    width: 80px;
    height: 50px;
}

.container .card img {
    width: 100%;
    object-fit: fill;
}

.container .card .number {
    font-size: 24px;
}

.container .card-body .btn.btn-primary .fab.fa-cc-paypal {
    font-size: 32px;
    color: #3333f7;
}

.fab.fa-cc-amex {
    color: #1c6acf;
    font-size: 32px;
}

.fab.fa-cc-mastercard {
    font-size: 32px;
    color: red;
}

.fab.fa-cc-discover {
    font-size: 32px;
    color: orange;
}

.c-green {
    color: green;
}

.box {
    height: 40px;
    width: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #ddd;
}

.btn.btn-primary.payment {
    background-color: #1c6acf;
    color: white;
    border-radius: 0px;
    height: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 24px;
}


.form__div {
    height: 50px;
    position: relative;
    margin-bottom: 24px;
}

.form-control {
    width: 100%;
    height: 45px;
    font-size: 14px;
    border: 1px solid #DADCE0;
    border-radius: 0;
    outline: none;
    padding: 2px;
    background: none;
    z-index: 1;
    box-shadow: none;
}

.form__label {
    position: absolute;
    left: 16px;
    top: 10px;
    background-color: #fff;
    color: #80868B;
    font-size: 16px;
    transition: .3s;
    text-transform: uppercase;
}

.form-control:focus+.form__label {
    top: -8px;
    left: 12px;
    color: #1A73E8;
    font-size: 12px;
    font-weight: 500;
    z-index: 10;
}

.form-control:not(:placeholder-shown).form-control:not(:focus)+.form__label {
    top: -8px;
    left: 12px;
    font-size: 12px;
    font-weight: 500;
    z-index: 10;
}

.form-control:focus {
    border: 1.5px solid #1A73E8;
    box-shadow: none;
}
.textlft{
    margin-left: 70%;
    float: left;
}
    </style>
    </head>



<body><br><br>
<center><h1>Purchase Here</h1></center> <button  style="background: red;margin-left: 10%; height: 40px;width: 100px;"><a href="ServiceProviderViewNotes.jsp" style="text-decoration: none;color:white; ">Back</a></button>
<div class="container">
    <div class="row">
        <div class="col-lg-4 mb-lg-0 mb-3">
            <div class="card p-3">
                <div class="img-box">
                    <img src="https://www.freepnglogos.com/uploads/visa-logo-download-png-21.png" alt="">
                </div>
                <div class="number">
                    <label class="fw-bold" for="">**** **** **** 1060</label>
                </div>
                <div class="d-flex align-items-center justify-content-between">
                    <small><span class="fw-bold textlft">Expiry date: 10/16</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="fw-bold ">  Name: Kumar</span></small>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-lg-0 mb-3">
            <div class="card p-3">
                <div class="img-box">
                    <img src="https://www.freepnglogos.com/uploads/mastercard-png/file-mastercard-logo-svg-wikimedia-commons-4.png"
                        alt="">
                </div>
                <div class="number">
                    <label class="fw-bold">**** **** **** 1060</label>
                </div>
                <div class="d-flex align-items-center justify-content-between">
                    <small><span class="fw-bold textlft">Expiry date: 10/16</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="fw-bold ">Name: Kumar</span></small>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-lg-0 mb-3">
            <div class="card p-3">
                <div class="img-box">
                    <img src="https://www.freepnglogos.com/uploads/discover-png-logo/credit-cards-discover-png-logo-4.png"
                        alt="">
                </div>
                <div class="number">
                    <label class="fw-bold">**** **** **** 1060</label>
                </div>
                <div class="d-flex align-items-center justify-content-between">
                    
                    <small><span class="fw-bold textlft">Expiry date: 10/16</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="fw-bold ">Name: Kumar</span></small>
                
                </div>
            </div>
        </div>
        <div class="col-12 mt-4">
            <div class="card p-3">
                <p class="mb-0 fw-bold h4"><center>Payment Methods</center></p>
            </div>
        </div>
        <div class="col-12">
            <div class="card p-3">
                <div class="card-body border p-0">
                    <p>
                        <a class="btn btn-primary w-100 h-100 d-flex align-items-center justify-content-between"
                            data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true"
                            aria-controls="collapseExample">
                            <span class="fw-bold">PayPal</span>
                            <span class="fab fa-cc-paypal">
                            </span>
                        </a>
                    </p>
                   
                    
                    <div class="collapse p-3 pt-0" id="collapseExample">
                        <div class="row">
                            <div class="col-8"><br>
                                <p class="h4 mb-0">Summary</p>
                                <p class="mb-0"><span class="fw-bold ">Product:</span><span class="c-green">:Notes</span></p>
                                <p class="mb-0"><span class="fw-bold">Price:</span><span
                                        class="c-green">:$452.90</span></p>
                                <p class="mb-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Atque
                                    nihil neque
                                    quisquam aut
                                    repellendus, dicta vero? Animi dicta cupiditate, facilis provident quibusdam ab
                                    quis,
                                    iste harum ipsum hic, nemo qui!</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body border p-0">
                    <p>
                        <a class="btn btn-primary p-2 w-100 h-100 d-flex align-items-center justify-content-between"
                            data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true"
                            aria-controls="collapseExample"><br>
                            <span class="fw-bold">Credit Card</span><br>
                            <span class="">
                                <span class="fab fa-cc-amex"></span>
                                <span class="fab fa-cc-mastercard"></span>
                                <span class="fab fa-cc-discover"></span>
                            </span>
                        </a>
                    </p>
                    <div class="collapse show p-3 pt-0" id="collapseExample">
                        <div class="row">
                            <div class="col-lg-5 mb-lg-0 mb-3">
                                <p class="h4 mb-0">Summary</p>
                                <p class="mb-0"><span class="fw-bold">Product:</span><span class="c-green">: Name of
                                        product</span>
                                </p>
                                <p class="mb-0">
                                    <span class="fw-bold">Price:</span>
                                    <span class="c-green">:$452.90</span>
                                </p>
                                <p class="mb-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Atque
                                    nihil neque
                                    quisquam aut
                                    repellendus, dicta vero? Animi dicta cupiditate, facilis provident quibusdam ab
                                    quis,
                                    iste harum ipsum hic, nemo qui!</p> <br>
                            </div>
                            <div class="col-lg-7">
                                <form action="" class="form">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form__div">
                                                <input type="text" class="form-control" placeholder=" ">
                                                <label for="" class="form__label">Card Number</label>
                                            </div>
                                        </div>

                                        
                                        <div class="col-6">
                                            <div class="form__div">
                                                <input type="text" class="form-control" placeholder=" ">
                                                <label for="" class="form__label">MM / yy</label>
                                            </div>
                                        </div>

                                        <div class="col-6">
                                            <div class="form__div">
                                                <input type="password" class="form-control" placeholder=" ">
                                                <label for="" class="form__label">cvv code</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form__div">
                                                <input type="text" class="form-control" placeholder=" ">
                                                <label for="" class="form__label">name on the card</label>
                                            </div>
                                        </div>
                                        <%
                                           int nid =Integer.parseInt(request.getParameter("nid"));
                                           DB.DBConnection  db = new DB.DBConnection();
                                           db.pstmt = db.con.prepareStatement("select * from notes where notesid=?");
                                           db.pstmt.setInt(1,nid);
                                           db.rst = db.pstmt.executeQuery();
                                           if(db.rst.next()){
                                               
                                           String aaa = db.rst.getString(8);
                                            %>
                                        
                                        <div class="col-12">
                                            <button  style='background:blue;' ><a style=' color:white; text-decoration:none' href='assets/pdf/"<%=aaa %>"'>Submit</a></button>
                                            
                                            
                                        </div>
                                        <%
                                           }
                                               %>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12">
            <div class="btn btn-primary payment">
                <a style="text-decoration: none; color: white;" href="#"> Make Payment</a>
               
            </div>
        </div>
    </div>
</div>
</body>
</html>