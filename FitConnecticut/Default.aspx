<%@ Page Title="About/Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FitConnecticut.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!-- Carousel Slider starts here -->
<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
    <!-- Overlay -->
    <div class="overlay"></div>
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#bs-carousel" data-slide-to="1"></li>
            <li data-target="#bs-carousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item slides active">
                <div class="slide-1"></div>
                <div class="hero">
                    <hgroup>
                    <h1>Visit the CT Outdoors</h1>        
                    </hgroup>
                </div>
            </div>
            <div class="item slides">
                <div class="slide-2"></div>
                <div class="hero">        
                    <hgroup>
                    <h1>Be Active and Healthy </h1>        
                    </hgroup>       
                </div>
            </div>
            <div class="item slides">
                <div class="slide-3"></div>
                <div class="hero">        
                    <hgroup>
                    <h1>Be Amazing</h1>        
                    </hgroup>
                </div>
            </div>
        </div> 
</div>
<!-- Carousel Slider ends here-->

<!-- Main Container (about Fit Connecticut) starts here -->
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="thumbnail text-center aboutThumbnail">
                <h1>Fit Connecticut</h1>
                <hr class="bg-dark mb-4 w-25">
                <p>A healthy, fit population is a benefit to any state. According to the Robert Wood Johnson Foundation, Connecticut is the ninth fittest 
                   state in the country, with a 25% obesity rate. Connecticut is just ahead of New York, but behind nearby states Massachusetts and Vermont.</p>
                <p>Fit Connecticut is a web application that will easily help users find locations in Connecticut to go hiking, cmaping and swimming. Fit 
                   Connecticut's main goal is to help people make their daily routines healthier by being active while taking adventage of the beautiful outdoors
                   that Connecticut has to offer.</p>
            </div>
        </div>
    </div>
</div>

<!-- Main Container (about Fit Connecticut) ends here -->    

<!-- Cards start here -->
<div class="container container mt-4 mb-5">
    <h3 class="display-4 text-center">Explore What Make Us Fit </h3>
    <hr class="bg-dark mb-4 w-25">
    <div class="row">
        <div class="col-md-4">
            <div class="card text-center">
                <i class="fa fa-photo fa-5x"></i>
                <div class="card-block p-3">
                    <h4 class="card-title">The Outdoor</h4>
                    <hr />
                    <p class="card-text">Be inspired by what Connecticut has to offer us. From exiting expeditions to the mountains to the most 
                        beautiful beaches in New England. Come visit the Connecticut outdoors!</p>
                    <a href="Hiking.aspx" class="btn btn-primary rounded-0 mb-2">Read more</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-center">
                <i class="fa fa-bicycle fa-5x"></i>
                <div class="card-block p-3">
                    <h4 class="card-title">The Excercise</h4>
                    <hr />
                    <p class="card-text">From simple nature walks to amazing hikes, Connecticut has a lot to offer for everyone. We believe that a
                        body on movement is a healthy body, and that is the reason we offer a wide range of outdoor activities and workouts that will 
                        maintain a healthy body.
                    </p>
                    <a href="FitnessGuide.aspx" class="btn btn-primary rounded-0 mb-2">Read more</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card text-center">
                <i class="fa fa-heartbeat fa-5x"></i>
                <div class="card-block p-3">
                    <h4 class="card-title">Traking the Body</h4>
                    <hr />
                    <p class="card-text">Our applpication offers technologies that will track how your body is performing during your transformation. Our
                        Body Mass Index calculator will help you track how your body is performing before and after your workouts.
                    </p>
                    <a href="FitnessCalculator.aspx" class="btn btn-primary rounded-0 mb-2">Read more</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cards end here -->


</asp:Content>
