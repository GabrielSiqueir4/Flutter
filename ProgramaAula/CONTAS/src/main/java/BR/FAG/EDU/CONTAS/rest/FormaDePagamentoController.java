package BR.FAG.EDU.CONTAS.rest;

import BR.FAG.EDU.CONTAS.Modelo.FormaDePagamento;
import BR.FAG.EDU.CONTAS.repositorio.FormaDePagamentoRB;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class FormaDePagamentoController extends BaseController<FormaDePagamento>{

    @Autowired
    private FormaDePagamentoRB formaDePagamentoRB;
    @Override
    public List<FormaDePagamento> list() {
        return formaDePagamentoRB.findAll();
    }
}
