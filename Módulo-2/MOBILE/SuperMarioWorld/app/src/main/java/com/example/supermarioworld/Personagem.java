package com.example.supermarioworld;

public class Personagem {

    private String nome;
    private String descricao;

    public Personagem() {
    }

    public Personagem(String nome, String descricao) {
        this.nome = nome;
        this.descricao = descricao;
    }

    @Override
    public String toString() {
        return "Personagem{" +
                "nome='" + nome + '\'' +
                ", descricao='" + descricao + '\'' +
                '}';
    }
}
