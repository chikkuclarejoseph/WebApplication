<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebFormAdmin1.aspx.cs" Inherits="WebApplication.WebFormAdmin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 
  <div class="form-group">
    <label for="LabelDefaultPageText1">DefaultPageText1</label>
               <asp:TextBox ID="TextBoxDefaultPageText1" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Text1" Width="172px"></asp:TextBox>    </div>

<%--    <input type="email" class="form-control" id="TextBoxDe" aria-describedby="emailHelp" placeholder="Text1">--%>
<%--    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
 

  <div class="form-group">
    <label for="LabelDefaultPageText2">DefaultPageText2</label>
               <asp:TextBox ID="TextBoxDefaultPageText2" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Text2" Width="172px"></asp:TextBox>    </div>

<%--    <input type="email" class="form-control" id="exampleInputPassword1" placeholder="Text2">--%>


     <div class="form-group">
    <label for="LabelHeaderText">Header Text</label>
                  <asp:TextBox ID="TextBoxHeader" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Header" Width="172px"></asp:TextBox>    </div>

<%--    <input type="email" class="form-control" id="HeaderText" placeholder="Header">--%>


     <div class="form-group">
    <label for="LabelFooterText">Footer Text</label>
                  <asp:TextBox ID="TextBoxFooter" class="form-control" runat="server" aria-describedby="emailHelp" placeholder="Footer" Width="172px"></asp:TextBox>    </div>

<%--    <input type="email" class="form-control" id="FooterText" placeholder="Footer">--%>
 

    <asp:Button ID="ButtonSave" class="btn btn-success" runat="server" Text="Save" OnClick="ButtonSave_Click" Height="44px" Width="70px" />

 
<%--  <button type="submit" class="btn btn-primary">Submit</button>--%>





</asp:Content>
