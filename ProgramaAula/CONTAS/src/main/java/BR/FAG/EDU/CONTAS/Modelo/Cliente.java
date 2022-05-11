package BR.FAG.EDU.CONTAS.Modelo;


import javax.persistence.*;
import java.util.UUID;

@Entity
@Table
public class Cliente extends BaseModelo {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column
    private String nome;
    @Column
    private String sobreNome;
    @Column
    private String cpf;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobreNome() {
        return sobreNome;
    }

    public void setSobreNome(String sobreNome) {
        this.sobreNome = sobreNome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public Cliente(UUID id, String nome, String sobreNome, String cpf) {
        this.id = id;
        this.nome = nome;
        this.sobreNome = sobreNome;
        this.cpf = cpf;
    }
}
