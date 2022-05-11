package BR.FAG.EDU.CONTAS.Modelo;

import javax.persistence.*;
import java.util.UUID;



@Entity
@Table
public class FormaDePagamento extends BaseModelo{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column
    private String nomeFormaPgm;
}
