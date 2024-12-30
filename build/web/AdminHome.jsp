
<html>
<head>
    
     
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <style>
        #bsize{
            min-height:75px;
            padding-top: 20px;
            font-size: 20;
            
        }
        .separator{
            float: left;
            width: 100%;
        }
        .hv{
            background-image: linear-gradient(#1095c1,#1095c1);
  background-size: 0 100%;
  background-repeat: no-repeat;
  transition: .4s;
        }
        
         .hv:hover{
         
          
           color: #fff;
             background-size: 100% 100%;
            
        }
    </style>
</head>

<body style="background: #1c262f;">
<!--Main Navigation-->
<header style="width: 20%; background: #1c262f;">
  <!-- Sidebar -->
  <div class="separator">
  <nav id="sidebarMenu"   class="collapse d-lg-block sidebar collapse bg-white" style="min-height:100%; ">
    <div class="position-sticky" >
      <div class="list-group list-group-flush mx-3 mt-4" style="padding:20px 5px">
          <i class="fas fa-tachometer-alt fa-fw me-3"></i><span></span>
       
          
        <a id="bsize" href="Adminhometext.jsp" class="list-group-item list-group-item-action py-2 ripple hv">
          <i class="fas fa-chart-area fa-fw me-3"></i><span>Home </span>
        </a>
        <a id="bsize" href="AdminBuyerList.jsp" class="list-group-item list-group-item-action py-2 ripple hv"><i
            class="fas fa-lock fa-fw me-3"></i><span>Buyer List</span></a>
             <a id="bsize" href="AdminUploaderList.jsp" class="list-group-item list-group-item-action py-2 ripple hv"><i
            class="fas fa-lock fa-fw me-3"></i><span>Uploader List</span></a>
        <a id="bsize" href="AdminViewNotes.jsp" class="list-group-item list-group-item-action py-2 ripple hv"><i
            class="fas fa-chart-line fa-fw me-3"></i><span>Uploaded Notes</span></a>
            
        <a id="bsize" href="AdminReqmgmt.jsp" class="list-group-item list-group-item-action py-2 ripple hv">
          <i class="fas fa-chart-pie fa-fw me-3"></i><span>View Requests</span>
        </a>
          <a id="bsize" href="AdminViewComment.jsp" class="list-group-item list-group-item-action py-2 ripple hv">
          <i class="fas fa-chart-pie fa-fw me-3"></i><span>View Comments</span>
        </a>
         <a id="bsize" href="AdminViewFeedback.jsp" class="list-group-item list-group-item-action py-2 ripple hv">
          <i class="fas fa-chart-pie fa-fw me-3"></i><span>View Feedback</span>
        </a>
         <a id="bsize" href="ServiceSubscription.jsp" class="list-group-item list-group-item-action py-2 ripple hv">
          <i class="fas fa-chart-pie fa-fw me-3"></i><span>Subscription Request</span>
        </a>
          <a id="bsize" href="AdminChngPass.jsp" class="list-group-item list-group-item-action py-2 ripple hv">
          <i class="fas fa-chart-pie fa-fw me-3"></i><span>Change Password</span>
        </a>
          <a  id="bsize" href="logout" class="list-group-item list-group-item-action py-2 ripple hv">
          <i class="fas fa-chart-pie fa-fw me-3"></i><span>Logout</span>
        </a>
       
      </div>
    </div>
  </nav>
  </div>
  <!-- Sidebar -->
  <div class="separator" style="color:white;"></div>
  <!-- Navbar -->
  <nav id="main-navbar" class="navbar navbar-expand-lg navbar-light bg-white fixed-top"  ">
    <!-- Container wrapper -->
    <div class="container-fluid" style="background:#1c262f;">
      <!-- Toggle button -->
      <button class="navbar-toggler" type="button" data-mdb-collapse-init data-mdb-target="#sidebarMenu"
        aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Brand -->
      <a class="navbar-brand" href="AdminHome.jsp">
          <h3 style="color: white;">Notes Exchange Platform</h3>
        
      </a>
     
      <!-- Right links -->
      <ul class="navbar-nav ms-auto d-flex flex-row"  ">
        <!-- Notification dropdown -->
       

        <!-- Icon -->
        <li class="nav-item">
          <a class="nav-link me-3 me-lg-0" href="#">
            <i class="fas fa-fill-drip"></i>
          </a>
        </li>
        <!-- Icon -->
        <li class="nav-item me-3 me-lg-0">
          <a class="nav-link" href="#">
            <i class="fab fa-github"></i>
          </a>
        </li>

      

      
      </ul>
    </div>
    <!-- Container wrapper -->
  </nav>
  <!-- Navbar -->
</header>



<!--Main Navigation-->

<!--Main layout-->
<main style="margin-top: 58px;">
    <div class="container pt-4">
        
        
        
    </div>
    
</main>

</div>
<!--Main layout-->

<div>
  
    <%--include file="AdminAddNotes.jsp" --%>
  
    
   
       
     
  
        
         
         
   
    
       
</div>
</body>
</html>