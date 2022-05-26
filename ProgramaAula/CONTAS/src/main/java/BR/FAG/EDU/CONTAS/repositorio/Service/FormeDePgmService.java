package BR.FAG.EDU.CONTAS.repositorio.Service;


import BR.FAG.EDU.CONTAS.repositorio.Modelo.FormaDePagamento;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Service("FormaDePgmService")
public class FormeDePgmService {
    @PersistenceContext
    private EntityManager entityManager;

    
}
