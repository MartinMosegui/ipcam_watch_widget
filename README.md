# IPCam Watch Widget

Un widget Flutter para visualizar cámaras IP en tiempo real directamente desde una aplicación o widget embebido.

Este proyecto fue elaborado en base a la propuesta realizada en la clase de **Programación Mobile II**, impartida por **Rafael Amorim**, donde se solicitó:

> Desarrollar, en parejas o tríos, un package Flutter que contenga un widget propio y funcional, diseñado para ser utilizado en dispositivos vestibles (smartwatches con Wear OS).  
>
> Cada grupo debía:
>
> - Implementar dentro del package un widget original, diferente al ejemplo del reloj visto en clase, y que tenga sentido en un smartwatch (Wear OS).  
> - El widget puede, por ejemplo:  
>   - Mostrar información contextual (clima, pasos, notificaciones, nivel de batería, etc.);  
>   - Reaccionar a gestos, eventos de toque o sensores (proximidad, luminosidad, ritmo cardíaco, etc.);  
>   - Presentar datos de forma optimizada para pantallas pequeñas.  
> - Crear la carpeta `example/` dentro del paquete con un proyecto Flutter funcional que demuestre cómo utilizar el widget desarrollado.  
> - Agregar pruebas unitarias en la carpeta `test/`, cubriendo al menos una funcionalidad principal del widget.  
> - Publicar todo el contenido del paquete (incluyendo el ejemplo y los tests) en un repositorio público de GitHub, correctamente estructurado y documentado.  
> - El archivo `README.md` debía incluir: descripción del paquete, instrucciones de instalación y uso, y una captura de pantalla o GIF demostrativo (opcional pero recomendable).

---

## Desarrollado por:

- **Juan Martin Mosegui**  
- **Santiago Escobar**  
- **Verónica Ferreira**

---

## 🚀 Características

- Visualización de streaming **MJPEG**.  
- Compatible con **Flutter Web** y **Flutter Mobile**.  
- Diseñado pensando en uso para **Wear OS**.  
- Widget altamente personalizable.  
- Ejemplo funcional incluido.  
- Estructura modular (`src/`) que facilita el mantenimiento.

---

## 📂 Estructura del Proyecto

```
ipcam_watch_widget/
├── lib/
│   ├── main.dart
│   ├── ipcam_watch_widget.dart
│   └── src/
├── example/
├── web/
├── assets/
├── pubspec.yaml
└── README.md
```

---

## 📦 Instalación

Agrega lo siguiente en tu archivo `pubspec.yaml`:

```yaml
dependencies:
  ipcam_watch_widget:
    path: ../ipcam_watch_widget
```

(O bien puedes publicarlo en pub.dev para usarlo como paquete remoto.)

---

## ▶️ Uso Básico

```dart
import 'package:ipcam_watch_widget/ipcam_watch_widget.dart';

IPCamWatchWidget(
  url: "http://TU_IP/mjpeg",
  width: 300,
  height: 200,
);
```

---

## 🛠️ Requisitos

- Cámara IP que soporte **MJPEG**.  
- Flutter **3.0 o superior**.  
- Permisos de red en dispositivos móviles.

### Android

En `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.INTERNET" />
```

### iOS

En `ios/Runner/Info.plist`:

```xml
<key>NSAppTransportSecurity</key>
<dict>
  <key>NSAllowsArbitraryLoads</key><true/>
</dict>
```

---

## 🧪 Ejecución del ejemplo

Ejecuta el proyecto de ejemplo con:

```sh
flutter run -d chrome
```

La carpeta `example/` contiene un proyecto funcional que muestra cómo utilizar el widget.

---

## 🌐 Soporte Web

El proyecto incluye la carpeta `web/` con configuración lista para reproducir streaming MJPEG en navegadores compatibles.

---

## 🤝 Contribuciones

Las contribuciones y sugerencias de mejora son bienvenidas.

---

## 📄 Licencia

Este proyecto se distribuye bajo la **Licencia MIT**, lo que permite su uso libre tanto personal como comercial.
