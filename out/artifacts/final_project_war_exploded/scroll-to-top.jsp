
<div class="scroll-to-top">
    <p class="scroll-to-top__btn" id="scrollToTopBtn"><i class="fas fa-angle-up"></i></p>
</div>

<script async>
    window.onscroll = function () {
        scrollToTop();
    };

    // hàm scroll
    function scrollToTop() {
        if (document.body.scrollTop > 25 || document.documentElement.scrollTop > 25) {
            document.getElementById('scrollToTopBtn').style.opacity = '1';
        } else {
            document.getElementById('scrollToTopBtn').style.opacity = '0';
        }
    }

    document.getElementById('scrollToTopBtn').addEventListener("click", function () {
        //Nếu button được click thì nhảy về đầu trang
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    });
</script>
