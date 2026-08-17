<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
<title>Undangan Pernikahan Andi & Ani</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;1,400&family=Jost:wght@300;400;500&display=swap" rel="stylesheet">
<style>
  :root{
    --cream:#F7F2E9;
    --sage:#6E7A5C;
    --sage-dark:#414A34;
    --gold:#B5915A;
    --ink:#2E2A22;
    --line:rgba(65,74,52,0.25);
  }
  *{box-sizing:border-box;margin:0;padding:0;}
  html{scroll-behavior:smooth;}
  body{
    background:var(--white);
    color:var(--red);
    font-family:'Jost',sans-serif;
    font-weight:300;
    overflow-x:hidden;
  }
  .display{font-family:'Cormorant Garamond',serif;}

  /* decorative parang-inspired divider, drawn not copied */
  .motif{
    width:100%; height:34px;
    background-repeat:repeat-x;
    background-size:34px 34px;
    background-image:repeating-linear-gradient(135deg, var(--gold) 0 2px, transparent 2px 17px);
    opacity:0.55;
    margin:18px 0;
  }
  .eyebrow{
    letter-spacing:0.35em;
    text-transform:uppercase;
    font-size:11px;
    color:var(--sage-dark);
    opacity:0.75;
  }

  /* ===== COVER ===== */
  .cover{
    min-height:100dvh;
    display:flex;
    flex-direction:column;
    align-items:center;
    justify-content:center;
    text-align:center;
    padding:40px 24px;
    position:relative;
    background:
      radial-gradient(circle at 50% 15%, rgba(181,145,90,0.18), transparent 55%),
      var(--sage-dark);
    color:var(--red);
  }
  .cover .eyebrow{color:var(--cream); opacity:0.7;}
  .cover .and{
    font-size:15px; letter-spacing:0.2em; margin:6px 0; color:var(--gold);
  }
  .cover h1{
    font-size:clamp(44px,13vw,64px);
    font-weight:500;
    line-height:1.05;
    margin:4px 0 18px;
  }
  .cover .guest-box{
    margin-top:34px;
    padding:18px 26px;
    border:1px solid rgba(247,242,233,0.35);
  }
  .cover .guest-box p:first-child{font-size:11px; letter-spacing:0.25em; text-transform:uppercase; opacity:0.7; margin-bottom:6px;}
  .cover .guest-name{font-family:'Cormorant Garamond',serif; font-size:22px; font-style:italic;}
  .open-btn{
    margin-top:40px;
    background:var(--red);
    color:var(--sage-dark);
    border:none;
    padding:14px 34px;
    font-family:'Jost',sans-serif;
    letter-spacing:0.15em;
    text-transform:uppercase;
    font-size:12px;
    cursor:pointer;
    transition:transform .3s ease, letter-spacing .3s ease;
  }
  .open-btn:hover{transform:translateY(-2px); letter-spacing:0.22em;}

  /* ===== SECTION SHELL ===== */
  section{
    max-width:520px;
    margin:0 auto;
    padding:70px 28px;
    text-align:center;
    opacity:0;
    transform:translateY(24px);
    transition:opacity .8s ease, transform .8s ease;
  }
  section.in{opacity:1; transform:none;}
  section h2{
    font-size:clamp(30px,7vw,38px);
    font-weight:500;
    margin:6px 0 20px;
  }
  section p{line-height:1.85; font-size:15px; color:var(--sage-dark);}

  .quote-block{
    background:var(--sage);
    color:var(--red);
    max-width:100%;
    padding:64px 30px;
  }
  .quote-block p{color:var(--cream); font-size:16px; opacity:0.95;}
  .quote-block .ref{margin-top:14px; font-size:12px; letter-spacing:0.15em; opacity:0.7;}

  /* couple */
  .couple-grid{display:flex; flex-direction:column; gap:44px;}
  .person .portrait{
    width:140px; height:140px; border-radius:50%;
    margin:0 auto 18px;
    display:flex; align-items:center; justify-content:center;
    background:linear-gradient(160deg, var(--sage) 0%, var(--sage-dark) 100%);
    color:var(--cream); font-family:'Cormorant Garamond',serif; font-size:44px;
    border:3px solid var(--gold);
  }
  .person h3{font-size:26px; margin-bottom:4px;}
  .person .full{font-size:13px; color:var(--sage-dark); opacity:0.8; margin-bottom:8px;}
  .person .parents{font-size:13px; max-width:280px; margin:0 auto; color:var(--sage-dark); opacity:0.85;}
  .amp{font-family:'Cormorant Garamond',serif; font-style:italic; font-size:30px; color:var(--gold);}

  /* countdown */
  .countdown{background:var(--ink); color:var(--cream); padding:60px 24px;}
  .countdown h2{color:var(--cream);}
  .cd-grid{display:flex; justify-content:center; gap:14px; margin-top:20px;}
  .cd-box{
    background:rgba(247,242,233,0.06);
    border:1px solid rgba(247,242,233,0.2);
    padding:16px 10px;
    min-width:64px;
  }
  .cd-box .num{font-family:'Cormorant Garamond',serif; font-size:30px; color:var(--gold);}
  .cd-box .lbl{font-size:9px; letter-spacing:0.2em; text-transform:uppercase; opacity:0.7; margin-top:4px;}

  /* events */
  .event-card{
    border:1px solid var(--line);
    padding:28px 24px;
    margin-top:26px;
    text-align:left;
  }
  .event-card h3{font-family:'Cormorant Garamond',serif; font-size:22px; margin-bottom:12px; text-align:center;}
  .event-card .row{display:flex; gap:10px; font-size:14px; margin-bottom:8px; color:var(--sage-dark);}
  .event-card .row b{min-width:66px; color:var(--ink); font-weight:500;}
  .map-link{
    display:inline-block; margin-top:12px; font-size:12px; letter-spacing:0.1em;
    color:var(--gold); text-decoration:none; border-bottom:1px solid var(--gold);
    text-transform:uppercase;
  }

  /* story */
  .story-item{text-align:left; margin-top:32px; padding-left:22px; border-left:2px solid var(--gold); position:relative;}
  .story-item::before{content:''; position:absolute; left:-7px; top:2px; width:12px; height:12px; border-radius:50%; background:var(--gold);}
  .story-item .date{font-size:11px; letter-spacing:0.2em; text-transform:uppercase; color:var(--gold);}
  .story-item h4{font-family:'Cormorant Garamond',serif; font-size:22px; margin:6px 0 8px;}
  .story-item p{font-size:14px;}

  /* gift */
  .gift-card{
    border:1px solid var(--line);
    padding:24px; margin-top:20px; text-align:left;
    display:flex; justify-content:space-between; align-items:center; gap:12px;
  }
  .gift-card .bank{font-size:13px; letter-spacing:0.15em; text-transform:uppercase; color:var(--gold);}
  .gift-card .num{font-family:'Cormorant Garamond',serif; font-size:20px; margin-top:4px;}
  .gift-card .owner{font-size:12px; opacity:0.75; margin-top:2px;}
  .copy-btn{
    border:1px solid var(--sage-dark); background:none; padding:8px 14px;
    font-size:11px; letter-spacing:0.1em; cursor:pointer; color:var(--sage-dark);
  }
  .copy-btn:hover{background:var(--sage-dark); color:var(--cream);}

  /* rsvp */
  .rsvp-form{display:flex; flex-direction:column; gap:12px; margin-top:24px; text-align:left;}
  .rsvp-form input, .rsvp-form select, .rsvp-form textarea{
    border:none; border-bottom:1px solid var(--line); background:transparent;
    padding:10px 4px; font-family:'Jost',sans-serif; font-size:14px; color:var(--ink);
  }
  .rsvp-form input:focus, .rsvp-form select:focus, .rsvp-form textarea:focus{outline:none; border-color:var(--gold);}
  .rsvp-form button{
    margin-top:8px; background:var(--sage-dark); color:var(--cream); border:none;
    padding:13px; letter-spacing:0.15em; text-transform:uppercase; font-size:12px; cursor:pointer;
  }
  .rsvp-note{font-size:11px; opacity:0.6; margin-top:10px;}

  footer{
    text-align:center; padding:50px 24px 60px; background:var(--sage-dark); color:var(--cream);
  }
  footer .close-line{font-family:'Cormorant Garamond',serif; font-size:24px; margin-bottom:6px;}
  footer .credit{font-size:11px; opacity:0.55; margin-top:30px; letter-spacing:0.1em;}
