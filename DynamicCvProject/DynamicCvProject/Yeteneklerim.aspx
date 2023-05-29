<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yeteneklerim.aspx.cs" Inherits="DynamicCvProject.Hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered" style="margin-left:20px">
        <tr>
            <th>ID</th>
            <th>Yetenekler</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("Yetenek") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "YetenekSil.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-danger">Sil</asp:HyperLink ></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "YetenekGuncelle.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-info">Güncelle</asp:HyperLink ></td>
                    <td></td>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    <a href="YeniYetenek.aspx" class="btn btn-primary" style="margin-left:20px" >Yetenek Ekle</a>

</asp:Content>
