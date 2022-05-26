package BR.FAG.EDU.CONTAS.repositorio.Service;

import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Service("ContaService")
public class ContaService {
    @PersistenceContext
    private EntityManager entityManager;

}

