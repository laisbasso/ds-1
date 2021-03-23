package com.example.supermarioworld;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final ListView listView;
        listView = findViewById(R.id.listViewPersonagens);

        List<Personagem> personagens = getPersonagens();

        final ArrayAdapter<Personagem> adapterList;
        adapterList = new ArrayAdapter<Personagem>(this, android.R.layout.simple_expandable_list_item_1, personagens);

        listView.setAdapter(adapterList);
    }

    private List<Personagem> getPersonagens(){
        List<Personagem> lista = new ArrayList<Personagem>();

        lista.add(new Personagem("Mario", "It's me, Mario!"));
        lista.add(new Personagem("Princess Peach", "Whoo! Lucky me!"));
        lista.add(new Personagem("Luigi", "Luigi time!"));

        return lista;
    }
}