// สร้างหิมะตก
const snowflakes = document.getElementById('snowflakes');
for (let i = 0; i < 100; i++) {
  const snowflake = document.createElement("div");
  snowflake.classList.add("snowflake");
  snowflake.style.left = Math.random() * 100 + "vw";
  snowflake.style.top = Math.random() * 100 + "vh";
  snowflake.style.width = (Math.random() * 5 + 2) + "px";
  snowflake.style.height = snowflake.style.width;
  snowflake.style.animationDuration = (Math.random() * 5 + 5) + "s";
  snowflakes.appendChild(snowflake);
}

// ตั้งค่าให้ปุ่มพาไปเว็บ Discord เมื่อกด
document.getElementById('discordBtn').onclick = function() {
  window.location.href = 'https://www.facebook.com/share/18xWVdhU7X/';
};
