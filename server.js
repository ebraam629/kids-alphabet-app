// 1. استدعاء مكتبة express لإنشاء السيرفر
const express = require('express');

// 2. استدعاء مكتبة mysql2 عشان نقدر نتصل بقاعدة البيانات
const mysql = require('mysql2');

// 3. استدعاء مكتبة cors عشان نسمح للفرونت إند يتواصل مع الباك إند
const cors = require('cors');

// 4. بننشئ تطبيق express
const app = express();

// 5. نستخدم cors عشان أي حد يقدر يوصل للسيرفر (مثلاً من المتصفح)
app.use(cors());

// 6. نستخدم express.json() عشان السيرفر يفهم البيانات الجاية بصيغة JSON
app.use(express.json());

// 7. نحدد إن مجلد public فيه ملفات ممكن العميل يوصلها زي الصور والصوت
app.use('/images', express.static(__dirname + '/public/images'));
app.use('/audio', express.static(__dirname + '/public/audio'));
app.use('/sounds', express.static(__dirname + '/public/audio'));

// 8. إعداد اتصال بقاعدة البيانات
const db = mysql.createConnection({
  host: 'localhost',        // مكان قاعدة البيانات (غالباً على نفس الجهاز)
  user: 'root',             // اسم المستخدم بتاع MySQL
  password: 'Bero2512@',    // الباسورد بتاع MySQL
  database: 'kids_app'      // اسم قاعدة البيانات اللي عملناها
});

// 9. نتأكد إن الاتصال تم بنجاح
db.connect(err => {
  if (err) throw err;
  console.log("✅ MySQL Connected");
});

// 10. راوت (مسار) بيرجع كل الحروف مع الأمثلة بتاعتها، مع id واحد بس (id الحرف)
app.get('/api/letters-with-examples', (req, res) => {
  const sqlLetters = 'SELECT * FROM letters';
  const sqlExamples = 'SELECT * FROM examples';

  db.query(sqlLetters, (err, letters) => {
    if (err) return res.status(500).json({ error: err.message });

    db.query(sqlExamples, (err, examples) => {
      if (err) return res.status(500).json({ error: err.message });

      // نربط الأمثلة بالحروف بناءً على letter_id
      const lettersWithExamples = letters.map(letter => {
        return {
          id: letter.id,  // id الحرف فقط
          letter: letter.letter,
          image_url: letter.image_url,
          audio_url: letter.audio_url,
          examples: examples
            .filter(example => example.letter_id === letter.id)
            .map(({ word, image_url, audio_url }) => ({ word, image_url, audio_url })) // نحذف id الأمثلة من الرد
        };
      });

      res.json(lettersWithExamples);
    });
  });
});


// 11. نشغّل السيرفر على بورت 3000
app.listen(3000, () => {
  console.log("🚀 Server running on http://localhost:3000");
});
