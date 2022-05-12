package BR.FAG.EDU.CONTAS.rest;

import BR.FAG.EDU.CONTAS.Modelo.Cliente;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Time;
import java.util.List;

@RestController
@RequestMapping(value = "/time")

public class ClienteController extends BaseController<Cliente> {

    @Override
    public List<Cliente> list() {
        return null;
    }
}