</style>
</head>
<body>

<div class="cover">
  <p class="eyebrow">The Wedding Of</p>
  <h1 class="display">Andi <span class="amp">&amp;</span> Ani</h1>
  <p class="and">Sabtu, 20 Desember 2026</p>
  <div class="guest-box">
    <p>Kepada Yth. Bapak/Ibu/Saudara/i</p>
    <p class="guest-name" id="guestName">Tamu Undangan</p>
  </div>
  <button class="open-btn" onclick="openInvite()">Buka Undangan</button>
</div>

<section id="s-quote" class="quote-block">
  <p>Dan di antara tanda-tanda kebesaran-Nya ialah Dia menciptakan pasangan-pasangan untukmu dari jenismu sendiri, agar kamu cenderung dan merasa tenteram kepadanya, dan Dia menjadikan di antaramu rasa kasih dan sayang. Sungguh, pada yang demikian itu benar-benar terdapat tanda-tanda kebesaran Allah bagi kaum yang berpikir.</p>
  <p class="ref">QS. Ar-Rum: 21</p>
</section>

<section id="s-couple">
  <p class="eyebrow">Assalamualaikum Wr. Wb.</p>
  <h2 class="display">Kami Yang Berbahagia</h2>
  <div class="couple-grid">
    <div class="person">
      <div class="portrait">A</div>
      <h3 class="display">Andi</h3>
      <p class="full">Andi Pratama, S.T.</p>
      <p class="parents">Putra pertama dari Bapak Slamet Riyadi &amp; Ibu Sri Wahyuni</p>
    </div>
    <div class="amp">&amp;</div>
    <div class="person">
      <div class="portrait">A</div>
      <h3 class="display">Ani</h3>
      <p class="full">Ani Lestari, S.Pd.</p>
      <p class="parents">Putri kedua dari Bapak Joko Susanto &amp; Ibu Endang Kusrini</p>
    </div>
  </div>
