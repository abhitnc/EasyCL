﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addRecipe.aspx.cs" Inherits="addRecipe" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Design System for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>Argon Design System - Free Design System for Bootstrap 4</title>
    <!-- Favicon -->
    <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!-- Icons -->
    <link href="../assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
    <link href="../assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Argon CSS -->
    <link type="text/css" href="../assets/css/argon.css?v=1.0.1" rel="stylesheet">
    <!-- Docs CSS -->
    <link type="text/css" href="../assets/css/docs.min.css" rel="stylesheet">
</head>
<body>
    <main>
        <section class="section section-shaped section-lg">
            <div class="shape shape-style-1 bg-gradient-default">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
            <div class="container pt-lg-md">
                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        <div class="card bg-secondary shadow border-0">
                            <div class="card-header bg-white pb-5">
                                
                                <div class="text-center">
                                    <h3>Add Recipe</h3>
                                </div>
                            </div>
                            <div class="card-body px-lg-5 py-lg-5">
                               
                                <form runat="server">
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative mb-3">
                                            <div class="input-group-prepend">
                                         </div>
        <asp:TextBox ID="TextBox1" placeholder="Recipe Name" TextMode="SingleLine" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Textbox1" Display="Dynamic" ErrorMessage="Enter Recipe Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative mb-3">
                                            <div class="input-group-prepend">
                                            </div>
        <asp:TextBox TextMode="MultiLine" runat="server" placeholder="Ingredients" ID="Ingre"></asp:TextBox>
                                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ControlToValidate="Ingre" ErrorMessage="Number Required"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative mb-3">
                                            <div class="input-group-prepend">
                                            </div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" >--Category--</asp:ListItem>
            <asp:ListItem>Breakfast</asp:ListItem>
            <asp:ListItem>Lunch</asp:ListItem>
            <asp:ListItem>Dinner</asp:ListItem>
            <asp:ListItem>Snacks</asp:ListItem>
            <asp:ListItem>Beverage</asp:ListItem>
        </asp:DropDownList>
                                        </div>
        <asp:RequiredFieldValidator Display="Dynamic" InitialValue="--Category--" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select the Category" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative">
                                            <div class="input-group-prepend">
                                            </div>
        <asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Columns="10" placeholder="Time to Cook in Min" Rows="5" min="0"></asp:TextBox>
        <asp:RequiredFieldValidator ID="TTKval" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter minutes" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                                            <div class="form-group">
                                        <div class="input-group input-group-alternative">
                                            <div class="input-group-prepend">
                                            </div>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Upload the image of product" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
        
                                          </div>
                                            </div>
      </div>
                                    <div class="text-muted font-italic">
                                    </div>
                                    <div class="text-center">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Recipe" />
                                    </div>
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer class="footer">
        <div class="container">
            <div class="row row-grid align-items-center mb-5">
                <div class="col-lg-6">
                    <h3 class="text-primary font-weight-light mb-2">Thank you for supporting us!</h3>
                    <h4 class="mb-0 font-weight-light">Let's get in touch on any of these platforms.</h4>
                </div>
                <div class="col-lg-6 text-lg-center btn-wrapper">
                    <a target="_blank" href="https://twitter.com/creativetim" class="btn btn-neutral btn-icon-only btn-twitter btn-round btn-lg" data-toggle="tooltip" data-original-title="Follow us">
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a target="_blank" href="https://www.facebook.com/creativetim" class="btn btn-neutral btn-icon-only btn-facebook btn-round btn-lg" data-toggle="tooltip" data-original-title="Like us">
                        <i class="fa fa-facebook-square"></i>
                    </a>
                    <a target="_blank" href="https://dribbble.com/creativetim" class="btn btn-neutral btn-icon-only btn-dribbble btn-lg btn-round" data-toggle="tooltip" data-original-title="Follow us">
                        <i class="fa fa-dribbble"></i>
                    </a>
                    <a target="_blank" href="https://github.com/creativetimofficial" class="btn btn-neutral btn-icon-only btn-github btn-round btn-lg" data-toggle="tooltip" data-original-title="Star on Github">
                        <i class="fa fa-github"></i>
                    </a>
                </div>
            </div>
            <hr>
            <div class="row align-items-center justify-content-md-between">
                <div class="col-md-6">
                    <div class="copyright">
                        &copy; 2018
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
                    </div>
                </div>
                <div class="col-md-6">
                    <ul class="nav nav-footer justify-content-end">
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://github.com/creativetimofficial/argon-design-system/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- Core -->
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/popper/popper.min.js"></script>
    <script src="../assets/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="../assets/vendor/headroom/headroom.min.js"></script>
    <!-- Argon JS -->
    <script src="../assets/js/argon.js?v=1.0.1"></script>
    
</body>


</html>
