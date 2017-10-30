<%@ Page Title="Hiking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hiking.aspx.cs" Inherits="FitConnecticut.Hiking" %>
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
    
    <div class="hiking">
        
        <div class="banner_title">HIKING</div>
    </div>
      <div class="FG container">

<!--Hiking-->
 
<iframe width="100%" height="550" scrolling="no" frameborder="no" src="https://fusiontables.google.com/embedviz?q=select+col10+from+1veiHl4ppqEbtqjq-8pkdhsbq4i-SJLQOW7Yi48Nu&amp;viz=MAP&amp;h=false&amp;lat=41.61542182168054&amp;lng=-72.51050264453124&amp;t=1&amp;z=9&amp;l=col10&amp;y=2&amp;tmplt=3&amp;hml=KML"></iframe>
<iframe  width="100%" height="1000" scrolling="yes" frameborder="no" src="https://fusiontables.google.com/embedviz?viz=CARD&amp;q=select+*+from+1veiHl4ppqEbtqjq-8pkdhsbq4i-SJLQOW7Yi48Nu&amp;tmplt=1&amp;cpr=3"></iframe>

          </div>
</asp:Content>