</section>

<div class="motif"></div>

<section id="s-countdown" class="countdown">
  <p class="eyebrow" style="color:var(--gold)">Menghitung Hari</p>
  <h2>Menuju Hari Bahagia</h2>
  <div class="cd-grid">
    <div class="cd-box"><div class="num" id="cd-d">00</div><div class="lbl">Hari</div></div>
    <div class="cd-box"><div class="num" id="cd-h">00</div><div class="lbl">Jam</div></div>
    <div class="cd-box"><div class="num" id="cd-m">00</div><div class="lbl">Menit</div></div>
    <div class="cd-box"><div class="num" id="cd-s">00</div><div class="lbl">Detik</div></div>
  </div>
</section>

<section id="s-events">
  <p class="eyebrow">Save The Date</p>
  <h2 class="display">Acara</h2>
  <div class="event-card">
    <h3>Akad Nikah</h3>
    <div class="row"><b>Tanggal</b><span>Sabtu, 20 Desember 2026</span></div>
    <div class="row"><b>Waktu</b><span>08.00 – 10.00 WIB</span></div>
    <div class="row"><b>Lokasi</b><span>Kediaman Mempelai Wanita, Jl. Melati No. 12, Bandung</span></div>
    <div style="text-align:center;"><a class="map-link" href="#" target="_blank">Buka Peta</a></div>
  </div>
  <div class="event-card">
    <h3>Resepsi</h3>
    <div class="row"><b>Tanggal</b><span>Sabtu, 20 Desember 2026</span></div>
    <div class="row"><b>Waktu</b><span>11.00 – 14.00 WIB</span></div>
    <div class="row"><b>Lokasi</b><span>Gedung Serbaguna Kenanga, Bandung</span></div>
    <div style="text-align:center;"><a class="map-link" href="#" target="_blank">Buka Peta</a></div>
  </div>
</section>

<div class="motif"></div>

<section id="s-story">
  <p class="eyebrow">Our Story</p>
  <h2 class="display">Kisah Kami</h2>
  <div class="story-item">
    <p class="date">Maret 2019</p>
    <h4>Awal Pertemuan</h4>
    <p>Andi dan Ani dipertemukan dalam satu organisasi kampus. Dari diskusi tugas dan kegiatan bersama, tumbuh kedekatan yang perlahan berubah menjadi perhatian yang tulus.</p>
  </div>
  <div class="story-item">
    <p class="date">Juni 2025</p>
    <h4>Lamaran</h4>
    <p>Setelah melalui berbagai cerita dan perjalanan bersama, keduanya memantapkan hati untuk melangkah ke jenjang yang lebih serius dengan restu kedua keluarga.</p>
  </div>
  <div class="story-item">
    <p class="date">Desember 2026</p>
    <h4>Hari Bahagia</h4>
    <p>Dengan izin Allah SWT, Andi dan Ani akan melangsungkan pernikahan dan memulai babak baru kehidupan bersama.</p>
  </div>
