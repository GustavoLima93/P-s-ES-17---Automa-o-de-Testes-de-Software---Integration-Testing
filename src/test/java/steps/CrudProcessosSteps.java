package steps;

import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;
import definition.CrudProcessos;
import org.junit.Assert;
import support.RESTSupport;

public class CrudProcessosSteps {


    @Dado("^que o advogado está na página de processos$")
    public void queOUsuarioEstaNaPaginaDeProcessos() {
        CrudProcessos.clearFields();
    }

    @E("^o advogado informa no campo \"([^\"]*)\" o valor \"([^\"]*)\"$")
    public void oUsuarioInformaNoCampoOValor(String campo, String valor) throws Throwable {
        CrudProcessos.addFields(campo,valor);
    }

    @Quando("^o advogado clicar em salvar$")
    public void oUsuarioClicarEmSalvar() {
        RESTSupport.executePost(CrudProcessos.getEndPoint(),CrudProcessos.getFields());
        CrudProcessos.setLastID(RESTSupport.key("id").toString());
    }

    @E("^o advogado gostaria de visualizar o processo com id (\\d+)$")
    public void oUsuarioGostariaDeVisualizarOProcessoComId(String id) {
        CrudProcessos.setLastID(id);

    }

    @Quando("^o advogado clicar em visualizar$")
    public void oUsuarioClicarEmVisualizar() {
        RESTSupport.executeGet(CrudProcessos.getEndPoint() + CrudProcessos.getLastID() + ".json");
    }

    @E("^o advogado dever ver o campo \"([^\"]*)\" com valor \"([^\"]*)\"$")
    public void oUsuarioDeverVerOCampoComValor(String campo, String valor) throws Throwable {
        Assert.assertEquals(valor, RESTSupport.key(campo));
    }

    @Quando("^o advogado clicar em atualizar$")
    public void oUsuarioClicarEmAtualizar() {
        RESTSupport.executePut(CrudProcessos.getEndPoint() +
                     CrudProcessos.getLastID() + ".json", CrudProcessos.getFields());
    }

    @Quando("^o advogado clicar em deletar$")
    public void oUsuarioClicarEmDeletar() {
        RESTSupport.executeDelete(CrudProcessos.getEndPoint() + CrudProcessos.getLastID() + ".json");
    }
}
