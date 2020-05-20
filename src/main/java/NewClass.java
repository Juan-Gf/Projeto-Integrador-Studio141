
import br.senac.sp.dao.ClienteDAO;
import br.senac.sp.entidade.Cliente;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DiogoSouza
 */
public class NewClass {
    public static void main(String[] args) {
        //Cliente teste = new Cliente("1");
        //boolean excluirCliente = ClienteDAO.excluirCliente(teste, "id");
        Cliente teste2 = new Cliente("Diogo"," oi","oi ","oi","io","aha","lala");
        ClienteDAO.cadastrarCliente(teste2);
    }
}
