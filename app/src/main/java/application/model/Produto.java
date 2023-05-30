package application.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="produto")
public class Produto {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    private String titulo;
    private String descricao;
    
    // Get Set ID
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    // Get Set TÍTULO
    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }  

    // Get Set DESCRIÇAO
    public String getDescricao() {
        return descricao;
    }
    public void setDescricao(String isbn) {
        this.descricao = descricao;
    }
}
