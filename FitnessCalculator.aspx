<%@ Page Title="Fitness Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FitnessCalculator.aspx.cs" Inherits="FitConnecticut.FitnessCalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!-- Header starts here -->
<div class="fitnesscalculator">
  
    <div class="banner_title_fitnesscalculator">FITNESS<br />CALCULATOR</div>
</div>

<!-- Cards start here -->
<div class="container container mt-4 mb-5">
    <hr />
    <div class="row">
        <div class="col-md-4">
            <div class="card text-center">
                <i class="fa fa-calculator fa-5x"></i>
                <div class="card-block p-3">
                    <h4 class="card-title">What Is the BMI? </h4>
                    <hr />
                    <p class="card-text">The Body Mass Index (BMI) is a measure of body fat by comparing your body weight to your height. This ratio 
                        determines whether you are at a healthy weight, underweight or overweight. In countries that use the metric system, BMI can be 
                        calculated in meters and kilograms. In the United States, it is calculated in inches and pounds.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-center">
                <i class="fa fa-stethoscope fa-5x"></i>
                <div class="card-block p-3">
                    <h4 class="card-title">Why Use BMI Calculator</h4>
                    <hr />
                    <p class="card-text">Knowing that the calculation only requires height and weight, BMI is an easy-to-perform and inexpensive screening
                        tool to identify probable weight problems for adults. The Centers for Disease Control (CDC) also uses this calculation for population 
                        assessment of overweight and obesity.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-center">
                <i class="fa fa-cogs fa-5x"></i>
                <div class="card-block p-3">
                    <h4 class="card-title">How It Works?</h4>
                    <hr />
                    <p class="card-text">The BMI Calculator uses general information like weight, height, age and gender. Since it is an estimate of body fat, 
                        BMI can also measure the risks of health problems that may occur with overweight and obesity. The higher the BMI, the higher the risk 
                        for diseases, such as high blood pressure, heart disease, type 2 diabetes, osteoarthritis, gallstones, sleep apnea and certain cancers.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cards end here -->

<!-- Calculator starts here -->
<div class="container">
    <div class="well"> 
        <h3 class="text-center">BMI Calcualtor</h3>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary text-danger" HeaderText="Please re-enter the following entries:" />
    <div class="form-group">
        <asp:Label  ID="lblAge" runat="server" Cssclass="control-label col-md-6 text-center">Age: </asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Age" CssClass="text-danger" Display="Dynamic" ControlToValidate="txtAge" >* Required</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge"  CssClass="text-danger" Type="Integer" MinimumValue="12" MaximumValue="110"  ErrorMessage="Age must be between 12 and 110"></asp:RangeValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lblGender" runat="server" CssClass="control-label col-md-6 text-center" >Gender: </asp:Label>
        <div class="col-md-3">
            <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Vertical"  CssClass="col-md-3" >
                <asp:ListItem Value="Female">Female</asp:ListItem>
                <asp:ListItem Value="Male">Male</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="lblWeight" runat="server" Cssclass="control-label col-md-6 text-center">Weight: </asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control" TextMode="Number" PlaceHolder="lb" ></asp:TextBox>
        </div>
        <div class="col-md-3">
            <asp:RequiredFieldValidator ID="rfvWeight" runat="server" ErrorMessage="Weight" CssClass="text-danger" Display="Dynamic" ControlToValidate="txtWeight" >* Required</asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group row">
        <asp:Label ID="lblHeightFt" runat="server" Cssclass="control-label col-md-6 text-center" Text="Label">Height: </asp:Label>
        <div class="col-md-1">
            <asp:TextBox ID="txtHeightFt" runat="server" Cssclass="form-control" TextMode="Number" PlaceHolder="ft"></asp:TextBox>
        </div>
        <div class="col-md-1">
            <asp:TextBox ID="txtHeightIn" runat="server" Cssclass="form-control" TextMode="Number" PlaceHolder="in"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:RequiredFieldValidator ID="rfvHeightFt" runat="server" ErrorMessage="Height in Ft" CssClass="text-danger" Display="Dynamic" ControlToValidate="txtHeightFt">* Required</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvHeightIn" runat="server" ErrorMessage="Height in In" CssClass="text-danger" Display="Dynamic" ControlToValidate="txtHeightIn">* Required</asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="well text-center">
        <h3>Your BMI is: </h3>
    </div>
    <div class="form-group">
        <div class="col-md-12 text-center">
            <asp:Label ID="lblYourBMI" CssClass="results" runat="server"></asp:Label>
        </div>
        <div class="col-md-12 text-center">           
            <asp:Label ID="lblCategory" CssClass="results" runat="server"></asp:Label>
        </div>
    </div>    
    <div class="form-group">
        <div class="col-md-12 text-center">
            <asp:Button ID="btnCalcualte" runat="server" Text="Calculate" OnClick="btnCalcualte_Click" CssClass="btn btn-primary btn-lg" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"  CssClass="btn btn-primary btn-lg" CausesValidation="false"/>
        </div>
    </div>
</div>

<!-- Calculator ends here -->

</asp:Content>
