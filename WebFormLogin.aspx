<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebFormLogin.aspx.cs" Inherits="WebApplication.WebFormLogin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <h1>Log in.</h1>
    <h5>Use a local account to log in.</h5>
   
 
      
   
    
  <formview class="px-4 py-3">
           <div class="form-group">
              
    <label for="exampleInputEmail1">Username</label>
    
     <asp:TextBox ID="TextBoxEmail" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Enter Username" ></asp:TextBox>
    </div>
    
 
              
    <div class="form-group">
        
 

    <label for="exampleInputPassword1">Password</label>
        <asp:TextBox ID="TextBoxPassword" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Password" TextMode="Password" Width="168px"></asp:TextBox>
</div>
      <asp:Button ID="ButtonSubmit" CssClass="btn btn-primary" runat="server" Text="Sign in" OnClick="ButtonSubmit_Click1" />
    
    
  
 
   <br >
    <asp:Label ID="LabelMessage" runat="server" Text="Message" Font-Size="Large" ForeColor="#CC6600"></asp:Label>
    

     </formview>
   <%-- <footer class="page-footer font-small black fixed-bottom">
        <div class="footer-copyright text-center py-3">
            <a href="https://mdbootstrap.com/"></a>
          
        </div>
    </footer>--%>
</asp:Content>
