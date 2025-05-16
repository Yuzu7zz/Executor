document.addEventListener('DOMContentLoaded', () => {
    const button = document.querySelector('button');
    button.onclick = () => window.location.href = 'https://yuzu7zz.github.io/Executor/';
    
    // Snow effect
    function createSnowflake() {
        const snowflake = document.createElement('div');
        snowflake.className = 'snowflake';
        snowflake.style.left = Math.random() * 100 + 'vw';
        snowflake.style.animationDuration = (Math.random() * 3 + 2) + 's';
        snowflake.style.opacity = Math.random();
        document.body.appendChild(snowflake);
        setTimeout(() => snowflake.remove(), 5000);
    }
    setInterval(createSnowflake, 100);
});
