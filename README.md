
# IPCam Watch Widget

Un widget Flutter para visualizar cámaras IP en tiempo real directamente desde una aplicación o widget embebido.

## Desarrollado por:

- Juan Martin Mosegui
- Santiago Escobar 
- Verónica Ferreira 

## 🚀 Características

- Visualización de streaming MJPEG.
- Compatible con Flutter Web y Mobile.
- Widget altamente personalizable.
- Ejemplo funcional incluido.
- Estructura modular (`src/`) para fácil mantenimiento.

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

## 📦 Instalación

Agrega al `pubspec.yaml`:

```yaml
dependencies:
  ipcam_watch_widget:
    path: ../ipcam_watch_widget
```

O publícalo en pub.dev para usar como paquete remoto.

## ▶️ Uso Básico

```dart
import 'package:ipcam_watch_widget/ipcam_watch_widget.dart';

IPCamWatchWidget(
  url: "http://TU_IP/mjpeg",
  width: 300,
  height: 200,
);
```

## 🛠️ Requisitos

- Cámara IP que soporte **MJPEG**.
- Flutter 3.0+.
- Permisos de red en mobile.

### Android

Agrega en `android/app/src/main/AndroidManifest.xml`:

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

## 🧪 Ejecución del ejemplo

```
flutter run -d chrome
```

Ejecuta el ejemplo incluido en la carpeta `example/`.

## 🌐 Soporte Web

El proyecto incluye la carpeta `web/` con configuración lista para streaming MJPEG.

## 🤝 Contribuciones

Pull requests son bienvenidos.

## 📄 Licencia

MIT License – libre para uso personal y comercial.
