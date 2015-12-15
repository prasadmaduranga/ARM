<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ARM.Login" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <%--  Get CSS and javascript Files --%>
    <link href="bootstrap-3.3.5-dist/css/Custom.css" rel="stylesheet" />

    <link href="bootstrap-3.3.5-dist/css/bootstrap.css" rel="stylesheet" />
    <meta charset="UTF-8" />

    <title>Automated Meter Reading System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
    <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
    <meta name="author" content="Codrops" />
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="Login/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="Login/css/style2.css" />
    <link rel="stylesheet" type="text/css" href="Login/css/animate-custom.css" />
</head>
<body>


    <form id="Form1" runat="server">
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">


                <div class="clr"></div>
            </div>
            <!--/ Codrops top bar -->
            <header>
                <div style="float: left">

                    <asp:Image ID="Image1" CssClass="img2" ImageUrl="Images/logo6.png" Height="193px" runat="server" />

                </div>
                <h1 style="width: 78%; padding-left: 215px;">Automated Meter Reading System</h1>
            </header>
            <section>
                <div id="container_demo">
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <div id="login" class="animate form">

                                    <h1>Log in</h1>
                                    <p>

                                        <asp:Label ID="Label1" runat="server" Text="User Name" for="username" class="uname" data-icon="u"></asp:Label>

                                        <asp:TextBox ID="TextBox1" runat="server" name="username" type="text" placeholder="Your User Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>
                                    </p>
                                    <p>

                                        <asp:Label ID="Label2" runat="server" Text="Password" class="youpasswd" data-icon="p"></asp:Label>


                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Your Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>


                                    </p>

                                    <p class="login button">

                                        <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" ValidationGroup="group1" />
                                    </p>
                                    <p class="change_link">
                                        Not a member yet ?

                                        <asp:LinkButton ID="LinkButton1" class="to_register" runat="server" OnClick="LinkButton1_Click">Join Us</asp:LinkButton>
                                    </p>

                                </div>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <div id="Div4" style="border: solid 1px black" class="animate form">
                                    <h1>Sign up </h1>





                                    <p>
                                    </p>
                                    <p>


                                        <asp:Label ID="Label3" class="youmail" data-icon="e"
                                            runat="server" Text="Name"></asp:Label>
                                        <asp:TextBox ID="TextBox6" placeholder="Name"
                                            runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>
                                    </p>
                                    <p>

                                        <asp:Label ID="Label7" class="youmail" data-icon="e"
                                            runat="server" Text="User Name"></asp:Label>
                                        <asp:TextBox ID="TextBox9" placeholder="User Name"
                                            runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>



                                    </p>
                                    <p>

                                        <asp:Label ID="Label5" class="youmail" data-icon="e"
                                            runat="server" Text="E mail"></asp:Label>

                                        <asp:TextBox ID="TextBox4" placeholder="mysupermail@mail.com"
                                            runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                            ForeColor="Red"></asp:RegularExpressionValidator>

                                    </p>
                                      <p>

                                        <asp:Label ID="Label13" class="youmail" data-icon="e"
                                            runat="server" Text="Address"></asp:Label>

                                        <asp:TextBox ID="TextBox13" placeholder="Address"
                                            runat="server"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator12" Display="Dynamic" runat="server" ControlToValidate="TextBox13" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>
                                   

                                    </p>
                                    <p>


                                        <asp:Label ID="Label4" class="youmail" data-icon="e"
                                            runat="server" Text="Mobile No."></asp:Label>
                                        <asp:TextBox ID="TextBox3" placeholder="Mobile Number"
                                            runat="server" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>
                                    </p>
                                    <p>

                                        <asp:Label ID="Label6" class="youmail" data-icon="e"
                                            runat="server" Text="Telephone No."></asp:Label>
                                        <asp:TextBox ID="TextBox5" placeholder="Land Number"
                                            runat="server" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>



                                    </p>
                                    <p>

                                        <asp:Label ID="Label10" class="youmail" data-icon="e"
                                            runat="server" Text="NIC"></asp:Label>
                                        <asp:TextBox ID="TextBox10" placeholder="NIC number"
                                            runat="server"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="Dynamic" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>--%>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" Display="Dynamic" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>


                                    </p>

                                       <p>

                                        <asp:Label ID="Label11" class="youmail" data-icon="e"
                                            runat="server" Text="Tarrif Category"></asp:Label>
                                        <asp:TextBox ID="TextBox11" placeholder="Tarrif Category"
                                            runat="server" TextMode="SingleLine"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator10" Display="Dynamic" runat="server" ControlToValidate="TextBox11" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>--%>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="Dynamic" runat="server" ControlToValidate="TextBox11" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>


                                    </p>   <p>

                                        <asp:Label ID="Label12" class="youmail" data-icon="e"
                                            runat="server" Text="Region"></asp:Label>
                                        <asp:TextBox ID="TextBox12" placeholder="Region"
                                            runat="server"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" Display="Dynamic" runat="server" ControlToValidate="TextBox12" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>--%>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" Display="Dynamic" runat="server" ControlToValidate="TextBox12" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>


                                    </p>

                                    <p>


                                        <asp:Label ID="Label8" class="youpasswd" data-icon="p"
                                            runat="server" Text="Password"></asp:Label>

                                        <asp:TextBox ID="TextBox7" placeholder="Password"
                                            runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" placeholder="Password" ControlToValidate="TextBox7" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group2"></asp:RequiredFieldValidator>

                                    </p>
                                    <p>


                                        <asp:Label ID="Label9" class="youpasswd" data-icon="p"
                                            runat="server" Text="Re-enter Password"></asp:Label>


                                        <asp:TextBox ID="TextBox8" placeholder="Confirm Password"
                                            runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="group2"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="*Password mismatch" ForeColor="Red" ValidationGroup="group2"></asp:CompareValidator>

                                    </p>
                                    <p class="signin button">
                                        <asp:Button ID="Button5"
                                            runat="server" Text="Submit" OnClick="Button5_Click" ValidationGroup="group2" />
                                    </p>
                                    <p class="change_link">
                                        Already a member ?
									 
                                    <asp:LinkButton ID="LinkButton2" CausesValidation="false" class="to_register" runat="server" OnClick="LinkButton2_Click">Go and log in </asp:LinkButton>
                                    </p>


                                </div>

                            </asp:View>
                        </asp:MultiView>




                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
