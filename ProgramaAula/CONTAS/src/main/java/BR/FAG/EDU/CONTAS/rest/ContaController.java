package BR.FAG.EDU.CONTAS.rest;

import BR.FAG.EDU.CONTAS.Modelo.Conta;
import BR.FAG.EDU.CONTAS.repositorio.ContaRB;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ContaController extends BaseController<Conta> {

    @Autowired
    private ContaRB contaRB;

    @Override
    public List<Conta> list() {
        return contaRB.findAll();
    }


}
