<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="DynamicCvProject.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table class="table table-bordered" style="margin-left:20px">
        <tr>
            <th>ID</th>
            <th>Ad/Soyad</th>
            <th>Mail</th>
            <th>Konu</th>
            <th>Mesaj</th>
        </tr>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("AdSoyad") %></td>
                    <td><%# Eval("Mail") %></td>
                    <td><%# Eval("Konu") %></td>

                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "MesajDetay.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-warning">Mesajı Görüntüle</asp:HyperLink >
                    </td>
                    
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>

</asp:Content>
