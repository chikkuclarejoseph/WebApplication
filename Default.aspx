<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <style>
* {
    padding: 0;
    margin: 0
}

.card_container {
    height: 30vh;
    width:170vh;
    display:grid;
    justify-content:center;
    align-items: center;
    background-color:lightblue
}

.card {
    width: 100px;
    height: 50px;
    border-radius: 14px;
    padding: 20px;
    position: relative
}

.card .card-container {
    width: 100%;
    height: 100%;
    position: relative;
    background-color:lightseagreen;
    z-index: 10;
    border-radius: 10px;
    padding: 15px;
    padding-top: 50px
}

.card-container h4 {
    font-size: 26px;
    margin-bottom: 10px
}

.card p {
    font-size: 17px
}

.card::before {
    position: absolute;
    content: '';
    background-color: #fc5185;
    height: 35px;
    width: 35px;
    top: 3rem;
    right: -23px;
    transform: rotate(45deg);
    z-index: 10
}

.card::after {
    position: absolute;
    content: attr(data-label);
    top: 27px;
    padding-left: 20px;
    padding: 10px;
    right: -31px;
    width: 8rem;
    background-color: #fc5185;
    z-index: 12;
    border-bottom-left-radius: 50px;
    border-top-left-radius: 50px;
    border-top-right-radius: 50px;
    color: #fff
}

   </style>

    <div class="card_container">
<%--    <div class="card" data-label="Coming Soon">--%>
        <div class="card-container">
          <p class="lead"> <asp:Label ID="LabelDefaultPageText1" runat="server" Font-Bold="True"  ForeColor="#CC0000" Font-Size="Larger"></asp:Label></p>
<%--  <p class="lead"> <asp:Label ID="LabelDefaultPageText2" runat="server"  Font-Bold="True" ForeColor="#CC0000" Font-Size="Large"></asp:Label></p>--%>

        </div>
  </div>

<%--      <p class="lead"> <asp:Label ID="LabelDefaultPageText1" runat="server" Font-Bold="True" BackColor="#00CC00" ForeColor="White" Height="30px" Width="400px" Font-Size="Large" BorderStyle="Ridge"></asp:Label></p>
  <p class="lead"> <asp:Label ID="LabelDefaultPageText2" runat="server" BackColor="#00CC00" ForeColor="White" Height="30px" Width="400px" Font-Size="Large" BorderStyle="Ridge"></asp:Label></p>--%>

    </asp:Content>