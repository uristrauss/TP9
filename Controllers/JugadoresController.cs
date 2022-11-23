using Microsoft.AspNetCore.Mvc;
using TP9.Models;
namespace TP9.Controllers;

[ApiController]
[Route("[controller]")]
public class JugadoresController : ControllerBase
{
    [HttpGet]
    public IActionResult Get()
    {
        List<Jugador> lista = BD.ListarJugadores2();
        return Ok(lista);
    }

    [HttpGet("{id}")] 
    public IActionResult Get(int id)
    {
        if (id<1)
        {
            return BadRequest();
        }
        Jugador jugador = BD.VerInfoJugador(id);
        if (jugador == null)
        {
            return NotFound();
        }
        return Ok(jugador);
    }

    [HttpPost] 
    public IActionResult Post(Jugador jugador)
    {
        if (jugador.Username == null || jugador.Username == "" || jugador.FechaNacimiento == null || jugador.PuntajeActual == null || jugador.FotoJugador == null || jugador.FotoJugador == "" || jugador.FkPais == null)
        {
            return BadRequest();
        }   
        BD.AgregarJugador(jugador);
        return Ok();
    }

    [HttpPut ("{id}")] 
    public IActionResult Put(int id, Jugador jugador)
    {
        if (id<1)
        {
            return BadRequest();
        }
        Jugador jug = BD.VerInfoJugador(id);
        if (jug == null)
        {
            return NotFound();
        }
        BD.PutJugador(id, jugador);
        return Ok();
    }

    [HttpPatch("(id)")]
    public IActionResult Patch(int id, Jugador jugNuevo)
    {
        if(id < 1)
        {
            return BadRequest();
        }
        Jugador jugViejo = BD.VerInfoJugador(id);
        if(jugNuevo.Username != null && jugNuevo.Username != jugViejo.Username)
        {
            jugViejo.Username = jugNuevo.Username;
        }
        if(jugNuevo.FotoJugador != null && jugNuevo.FotoJugador != jugViejo.FotoJugador)
        {
            jugViejo.FotoJugador = jugNuevo.FotoJugador;
        }
        if(jugNuevo.FkPais != null && jugNuevo.FkPais != jugViejo.FkPais)
        {
            jugViejo.FkPais = jugNuevo.FkPais;
        }
        BD.PutJugador(id, jugViejo);
        return Ok();
    }


    [HttpDelete ("{id}")] 
    public IActionResult Delete(int id)
    {
        if (id<1)
        {
            return BadRequest();
        }
        Jugador jugador = BD.VerInfoJugador(id);
        if (jugador == null)
        {
            return NotFound();
        }
        BD.EliminarJugador(id);
        return Ok();
    }

    

}
