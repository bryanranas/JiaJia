<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ChineseRestaurant.WebForm1" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">

    <article id="content">
        <div class="slider_bg">
            <div class="slider">
                <ul class="items">
                    <li>
                        <img src="images/img1.jpg" alt="" />
                        <div class="banner">
                            <strong>Dry Chili<span>Chicken</span></strong>
                            <b>Chef's Specialty</b>
                            <p>
                                <span>Succulent morsels of juicy<br />
                                    chicken, perfectly seasoned in a blend of delicious spices.</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <img src="images/img2.jpg" alt="" />
                        <div class="banner">
                            <strong>Beef<span>Rolls</span></strong>
                            <b>Signature Dish</b>
                            <p>
                                <span>Only the freshest ingredients<br />
                                    are used to bring you this traditional Taiwanese favorite.</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <img src="images/img3.jpg" alt="" />
                        <div class="banner">
                            <strong>Walnut<span>Shrimp</span></strong>
                            <b>Customer Favorite</b>
                            <p>
                                <span>Mouth-watering shrimp<br />
                                    and walnuts with our special sauce combine into one decadent dish.</span>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="wrap">
            <section class="cols">
                <div class="box">
                    <div>
                        <h2>Our <span>Restaurant</span></h2>
                        <figure>
                            <img src="images/page1_img1.jpg" alt="">
                        </figure>
                        <p class="pad_bot1">
                            Jia Jia Cafe has brought the best and the brightest chefs from around the country to create dishes that are traditional yet fresh.
                    <br />
                        </p>
                        <a href="About.aspx" class="button1">Read More</a>
                    </div>
                </div>
            </section>
            <section class="cols pad_left1">
                <div class="box">
                    <div>
                        <h2>Our <span>Food</span></h2>
                        <figure>
                            <img src="images/page1_img2.jpg" alt="">
                        </figure>
                        <p class="pad_bot1">Serving the best in traditional Taiwanese and Chinese cuisine, Jia Jia Cafe's menu is the culmination of years of culinary experience.</p>
                        <a href="Menu.aspx" class="button1">Read More</a>
                    </div>
                </div>
            </section>
            <section class="cols pad_left1">
                <div class="box">
                    <div>
                        <h2>Our <span>Promise</span></h2>
                        <figure>
                            <img src="images/page1_img3.jpg" alt="">
                        </figure>
                        <p class="pad_bot1">We take your comments and concerns seriously.  Please leave us a message and we will do our best to accomodate you.</p>
                        <a href="Contact.aspx" class="button1">Read More</a>
                    </div>
                </div>
            </section>
        </div>
    </article>

</asp:Content>
