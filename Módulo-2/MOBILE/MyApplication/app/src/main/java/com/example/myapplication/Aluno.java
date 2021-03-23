package com.example.myapplication;

public class Aluno {

    private int ra;
    public String nome;
    public String email;

    public Aluno(){
    }

    public Aluno(int ra, String nome, String email){
        this.ra = ra;
        this.nome = nome;
        this.email = email;
    }

    public Aluno(String nome, String email){
        this.nome = nome;
        this.email = email;
    }

    public int getRa(){
        return this.ra;
    }

    public void setRa(int ra){
        this.ra = ra;
    }

    @Override
    public String toString() {
        return "Aluno{" +
                "ra=" + ra +
                ", nome='" + nome + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
