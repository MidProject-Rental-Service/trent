document.addEventListener('DOMContentLoaded', function() {
    const icons = document.querySelectorAll('.rental_title img');
	
	// 마우스 오버 커서 변경
    icons.forEach(function(icon) {
        icon.addEventListener('mouseover', function() {
            this.style.cursor = 'pointer';
        });
	
	// 제휴카드 목록 토글
        icon.addEventListener('click', function() {
            const card = this.closest('.sponsor_card');
            const rentalTitle = card.querySelector('.rental_title');
            const ul = card.querySelector('.card_box');

            card.classList.toggle('active');
            rentalTitle.classList.toggle('title_open');
            ul.style.display = (ul.style.display === 'block') ? 'none' : 'block';
        });
    });
});
