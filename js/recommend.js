document.querySelectorAll('.card').forEach(card => {
     card.addEventListener('mouseover', () => {
         if (card.classList.contains('Adidas') || card.classList.contains('Converse') || card.classList.contains('new balance') || card.classList.contains('puma') || card.classList.contains('nike') || card.classList.contains('fila')) {
             const animation = card.querySelector('.animation');
             animation.style.display = 'flex';
             setTimeout(() => {
                 animation.style.opacity = '1';
             }, 10); // 延遲顯示動畫，確保 transition 生效
         }
     });
 
     card.addEventListener('mouseout', () => {
         if (card.classList.contains('Adidas') || card.classList.contains('Converse') || card.classList.contains('new balance') || card.classList.contains('puma') || card.classList.contains('nike') || card.classList.contains('fila')) {
             const animation = card.querySelector('.animation');
             animation.style.opacity = '0';
             setTimeout(() => {
                 animation.style.display = 'none';
             }, 500); // 延遲隱藏動畫，確保 transition 完成
         }
     });
 });
