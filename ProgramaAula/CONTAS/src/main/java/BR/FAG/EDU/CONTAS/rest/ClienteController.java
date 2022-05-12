package BR.FAG.EDU.CONTAS.rest;

import BR.FAG.EDU.CONTAS.Modelo.Cliente;
import BR.FAG.EDU.CONTAS.repositorio.ClienteRB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Time;
import java.util.List;

@RestController
@RequestMapping(value = "/cliente")

public class ClienteController extends BaseController<Cliente> {

    @Autowired
    private ClienteRB clienteRB;
    @Override
    public List<Cliente> list(){
        return clienteRB.findAll();
    }
}
