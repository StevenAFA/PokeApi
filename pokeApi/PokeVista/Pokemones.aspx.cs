using pokeApi.PokeController;
using pokeApi.PokenModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokeApi.PokeVista
{
    public partial class Pokemones : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            PokemonsController pokemonscontroller = new PokemonsController();
            List<PokemonsModels> pokemonsList = await pokemonscontroller.GetPokemons(string.Empty);

            Repeater.DataSource = pokemonsList;
            Repeater.DataBind();
        }
    }
}