</section>

<section id="s-gift">
  <p class="eyebrow">Wedding Gift</p>
  <h2 class="display">Tanda Kasih</h2>
  <p>Doa restu Anda adalah hadiah yang paling berarti bagi kami. Namun apabila ingin memberi lebih, kami dengan senang hati menerimanya.</p>
  <div class="gift-card">
    <div>
      <div class="bank">BCA</div>
      <div class="num">1234567890</div>
      <div class="owner">a.n. Andi Pratama</div>
    </div>
    <button class="copy-btn" onclick="copyNum('1234567890', this)">Salin</button>
  </div>
  <div class="gift-card">
    <div>
      <div class="bank">Mandiri</div>
      <div class="num">0987654321</div>
      <div class="owner">a.n. Ani Lestari</div>
    </div>
    <button class="copy-btn" onclick="copyNum('0987654321', this)">Salin</button>
  </div>
</section>

<div class="motif"></div>

<section id="s-rsvp">
  <p class="eyebrow">Konfirmasi Kehadiran</p>
  <h2 class="display">RSVP</h2>
  <p>Mohon konfirmasi kehadiran Anda sebagai panduan kami dalam mempersiapkan acara.</p>
  <form class="rsvp-form" onsubmit="submitRsvp(event)">
    <input type="text" placeholder="Nama Anda" required>
    <select required>
      <option value="" disabled selected>Konfirmasi Kehadiran</option>
      <option>Hadir</option>
      <option>Tidak Hadir</option>
      <option>Masih Ragu</option>
    </select>
    <textarea rows="3" placeholder="Ucapan & doa untuk Andi & Ani"></textarea>
    <button type="submit">Kirim</button>
  </form>
  <p class="rsvp-note">*Formulir ini tampilan contoh dan belum terhubung ke sistem pengiriman.</p>
</section>

<footer>
  <p class="close-line display">Andi &amp; Ani</p>
  <p style="font-size:13px; opacity:0.85; max-width:340px; margin:10px auto 0;">Merupakan suatu kehormatan bagi kami apabila Bapak/Ibu/Saudara/i berkenan hadir dan memberikan doa restu.</p>
  <p style="margin-top:14px; font-size:13px; opacity:0.85;">Wassalamualaikum Wr. Wb.</p>
  <p class="credit">Contoh undangan digital — dibuat dengan Claude</p>
</footer>

<script>
  // guest name from URL ?to=
  const params = new URLSearchParams(window.location.search);
  const to = params.get('to');
  if(to){ document.getElementById('guestName').textContent = to; }

  function openInvite(){
    document.querySelector('.cover').style.display = 'none';
    document.documentElement.style.overflowY = 'auto';
    observeSections();
    window.scrollTo({top:0});
  }

  function observeSections(){
    const sections = document.querySelectorAll('section');
    const io = new IntersectionObserver((entries)=>{
      entries.forEach(e=>{ if(e.isIntersecting) e.target.classList.add('in'); });
    }, {threshold:0.15});
    sections.forEach(s=>io.observe(s));
  }

  // countdown to wedding date
  const target = new Date('2026-12-20T08:00:00+07:00').getTime();
  function tick(){
    const now = Date.now();
    let diff = Math.max(0, target - now);
    const d = Math.floor(diff/86400000);
    const h = Math.floor((diff%86400000)/3600000);
    const m = Math.floor((diff%3600000)/60000);
    const s = Math.floor((diff%60000)/1000);
    document.getElementById('cd-d').textContent = String(d).padStart(2,'0');
    document.getElementById('cd-h').textContent = String(h).padStart(2,'0');
    document.getElementById('cd-m').textContent = String(m).padStart(2,'0');
    document.getElementById('cd-s').textContent = String(s).padStart(2,'0');
  }
  tick();
  setInterval(tick, 1000);

  function copyNum(num, btn){
    navigator.clipboard?.writeText(num);
    const old = btn.textContent;
    btn.textContent = 'Tersalin';
    setTimeout(()=>btn.textContent = old, 1500);
  }

  function submitRsvp(e){
    e.preventDefault();
    alert('Terima kasih atas konfirmasi Anda! (contoh tampilan)');
    e.target.reset();
  }
</script>

</body>
</html>