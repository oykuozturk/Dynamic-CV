<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Deneyimler.aspx.cs" Inherits="DynamicCvProject.Deneyimler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered" style="margin-left:20px">
        <tr>
            <th>ID</th>
            <th>Deneyimler</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("Yetenek") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "DeneyimSil.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-danger">Sil</asp:HyperLink ></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "DeneyimGuncelle.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-info">Güncelle</asp:HyperLink ></td>
                    <td></td>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    <a href="YeniDeneyim.aspx" class="btn btn-primary" style="margin-left:20px" >Deneyim Ekle</a>
</asp:Content>
