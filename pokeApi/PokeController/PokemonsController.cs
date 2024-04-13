using Newtonsoft.Json.Linq;
using pokeApi.PokenModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Xml.Linq;

namespace pokeApi.PokeController
{
    public class PokemonsController
    {
        private HttpClient client = new HttpClient();
        private string apiUrl = "https://pokeapi.co/api/v2/pokemon/";

        public async Task<List<PokemonsModels>> GetPokemons(string empty)
        {
            List<PokemonsModels> pokemonsList = new List<PokemonsModels>();

            try
            {
                for (int i = 1; i <= 20; i++)
                {
                    string pokemonUrl = $"{apiUrl}{i}";
                    HttpResponseMessage response = await client.GetAsync(pokemonUrl);

                    if (response.IsSuccessStatusCode)
                    {
                        string responseBody = await response.Content.ReadAsStringAsync();
                        JObject pokemonModels = JObject.Parse(responseBody);

                        string pokemonName = pokemonModels["name"].ToString();
                        string imageUrl = $"https://img.pokemondb.net/artwork/large/{pokemonName}.jpg";

                        pokemonsList.Add(new PokemonsModels { Name = pokemonName, ImageUrl = imageUrl });
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al cargar los datos: " + ex.Message);
            }
            finally
            {
                client.Dispose();
            }

            return pokemonsList;
        }
    }
}