
<%@ Page Title="Fitness Guide" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FitnessGuide.aspx.cs" Inherits="FitConnecticut.FitnessGuide" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeaderPlaceHolder" runat="server">

    <style>
        .FG .description {
            height: 200px;
            overflow-y: scroll;
            border:solid 1px #000;
        }
       .FG .col-sm-6 .thumbnail {
            padding:0;
            margin-top: 25px;
            float:left;
        }
       .FG .col-sm-6 .thumbnail p {
            text-align: -webkit-left;
            margin: 0px 5px;
        }
       .FG .col-md-6 h2 {
            text-align: center;
        }
        .FG .col-md-6 {
            border-right: dashed 1px #808080;
        }
        /* popup window*/
       p.modal-title {
            color: #000;
            padding-bottom: 20px;        

       }
       .reference {
           color:#EAEAEA;
           text-align: center;
       }
       .banner_title {
                position: absolute;
                top: 56%;
                font-size: 100px;
                color: #fff;
                left: 30%;
                font-weight: bold;
                text-shadow: 10px 10px 4px #3b3b3b;

            }
    </style>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <div class="fitnessguide">
        <div class="banner_title">FITNESS GUIDE</div>
    </div>
    <div class="FG container">
    <div class=" col-md-6">
        <h2>Diet Plan</h2>
        <div  class="reference">
            Copyright:<a href="https://darebee.com/" >https://darebee.com/</a>
        </div>
       
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="Diet">
            <ItemTemplate>
                <div class="col-sm-6">
                    <div class="thumbnail">
                        <a href='/Images/Diet/<%# Eval("ImageFile") %>'  alt='<%# Eval("DietName") %>' target="_blank" >
                            <img src='/Images/Diet/<%# Eval("ImageFile") %>' 
                                alt='<%# Eval("DietName") %>' style="height:360px; width:245px" /></a>
                        <div class="caption text-center">
                            <h2><%# Eval("DietName") %></h2>
                            <a href="#" class="btn btn-lg btn-success" data-toggle="modal" data-target=".<%# GetDivClass1() %>">Description</a>
                            <div class="modal fade <%# GetDivClass2() %>" tabindex="-1" role="dialog" aria-labelledby="<%# GetDivClass3() %>" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h2><%# Eval("DietName") %></h2>
                                    <p class="modal-title"  > <br><%# Eval("Description") %></p>
	                        </div>
                            </div>
	                        </div>
                            </div>
                        </div>
                    </div>
                 </div>
            </ItemTemplate>
            </asp:Repeater>

            <asp:SqlDataSource ID="Diet" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessGuide %>" 
                SelectCommand="SELECT [DietName], [Description], [ImageFile] FROM [Diet] ORDER BY [DietName]"></asp:SqlDataSource>
            </div>
        

    <div class="FG col-md-6">
        <h2>Workout Plan</h2>
       <div  class="reference">
            Copyright:<a href="https://darebee.com/" >https://darebee.com/</a>
        </div>
            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">

            <ItemTemplate>
                <div class="col-sm-6">
                    
                    <div class="thumbnail">
                         <a href='/Images/Workout/<%# Eval("ImageFile") %>' alt='<%# Eval("WorkOutName") %>' target="_blank">
       
                            <img src='/Images/Workout/<%# Eval("ImageFile") %>' 
                                alt='<%# Eval("WorkOutName") %>' style="height:360px; width:245px"/></a>
                        <div class="caption text-center">
                            <h2><%# Eval("WorkOutName") %></h2>
                            <a href="#" class="btn btn-lg btn-success" data-toggle="modal" data-target=".<%# GetDivClass1() %>">Description</a>                            
                            <div class="modal fade <%# GetDivClass2() %>" tabindex="-1" role="dialog" aria-labelledby="<%# GetDivClass3() %>" aria-hidden="true">
                                <div class="modal-dialog">
                                <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h2><%# Eval("WorkOutName") %></h2>
                                    <p class="modal-title"  ><br><%# Eval("Description") %></p>
                                </div>
                                </div>
                                </div>
                                </div>
	                        </div>
                    </div>
                </div>
               
            </ItemTemplate>
            </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FitnessGuide %>" SelectCommand="SELECT [WorkOutName], [Description], [ImageFile] FROM [Workout] ORDER BY [WorkOutName]"></asp:SqlDataSource>
    </div>
        </div>
</asp:Content>

