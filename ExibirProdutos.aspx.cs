using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datapost.DB;

namespace WebApplication3
{
    public partial class ExibirProdutos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Exibir();
        }

        protected void Exibir()
        {
            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/DataBase.accdb") + ";Persist Security Info=False;";

            string sql = "SELECT Codigo,Nome,Quantidade,PrecoCusto,PrecoVenda,Situacao FROM Produtos WHERE Nome LIKE '%"+BuscarProduto.Text+"%' ORDER BY Nome ASC";

            DAO db = new DAO();

            db.ConnectionString = conexao;

            db.DataProviderName = DAO.ProviderName.OleDb;

            Produtos.DataSource = db.Query(sql);

            Produtos.DataBind();
        }

        protected void Cadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroProduto.aspx");
        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            //Cancelar.Visible = false;
            BuscarProduto.Text = "";
            Exibir();
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            Exibir();
        }

        protected void Produtos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cod = Produtos.SelectedRow.Cells[1].Text;

            Response.Redirect("EditarProduto.aspx?cod="+cod);

        }
    }
}