# Last Train to Tokyo

Un stress test visual y funcional del sistema de actores de Elixir/OTP que simula transferencias bancarias internacionales en tiempo real.

## Arquitectura Conceptual

La aplicación utiliza cada terminal física como un nodo bancario nacional que maneja transferencias internacionales. El núcleo consiste en un supervisor principal que orquesta el spawning de terminales mediante tmux o kitty sessions en Arch, donde cada terminal ejecuta su propio proceso Elixir conectado al cluster principal via distributed Erlang.

### Componentes Principales

- **GenServers**: Simulan bancos centrales con sub-procesos (GenStage/Flow) representando sucursales regionales
- **Procesamiento Concurrente**: Cada sucursal procesa transacciones de manera independiente
- **Monitor de Recursos**: Detecta cuando el sistema alcanza límites críticos (file descriptors, memoria, procesos BEAM)
- **Terminal de Análisis**: Spawns automático de terminal post-mortem que visualiza puntos de fallo mediante grafos ASCII

### Experiencia Visual

El sistema hace visible el runtime de BEAM mediante:
- **Animaciones ASCII**: Cada transferencia bancaria triggerea visualizaciones en tiempo real usando ex_termbox o ANSI codes
- **Efectos Visuales**: Representan latencia real, backpressure y health de cada nodo
- **Paquetes de Datos**: Animaciones de transferencias viajando entre países-terminales

### Datos y Sonido

- **Mock Data**: Pool generado con Faker y StreamData simulando patrones bancarios reales (SWIFT codes, IBAN, distribución Pareto)
- **Persistencia**: ETS tables para acceso ultrarrápido durante chaos testing
- **Audio**: OSC messages a SuperCollider o aplay commands mapeando eventos del sistema
  - Nueva terminal = campanada de estación
  - Transferencia exitosa = whoosh de tren
  - Colapso del sistema = sirena de emergencia

### Observabilidad

- **Telemetry**: Hooks que escriben a Chronicle DB time-series
- **Auto-tagging**: Pattern matching sobre failure reasons para modelos de predicción
- **LiveView Dashboard**: Métricas en tiempo real sin interferir con el performance del experimento principal

## El "Último Tren"

El momento crítico ocurre cuando el sistema alcanza sus límites de recursos. Un proceso monitor especial captura toda la telemetría acumulada y genera visualizaciones que muestran:
- Punto exacto de fallo
- Rutas de transferencia más congestionadas
- Patrones de colapso del sistema distribuido

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `last_train_to_tokio` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:last_train_to_tokio, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/last_train_to_tokio>.

