package BR.FAG.EDU.CONTAS.repositorio.Service;

import BR.FAG.EDU.CONTAS.repositorio.Modelo.Cliente;
import org.springframework.stereotype.Service;

import javax.persistence.*;

@Service("ClienteService")
public class ClienteService {
    @PersistenceContext
    private EntityManager entityManager;


    public Cliente findByCPF(String cpf) {

        try {
         return entityManager.createQuery("select j from" + "Cliente j where j.cpf= :cpf", Cliente.class)
                    .setParameter("cpf", cpf).getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException nf) {
            return null;
        }

    }

}
