<%@ Page Title="Camping" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Camping.aspx.cs" Inherits="FitConnecticut.Camping" %>

 <asp:Content ID="Content2" ContentPlaceHolderID="HeaderPlaceHolder" runat="server">
     <style>
         .banner_title {
                position: absolute;
                top: 56%;
                font-size: 100px;
                color: #fff;
                left: 37%;
                font-weight: bold;
                text-shadow: 10px 10px 4px #3b3b3b;
            }
     </style>
     
 </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="camping">
       
        <div class="banner_title">CAMPING</div>
    </div>
    <div class="FG container">

<div class="fullscreen">
    <iframe width="100%" height="550" scrolling="no" frameborder="no" src="https://fusiontables.google.com/embedviz?q=select+col10+from+1kZIp_x18NWVANE_i9kp9It_4mFObX1XsG3JGtyHo&amp;viz=MAP&amp;h=false&amp;lat=41.57639546249101&amp;lng=-72.70139009570312&amp;t=1&amp;z=9&amp;l=col10&amp;y=2&amp;tmplt=2&amp;hml=KML"></iframe>
</div>
    <iframe width="100%" height="1000" scrolling="yes" frameborder="no"  src="https://fusiontables.google.com/embedviz?viz=CARD&amp;q=select+*+from+1kZIp_x18NWVANE_i9kp9It_4mFObX1XsG3JGtyHo&amp;tmplt=3&amp;cpr=3"></iframe>
        </div>
</asp:Content>
