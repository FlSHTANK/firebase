
## การรันโปรเจค

ในการรันโปรเจค Flutter พร้อมการผสานรวม Firebase ให้ทำตามขั้นตอนเหล่านี้:

1. **ติดตั้ง Flutter**: ตรวจสอบให้แน่ใจว่าคุณได้ติดตั้ง Flutter แล้ว คุณสามารถทำตามคำแนะนำ [ที่นี่](https://docs.flutter.dev/get-started/install)

2. **ติดตั้ง Firebase CLI**: ติดตั้ง Firebase CLI โดยรันคำสั่งต่อไปนี้:
    ```sh
    npm install -g firebase-tools
    ```

3. **ตั้งค่า Firebase**: เริ่มต้น Firebase ในไดเรกทอรีโปรเจคของคุณ:
    ```sh
    firebase init
    ```

4. **ดึง Dependencies**: ดึง dependencies ที่ระบุในไฟล์ `pubspec.yaml`:
    ```sh
    flutter pub get
    ```

5. **รันแอป**: รันแอป Flutter บนอุปกรณ์ที่เชื่อมต่อ:
    ```sh
    flutter run
    ```

6. **Deploy ไปยัง Firebase**: หากคุณต้องการ deploy แอปของคุณไปยัง Firebase Hosting ให้ใช้คำสั่งต่อไปนี้:
    ```sh
    firebase deploy
    ```
