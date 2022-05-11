package BR.FAG.EDU.CONTAS.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import java.sql.Time;

public interface FormaDePagamento extends JpaRepository<Time,Long> {
}
