<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebFormLogin1.aspx.cs" Inherits="WebApplication.WebFormLogin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  
      <style>
* {
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    font-family: arial
}

body {
    background:lightblue;
}

h1 {
    color:chocolate;
    text-align: center;
    font-family:'Times New Roman';
    font-size: 60px
}

.login-form {
    width: 350px;
    padding: 40px 30px;
    background:#5cd65c;
    margin: auto;
    border: 1px solid #fff;
    position: absolute;
    left: 0;
    right: 0;
    top: 10%
}

.form-group {
    position: relative;
    margin-bottom: 15px
}

.form-control {
    width: 100%;
    height: 50px;
    border: none;
    padding: 5px 7px 5px 15px;
    background: #ffffff;
    color: #666;
    border: 2px solid #ddd
}

.form-group .mdi {
    position: absolute;
    right: 15px;
    top: 17px;
    color: #999
}

.mdi {
    top: 13px !important;
    color: #0AC986 !important
}

.form-control:focus {
    color: #fff !important;
    background-color: #fff;
    border-color: #fff !important;
    outline: none;
    box-shadow: none
}

.log-status.wrong-entry .form-control,
.wrong-entry .form-control+.mdi {
    border-color: #ed1c24;
    color: #ed1c24
}

.log-btn {
    background: #0AC986;
    display: inline-block;
    width: 100%;
    font-size: 16px;
    height: 50px;
    color: #fff;
    text-decoration: none;
    border: none
}

.link {
    text-decoration: none;
    color: #ffffff;
    float: right;
    font-size: 14px;
    margin-bottom: 15px
}

.alert {
    display:none;
    font-size: 12px;
    color: black;
    float: left
}

a {
    text-decoration: none !important
}
</style>
         
 
  
<div class="login-form">
    <h1>Login</h1>

    <div class="form-group ">
    <label for="exampleInputEmail1" style="font-size: large">Username</label>
     <asp:TextBox ID="TextBoxEmail" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Username" ></asp:TextBox>

<%--        <input type="text" class="form-control" placeholder="Username " id="UserName">--%>
        <i class="mdi mdi-account"></i> 

    </div>
    <div class="form-group log-status"> 
 <label for="exampleInputPassword1" style="font-size: large">Password</label>
        <asp:TextBox ID="TextBoxPassword" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Password" TextMode="Password"></asp:TextBox>
<%--        <input type="password" class="form-control" placeholder="Password" id="Passwod">--%>
        <i class="mdi mdi-lock">

        </i> 

    </div> 
   <%-- <span class="alert">Invalid Credentials</span> 
    <a class="link" href="#">Lost your password?</a>--%>
   <asp:Button ID="ButtonSubmit" CssClass="btn btn-primary" runat="server" Text="Sign in" OnClick="ButtonSubmit_Click1" /><i class="mdi mdi-account"></i>
     <br >
    <asp:Label ID="LabelMessage" runat="server" Text="Message" Font-Size="Large" ForeColor="#CC6600"></asp:Label>
</div>
</asp:Content>
