$(document).ready(function() {


    class Trainer {
      constructor(){
        this.trainername = '';
        this.pokemons = {
          bulbasaur: undefined,
          charmander: undefined,
          squirtle: undefined,
        };

      }
        get(myUrl) {

            $.ajax({
                method: "GET",
                url: myUrl,
                success: function(data) {
                    console.log(data.name);
                    $("#poke-name").html(data.name);
                    $("#poke-hp").html(data.stats[5].base_stat);
                    $("#poke-attack").html(data.stats[4].base_stat);
                    $("#poke-defense").html(data.stats[3].base_stat);
                    let abilities = [];
                    for (var i = 0; i < data.abilities.length; i++) {
                        // $("#poke-abilities").append(data.abilities[i].ability.name + ", ").show();
                        abilities.push(data.abilities[i].ability.name + " ");
                    }
                    $("#poke-abilities").html(abilities);
                    // $("#poke-img1").attr("src", data.sprites.front_default);
                }
            });

        }


        all(myUrl) {

            $.ajax({
                method: "GET",
                url: "https://pokeapi.co/api/v2/pokemon/1",
                success: function(data) {
                    console.log(data.name);
                    //$("#poke-name").html(data.name);
                    $("#poke-img1").attr("src", data.sprites.front_default);
                }
            });

            $.ajax({
                method: "GET",
                url: "https://pokeapi.co/api/v2/pokemon/2",
                success: function(data) {
                    console.log(data.name);
                    //$("#poke-name").html(data.name);
                    $("#poke-img2").attr("src", data.sprites.front_default);

                }
            });

            $.ajax({
                method: "GET",
                url: "https://pokeapi.co/api/v2/pokemon/3",
                success: function(data) {
                    console.log(data.name);
                    //$("#poke-name").html(data.name);
                    $("#poke-img3").attr("src", data.sprites.front_default);

                }
            });

        }


    }

    let myTrainer = new Trainer;


    $("#poke-trainer").html("Ash Ketchup");

    $("#pokemon-one").click(function() {
        var myUrl = "https://pokeapi.co/api/v2/pokemon/1";
        myTrainer.get(myUrl);
    });

    $("#pokemon-two").click(function() {
        var myUrl = "https://pokeapi.co/api/v2/pokemon/4";
        myTrainer.get(myUrl);
    });

    $("#pokemon-three").click(function() {
        var myUrl = "https://pokeapi.co/api/v2/pokemon/7";
        myTrainer.get(myUrl);
    });


    console.log();


}); //JQ
