    package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final ListView listView;
        listView = findViewById(R.id.listViewAlunos);

        List<Aluno> lista = retornaListaAlunos();

        final ArrayAdapter<Aluno> adapterList;
        adapterList = new ArrayAdapter<Aluno>(this, android.R.layout.simple_expandable_list_item_1, lista);

        listView.setAdapter(adapterList);

        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Toast.makeText(com.example.myapplication.MainActivity.this, "Teste do toast: " + position, Toast.LENGTH_LONG).show();

                final Dialog dialog = new Dialog(MainActivity.this);
                dialog.setContentView(R.layout.activity_image);
                dialog.setTitle("Custom Dialog");

                ImageView image = dialog.findViewById(R.id.imgDialog);
                image.setImageResource(R.drawable.logo_etec);

                dialog.show();

                Button botaoFechar = (Button) dialog.findViewById(R.id.btnFechar);
                botaoFechar.setOnClickListener(new View.OnClickListener(){
                    @Override
                    public void onClick(View v) {
                        dialog.dismiss();
                    }
                });
            }
        });
    }

    private List<Aluno> retornaListaAlunos(){
        List<Aluno> lista = new ArrayList<Aluno>();

        Aluno aluno1 = new Aluno();
        aluno1.setRa(122);
        aluno1.nome = "Laura";
        aluno1.email = "laura@email.com";

        lista.add(aluno1);
        lista.add(new Aluno(123, "Lais", "lais@email.com"));

        return lista;
    }
}