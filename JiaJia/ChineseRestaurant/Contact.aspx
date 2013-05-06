<%@ Page Title="" Language="C#" Async="true" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ChineseRestaurant.ContactPage" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">

    <!-- content -->
    <article id="Article1">
        <div class="wrap">
            <div class="box">
                <div>
                    <h2 class="letter_spacing">Contact <span>Form</span></h2>
                    <form id="ContactForm">
                        <div>
                            <div class="wrapper">
                                <table class="style1">
                                    <tr>
                                        <td>First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtFName" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtLName" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Email Address:&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                ControlToValidate="txtEmail"
                                                ErrorMessage=" *Please enter a valid Email address."
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"> *Please enter a valid Email address.</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="style6"></td>
                                    </tr>
                                    <tr>
                                        <td class="style2">Message:</td>
                                        <td class="style3">
                                            <asp:TextBox ID="txtMessage" runat="server" Height="100px" TextMode="MultiLine"
                                                Width="500px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                ControlToValidate="txtMessage" ErrorMessage=" *Please enter a message." ForeColor="Red"> *Please enter a message.</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td id="testing" colspan="2">Have you dined with us before?&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButtonList
                                            ID="radDined" runat="server" RepeatDirection="Horizontal"
                                            RepeatLayout="Flow" CssClass="radiobuttons">
                                            <asp:ListItem ID="DinedYes">Yes</asp:ListItem>
                                            <asp:ListItem ID="DinedNo">No</asp:ListItem>
                                        </asp:RadioButtonList>
                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                            </asp:ScriptManager>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:Panel ID="pnlRatings" runat="server" CssClass="pnlComments">
                                                        <table class="style5">
                                                            <tr>
                                                                <td class="style7">&nbsp;</td>
                                                            </tr>
                                                            <tr class="width100">
                                                                <td class="style6"><span class="newH3"><span>We value your opinion. </span>&nbsp;Please rate the following:</span></td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                        </table>
                                                        <table class="style5">
                                                            <tr>
                                                                <td>Food:</td>
                                                                <td>
                                                                    <asp:RadioButtonList ID="radListFood" runat="server" RepeatDirection="Horizontal" Width="100%">
                                                                        <asp:ListItem>Excellent</asp:ListItem>
                                                                        <asp:ListItem>Good</asp:ListItem>
                                                                        <asp:ListItem>Average</asp:ListItem>
                                                                        <asp:ListItem>Fair</asp:ListItem>
                                                                        <asp:ListItem>Poor</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Value:</td>
                                                                <td>
                                                                    <asp:RadioButtonList ID="radListValue" runat="server" RepeatDirection="Horizontal" Width="100%">
                                                                        <asp:ListItem>Excellent</asp:ListItem>
                                                                        <asp:ListItem>Good</asp:ListItem>
                                                                        <asp:ListItem>Average</asp:ListItem>
                                                                        <asp:ListItem>Fair</asp:ListItem>
                                                                        <asp:ListItem>Poor</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;&nbsp;</td>
                                                                <td>&nbsp;&nbsp;</td>
                                                            </tr>
                                                        </table>
                                                        <table class="style5">
                                                            <tr>
                                                                <td>What were your favorite dish(es):</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtFavDish" runat="server" Width="500px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Did you not like any particular dish(es)?</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtBadDish" runat="server" Width="500px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>If so, what did you not like (ie. salty, too expensive)?</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtWhyDislike" runat="server" Width="500px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Any dishes you would like us to add to the menu?</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtAddMenu" runat="server" Width="500px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2">&nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="radDined" EventName="SelectedIndexChanged" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                            <table class="pnlComments">
                                                <tr>
                                                    <td>
                                                        <asp:Button class="button1" ID="btnClear" runat="server" BackColor="#A80002" Font-Names="Times New Roman" ForeColor="White" Text="Clear" OnClientClick="this.form.reset();return false;" />
                                                        <asp:Button class="button1" ID="btnSend" runat="server" BackColor="#A80002" ForeColor="White" Text="Send" Font-Names="Times New Roman" OnClick="btnSend_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </article>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#Content_pnlRatings').hide();

            $("#Content_radDined").click(function () {
                if ($("#Content_radDined_0").is(":checked")) {
                    $('#Content_pnlRatings').show("slow");
                }
                else if ($("#Content_radDined_1").is(":checked")) {
                    $('#Content_pnlRatings').hide("slow");
                }
            });
        });
    </script>
</asp:Content>
