<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebFormAdmin2.aspx.cs" Inherits="WebApplication.WebFormAdmin2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--   @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");--%>
<style>
h2 {
    color:chocolate;
    text-align: center;
    font-family:'Times New Roman';
    font-size: 40px
}




body {
    background-color:lightblue;
    font-family: "Poppins", sans-serif;
    font-weight: 300
}

.height {
    height: 80vh
}

.card {
    border:groove;
    padding: 20px;
    background-color: #5cd65c;
    color: #fff
}

/*.circle {
    height: 20px;
    width: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #5855e7;
    color: #fff;
    font-size: 10px;
    border-radius: 50%
}*/

.form-input {
    position: relative;
    margin-bottom: 10px;
    margin-top: 10px
}

.form-input i {
    position:center;
    font-size: 18px;
    top: 15px;
    left: 30px
}

.form-control {
    height: 50px;
    background-color:#FFFFFF;
    text-indent: 24px;
    font-size: 15px
}

.form-control:focus {
    background-color: #25272a;
    box-shadow: none;
    color: #fff;
    border-color: #4f63e7
}

.form-check-label {
    margin-top: 2px;
    font-size: 14px
}

.signup {
    height: 40px;
    font-size: 14px
}

.social {
    height: 50px;
    width: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    border: 1px solid #eee;
    border-radius: 50%;
    margin-right: 10px;
    cursor: pointer
}

.social:hover {
    background-color: #0d6efd;
    border-color: #0d6efd
}
   </style>   

    <h2 style="font-weight: bold">Admin Control Panel</h2>  


    <div class="container mt-5 mb-5">

    <div class="row d-flex align-items-center justify-content-center">
        <div class="col-md-6">
            
            <div class="card px-5 py-5"> <span class="circle"><i class="fa fa-check"></i></span>
<%--                <h5 class="mt-3">Join over 25 million <br> learners from around the globe</h5> <small class="mt-2 text-muted">Master the languages of the web: HTML, CSS and javascript. This path will prepare you to build basic websites and then build interactive web apps</small>--%>
              
                <div class="form-input"> <i class="fa fa-envelope"></i>
               <label for="LabelDefaultPageText1" style="color: #0000FF; font-size: large;">Default Page Text1</label>
               <asp:TextBox ID="TextBoxDefaultPageText1" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Text1" ></asp:TextBox>    </div>


                <div class="form-input"> <i class="fa fa-user"></i>
        <label for="LabelDefaultPageText2" style="color: #0000FF; font-size: large;">Default Page Text2</label>
               <asp:TextBox ID="TextBoxDefaultPageText2" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Text2"></asp:TextBox>    </div>

                <div class="form-input"> <i class="fa fa-lock"></i> 
 <label for="LabelHeaderText" style="color: #0000FF; font-size: large;">Header Text</label>
                  <asp:TextBox ID="TextBoxHeader" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Header"></asp:TextBox>    </div>

                <div class="form-check"> 
 <label for="LabelFooterText" style="color: #0000FF; font-size: large;">Footer Text</label>
                  <asp:TextBox ID="TextBoxFooter" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Footer"></asp:TextBox>    </div>
                
                  <asp:Button ID="ButtonSave" class="btn btn-success" runat="server" Text="Save" OnClick="ButtonSave_Click" BackColor="#6600FF" /><i class="mdi mdi-account"></i>

            </div>
        </div>
    </div>
</div>




</asp:Content>
