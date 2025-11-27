using Datapost.DB;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class EditarProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LerDados();
            }
        }

        protected void LerDados()
        {
            Codigo.Text = Request.QueryString["cod"].ToString();

            // acessar o banco de dados

            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/DataBase.accdb");

            string sql = "SELECT * FROM Produtos WHERE Codigo="+Codigo.Text;

            DAO db = new DAO();
            db.DataProviderName = DAO.ProviderName.OleDb;
            db.ConnectionString = conexao;

            DataTable dat = (DataTable)db.Query(sql);

            Nome.Text = dat.Rows[0]["Nome"].ToString();
            Quantidade.Text = dat.Rows[0]["Quantidade"].ToString();
            PrecoCusto.Text = dat.Rows[0]["PrecoCusto"].ToString();
            PrecoVenda.Text = dat.Rows[0]["PrecoVenda"].ToString();
            Descricao.Text = dat.Rows[0]["Descricao"].ToString();
            Situacao.Text = dat.Rows[0]["Descricao"].ToString();
            Situacao.SelectedValue = dat.Rows[0]["Situacao"].ToString();

            Imagem.ImageUrl = ResolveUrl("~/App_Files/" + dat.Rows[0]["Imagem"].ToString());
        }

        protected void Editar_Click(object sender, EventArgs e)
        {
            string imagem = Path.GetFileName(Imagem.ImageUrl);
            if (FileUpload.FileName != "")
            {
                imagem = Path.GetFileName(FileUpload.FileName);

                // 2. Obtem o nome da imagem

                //Obtem o caminho físico para gravar a imagem
                string imagemCaminho = Server.MapPath("~/App_Files/") + Path.GetFileName(FileUpload.FileName);

                //Salva a imagem no caminho especificado
                FileUpload.SaveAs(imagemCaminho);

            }

            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/DataBase.accdb");



            string sql = "UPDATE Produtos SET Nome='" + Nome.Text + "', Quantidade=" + Quantidade.Text + ", Descricao='" + Descricao.Text + "', Situacao=" + Situacao.SelectedValue+", PrecoCusto="+PrecoCusto.Text.Replace(",",".")+", PrecoVenda="+PrecoVenda.Text.Replace(",",".")+", Imagem='"+imagem+"' WHERE Codigo="+Codigo.Text+";";

            DAO db = new DAO();
            db.DataProviderName = DAO.ProviderName.OleDb;
            db.ConnectionString = conexao;
            db.Query(sql);

            Response.Redirect("ExibirProdutos.aspx");
        }

        protected void Excluir_Click(object sender, EventArgs e)
        {
            string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/DataBase.accdb");

            string sql = "UPDATE Produtos SET Situacao=0 WHERE Codigo=" + Codigo.Text;

            DAO db = new DAO();
            db.DataProviderName = DAO.ProviderName.OleDb;
            db.ConnectionString = conexao;
            db.Query(sql);

            Response.Redirect("ExibirProdutos.aspx");
        }
    }
}