package BR.FAG.EDU.CONTAS.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import java.sql.Time;

public interface ContaRB extends JpaRepository<Time,Long> {
}
