package BR.FAG.EDU.CONTAS.repositorio.Service;

import org.springframework.stereotype.Service;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Service("ClienteService")
public class ClienteService {
    @PersistenceContext
    private EntityManager entityManager;

}
