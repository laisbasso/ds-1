using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace PrimeiroApp
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        int contador = 0;

        private void Button_Clicked(object sender, EventArgs e)
        {
            contador++;
            btnContador.Text = $"Você clicou {contador} vezes.";
        }

        private async void ZerarContador_Clicked(object sender, EventArgs e)
        {
            if (await DisplayAlert("Confirmação", "Deseja realmente zerar o contador?", "yes", "no"))
            {
                contador = 0;
                await DisplayAlert("Mensagem", "Você zerou o contador", "Ok");
                btnContador.Text = "Clique aqui";
            }
        }
    }
}
