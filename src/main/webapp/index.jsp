<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#111827">

<title>NexusShop — Modern Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
/* =========================================================
   DESIGN SYSTEM
========================================================= */

:root {
    --bg: #f7f7f5;
    --surface: #ffffff;
    --surface-2: #f1f2f4;
    --surface-3: #e9eaee;

    --text: #111827;
    --text-soft: #4b5563;
    --text-muted: #8a919e;

    --brand: #ff6b4a;
    --brand-dark: #e55232;
    --brand-soft: #fff0eb;

    --dark: #111827;
    --dark-2: #1f2937;

    --success: #159570;
    --danger: #ef4444;
    --warning: #f5b942;

    --border: #e5e7eb;

    --radius-xs: 8px;
    --radius-sm: 12px;
    --radius: 18px;
    --radius-lg: 26px;

    --shadow-sm: 0 2px 10px rgba(17, 24, 39, .05);
    --shadow: 0 8px 30px rgba(17, 24, 39, .07);
    --shadow-lg: 0 20px 60px rgba(17, 24, 39, .14);

    --container: 1280px;
    --transition: .22s ease;
}

/* =========================================================
   RESET
========================================================= */

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

html {
    scroll-behavior: smooth;
    scroll-padding-top: 90px;
}

body {
    font-family: Inter, system-ui, sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.5;
    -webkit-font-smoothing: antialiased;
}

body.no-scroll {
    overflow: hidden;
}

button,
input,
select {
    font: inherit;
}

button {
    border: 0;
    cursor: pointer;
}

a {
    color: inherit;
    text-decoration: none;
}

img {
    display: block;
    max-width: 100%;
}

ul {
    list-style: none;
}

.container {
    width: min(100% - 40px, var(--container));
    margin-inline: auto;
}

.muted {
    color: var(--text-muted);
}

/* =========================================================
   BUTTONS
========================================================= */

.btn {
    min-height: 46px;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 9px;
    padding: 0 20px;
    border-radius: 999px;
    font-weight: 700;
    font-size: 16px;
    transition: var(--transition);
}

.btn-primary {
    background: var(--brand);
    color: white;
}

.btn-primary:hover {
    background: var(--brand-dark);
    transform: translateY(-2px);
    box-shadow: 0 10px 24px rgba(255,107,74,.25);
}

.btn-dark {
    background: var(--dark);
    color: white;
}

.btn-dark:hover {
    background: #263244;
    transform: translateY(-2px);
}

.btn-light {
    background: white;
    color: var(--text);
    border: 1px solid var(--border);
}

.btn-light:hover {
    border-color: var(--brand);
    color: var(--brand);
}

.btn-block {
    width: 100%;
}

/* =========================================================
   HEADER
========================================================= */

.site-header {
    position: sticky;
    top: 0;
    z-index: 100;
    background: rgba(255,255,255,.94);
    backdrop-filter: blur(18px);
    border-bottom: 1px solid rgba(17,24,39,.06);
}

.header-top {
    min-height: 72px;
    display: flex;
    align-items: center;
    gap: 24px;
}

.logo {
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 21px;
    font-weight: 800;
    white-space: nowrap;
}

.logo-icon {
    width: 38px;
    height: 38px;
    display: grid;
    place-items: center;
    border-radius: 11px;
    background: var(--brand);
    color: white;
}

.logo span span {
    color: var(--brand);
}

.header-search {
    flex: 1;
    max-width: 560px;
    position: relative;
}

.header-search input {
    width: 100%;
    height: 44px;
    border: 1px solid transparent;
    border-radius: 999px;
    background: var(--surface-2);
    outline: none;
    padding: 0 48px 0 44px;
    color: var(--text);
    transition: var(--transition);
}

.header-search input:focus {
    background: white;
    border-color: var(--brand);
    box-shadow: 0 0 0 4px rgba(255,107,74,.10);
}

.header-search .search-icon {
    position: absolute;
    left: 17px;
    top: 50%;
    transform: translateY(-50%);
    color: var(--text-muted);
}

.header-search button {
    position: absolute;
    right: 6px;
    top: 5px;
    width: 34px;
    height: 34px;
    border-radius: 50%;
    background: white;
    color: var(--text-soft);
}

.header-actions {
    margin-left: auto;
    display: flex;
    align-items: center;
    gap: 4px;
}

.icon-btn {
    position: relative;
    width: 42px;
    height: 42px;
    border-radius: 50%;
    background: transparent;
    color: var(--text-soft);
    display: grid;
    place-items: center;
    transition: var(--transition);
}

.icon-btn:hover {
    background: var(--surface-2);
    color: var(--text);
}

.icon-badge {
    position: absolute;
    top: 0;
    right: 0;
    min-width: 18px;
    height: 18px;
    padding: 0 4px;
    border-radius: 999px;
    background: var(--brand);
    color: white;
    border: 2px solid white;
    font-size: 9px;
    font-weight: 800;
    display: grid;
    place-items: center;
}

.account-btn {
    display: flex;
    align-items: center;
    gap: 9px;
    padding: 5px 10px 5px 5px;
    border-radius: 999px;
    font-size: 12px;
}

.avatar {
    width: 34px;
    height: 34px;
    border-radius: 50%;
    object-fit: cover;
}

.account-text {
    text-align: left;
}

.account-text strong {
    display: block;
    font-size: 12px;
}

.account-text span {
    color: var(--text-muted);
    font-size: 10px;
}

.mobile-menu-btn {
    display: none;
}

/* =========================================================
   DESKTOP NAV
========================================================= */

.desktop-nav {
    border-top: 1px solid #f0f1f3;
}

.nav-inner {
    height: 48px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.nav-links {
    display: flex;
    align-items: center;
    gap: 5px;
}

.nav-links a {
    padding: 8px 14px;
    border-radius: 9px;
    font-size: 13px;
    font-weight: 600;
    color: var(--text-soft);
}

.nav-links a:hover,
.nav-links a.active {
    background: var(--brand-soft);
    color: var(--brand);
}

.shipping-note {
    color: var(--text-muted);
    font-size: 12px;
}

.shipping-note strong {
    color: var(--success);
}

/* =========================================================
   HERO
========================================================= */

.hero {
    margin-top: 24px;
}

.hero-card {
    min-height: 460px;
    position: relative;
    overflow: hidden;
    border-radius: var(--radius-lg);
    background:
        linear-gradient(90deg,
        rgba(10,15,25,.94) 0%,
        rgba(10,15,25,.76) 48%,
        rgba(10,15,25,.25) 100%),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
        center/cover;
    display: flex;
    align-items: center;
}

.hero-content {
    max-width: 620px;
    padding: 55px;
    color: white;
}

.hero-label {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    padding: 7px 12px;
    border-radius: 999px;
    background: rgba(255,107,74,.17);
    border: 1px solid rgba(255,107,74,.35);
    color: #ffad99;
    font-size: 12px;
    font-weight: 800;
    margin-bottom: 18px;
}

.hero h1 {
    font-family: "Playfair Display", serif;
    font-size: clamp(38px, 5vw, 62px);
    line-height: 1.06;
    letter-spacing: -1.5px;
    margin-bottom: 18px;
}

.hero p {
    max-width: 510px;
    color: rgba(255,255,255,.78);
    font-size: 16px;
    margin-bottom: 28px;
}

.hero-actions {
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
}

.hero .btn-light {
    background: rgba(255,255,255,.1);
    color: white;
    border-color: rgba(255,255,255,.25);
}

.hero .btn-light:hover {
    background: white;
    color: var(--text);
}

/* =========================================================
   QUICK FEATURES
========================================================= */

.features {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 14px;
    margin-top: 20px;
}

.feature {
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    padding: 18px;
    display: flex;
    align-items: center;
    gap: 13px;
}

.feature-icon {
    width: 42px;
    height: 42px;
    flex: 0 0 42px;
    border-radius: 12px;
    background: var(--brand-soft);
    color: var(--brand);
    display: grid;
    place-items: center;
}

.feature strong {
    display: block;
    font-size: 13px;
}

.feature span {
    display: block;
    margin-top: 2px;
    color: var(--text-muted);
    font-size: 11px;
}

/* =========================================================
   SECTIONS
========================================================= */

.section {
    padding: 62px 0;
}

.section-head {
    display: flex;
    align-items: end;
    justify-content: space-between;
    gap: 20px;
    margin-bottom: 25px;
}

.section-title h2 {
    font-size: 27px;
    letter-spacing: -.7px;
}

.section-title p {
    color: var(--text-muted);
    font-size: 13px;
    margin-top: 4px;
}

.text-link {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    color: var(--brand);
    font-size: 13px;
    font-weight: 700;
}

.text-link:hover {
    gap: 11px;
}

/* =========================================================
   CATEGORIES
========================================================= */

.categories {
    display: grid;
    grid-template-columns: repeat(6,1fr);
    gap: 14px;
}

.category {
    border: 1px solid var(--border);
    background: white;
    border-radius: var(--radius);
    padding: 22px 12px;
    text-align: center;
    transition: var(--transition);
}

.category:hover {
    border-color: #ffd0c5;
    transform: translateY(-4px);
    box-shadow: var(--shadow);
}

.category-icon {
    width: 58px;
    height: 58px;
    border-radius: 18px;
    background: var(--brand-soft);
    color: var(--brand);
    display: grid;
    place-items: center;
    margin: 0 auto 12px;
    font-size: 21px;
}

.category strong {
    display: block;
    font-size: 13px;
}

.category span {
    color: var(--text-muted);
    font-size: 11px;
}

/* =========================================================
   PRODUCT TOOLBAR
========================================================= */

.product-toolbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 15px;
    margin-bottom: 20px;
}

.filter-chips {
    display: flex;
    gap: 7px;
    overflow-x: auto;
    scrollbar-width: none;
}

.filter-chips::-webkit-scrollbar {
    display: none;
}

.filter-chip {
    flex: 0 0 auto;
    padding: 8px 14px;
    border-radius: 999px;
    background: white;
    border: 1px solid var(--border);
    color: var(--text-soft);
    font-size: 12px;
    font-weight: 600;
    transition: var(--transition);
}

.filter-chip:hover,
.filter-chip.active {
    background: var(--dark);
    color: white;
    border-color: var(--dark);
}

.sort-select {
    height: 38px;
    border: 1px solid var(--border);
    border-radius: 9px;
    padding: 0 10px;
    background: white;
    color: var(--text-soft);
    font-size: 12px;
    outline: none;
}

/* =========================================================
   PRODUCTS
========================================================= */

.products {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 18px;
}

.product {
    position: relative;
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    overflow: hidden;
    transition: var(--transition);
}

.product:hover {
    transform: translateY(-5px);
    box-shadow: var(--shadow);
    border-color: #ffd9d0;
}

.product-image {
    position: relative;
    aspect-ratio: 1 / .92;
    background: var(--surface-2);
    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .35s ease;
}

.product:hover .product-image img {
    transform: scale(1.045);
}

.product-badge {
    position: absolute;
    top: 12px;
    left: 12px;
    padding: 5px 9px;
    border-radius: 999px;
    background: var(--dark);
    color: white;
    font-size: 9px;
    font-weight: 800;
    text-transform: uppercase;
}

.product-badge.sale {
    background: var(--brand);
}

.wishlist {
    position: absolute;
    top: 10px;
    right: 10px;
    width: 35px;
    height: 35px;
    border-radius: 50%;
    background: rgba(255,255,255,.92);
    display: grid;
    place-items: center;
    color: var(--text-soft);
    transition: var(--transition);
}

.wishlist:hover,
.wishlist.active {
    color: var(--brand);
    background: white;
    transform: scale(1.08);
}

.product-info {
    padding: 15px;
}

.product-category {
    color: var(--text-muted);
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: .7px;
    font-weight: 700;
}

.product-title {
    font-size: 14px;
    margin: 5px 0 9px;
    line-height: 1.35;
    min-height: 38px;
}

.product-meta {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 10px;
}

.rating {
    color: #f5a623;
    font-size: 11px;
}

.rating span {
    color: var(--text-muted);
    margin-left: 3px;
}

.price {
    display: flex;
    align-items: center;
    gap: 7px;
    margin-top: 8px;
}

.price-current {
    font-size: 17px;
    font-weight: 800;
}

.price-old {
    color: var(--text-muted);
    text-decoration: line-through;
    font-size: 11px;
}

.product-footer {
    padding: 0 15px 15px;
}

.add-cart {
    width: 100%;
    min-height: 40px;
    border-radius: 10px;
    background: var(--dark);
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 7px;
    font-size: 12px;
    font-weight: 700;
    transition: var(--transition);
}

.add-cart:hover {
    background: var(--brand);
}

.add-cart.added {
    background: var(--success);
}

/* =========================================================
   EMPTY STATE
========================================================= */

.empty-state {
    grid-column: 1/-1;
    text-align: center;
    background: white;
    border: 1px dashed var(--border);
    border-radius: var(--radius);
    padding: 60px 20px;
}

.empty-icon {
    width: 64px;
    height: 64px;
    margin: 0 auto 15px;
    border-radius: 50%;
    background: var(--surface-2);
    color: var(--text-muted);
    display: grid;
    place-items: center;
    font-size: 23px;
}

.empty-state h3 {
    font-size: 17px;
    margin-bottom: 5px;
}

.empty-state p {
    color: var(--text-muted);
    font-size: 13px;
}

/* =========================================================
   DEAL
========================================================= */

.deal-card {
    background: var(--dark);
    color: white;
    border-radius: var(--radius-lg);
    overflow: hidden;
    display: grid;
    grid-template-columns: 1fr 1fr;
}

.deal-image {
    min-height: 370px;
}

.deal-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.deal-content {
    padding: 45px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.deal-label {
    align-self: flex-start;
    padding: 6px 11px;
    border-radius: 999px;
    background: rgba(255,107,74,.16);
    color: #ff9f88;
    font-size: 10px;
    font-weight: 800;
    text-transform: uppercase;
    margin-bottom: 14px;
}

.deal-content h3 {
    font-size: 31px;
    margin-bottom: 8px;
}

.deal-content p {
    color: rgba(255,255,255,.62);
    font-size: 13px;
    max-width: 470px;
}

.deal-price {
    margin: 20px 0 5px;
    font-size: 31px;
    font-weight: 800;
}

.deal-price del {
    color: rgba(255,255,255,.4);
    font-size: 17px;
    font-weight: 400;
    margin-left: 7px;
}

.deal-stock {
    color: rgba(255,255,255,.6);
    font-size: 12px;
}

.deal-stock strong {
    color: #ff9078;
}

.countdown {
    display: flex;
    gap: 8px;
    margin: 20px 0;
}

.time-box {
    width: 62px;
    padding: 9px 5px;
    border-radius: 10px;
    background: rgba(255,255,255,.08);
    text-align: center;
}

.time-box strong {
    display: block;
    font-size: 20px;
}

.time-box span {
    color: rgba(255,255,255,.5);
    font-size: 8px;
    text-transform: uppercase;
}

/* =========================================================
   TESTIMONIALS
========================================================= */

.testimonials {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 16px;
}

.review {
    background: white;
    border: 1px solid var(--border);
    border-radius: var(--radius);
    padding: 23px;
}

.review-stars {
    color: #f5a623;
    font-size: 12px;
    margin-bottom: 12px;
}

.review blockquote {
    color: var(--text-soft);
    font-size: 13px;
    line-height: 1.65;
    min-height: 65px;
}

.reviewer {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-top: 18px;
}

.reviewer img {
    width: 38px;
    height: 38px;
    border-radius: 50%;
    object-fit: cover;
}

.reviewer strong {
    display: block;
    font-size: 12px;
}

.reviewer span {
    display: block;
    color: var(--text-muted);
    font-size: 10px;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter {
    background: var(--brand-soft);
    border-radius: var(--radius-lg);
    padding: 42px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 30px;
}

.newsletter h2 {
    font-size: 26px;
    margin-bottom: 5px;
}

.newsletter p {
    color: var(--text-soft);
    font-size: 13px;
}

.newsletter-form {
    display: flex;
    width: min(100%, 440px);
    background: white;
    padding: 5px;
    border-radius: 999px;
    border: 1px solid #ffd9d0;
}

.newsletter-form input {
    flex: 1;
    min-width: 0;
    border: 0;
    outline: 0;
    padding: 0 14px;
    background: transparent;
    font-size: 12px;
}

/* =========================================================
   FOOTER
========================================================= */

footer {
    background: white;
    border-top: 1px solid var(--border);
    padding: 50px 0 25px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr repeat(3,1fr);
    gap: 50px;
    padding-bottom: 40px;
}

.footer-brand p {
    max-width: 300px;
    margin-top: 12px;
    color: var(--text-muted);
    font-size: 12px;
}

.socials {
    display: flex;
    gap: 7px;
    margin-top: 18px;
}

.socials a {
    width: 34px;
    height: 34px;
    border-radius: 50%;
    display: grid;
    place-items: center;
    background: var(--surface-2);
    color: var(--text-soft);
    font-size: 12px;
    transition: var(--transition);
}

.socials a:hover {
    background: var(--brand);
    color: white;
}

.footer-col h4 {
    font-size: 12px;
    margin-bottom: 14px;
}

.footer-col li {
    margin-bottom: 9px;
}

.footer-col a {
    color: var(--text-muted);
    font-size: 12px;
}

.footer-col a:hover {
    color: var(--brand);
}

.footer-bottom {
    padding-top: 20px;
    border-top: 1px solid var(--border);
    text-align: center;
    color: var(--text-muted);
    font-size: 10px;
}

/* =========================================================
   CART DRAWER
========================================================= */

.overlay {
    position: fixed;
    inset: 0;
    background: rgba(17,24,39,.45);
    backdrop-filter: blur(3px);
    z-index: 200;
    opacity: 0;
    visibility: hidden;
    transition: var(--transition);
}

.overlay.show {
    opacity: 1;
    visibility: visible;
}

.cart-drawer {
    position: fixed;
    z-index: 210;
    top: 0;
    right: 0;
    width: min(420px,100%);
    height: 100dvh;
    background: white;
    transform: translateX(100%);
    transition: .3s ease;
    display: flex;
    flex-direction: column;
    box-shadow: var(--shadow-lg);
}

.cart-drawer.show {
    transform: translateX(0);
}

.cart-head {
    padding: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid var(--border);
}

.cart-head h3 {
    font-size: 17px;
}

.close-btn {
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background: var(--surface-2);
}

.cart-items {
    flex: 1;
    overflow-y: auto;
    padding: 15px;
}

.cart-item {
    display: grid;
    grid-template-columns: 65px 1fr auto;
    gap: 11px;
    padding: 12px 0;
    border-bottom: 1px solid var(--border);
}

.cart-item img {
    width: 65px;
    height: 65px;
    border-radius: 10px;
    object-fit: cover;
}

.cart-item h4 {
    font-size: 12px;
    margin-bottom: 4px;
}

.cart-item-price {
    font-size: 12px;
    font-weight: 800;
}

.qty {
    display: flex;
    align-items: center;
    gap: 6px;
    margin-top: 8px;
}

.qty button {
    width: 24px;
    height: 24px;
    border-radius: 6px;
    background: var(--surface-2);
}

.qty span {
    min-width: 20px;
    text-align: center;
    font-size: 11px;
    font-weight: 700;
}

.remove-item {
    color: var(--text-muted);
}

.remove-item:hover {
    color: var(--danger);
}

.cart-empty {
    height: 100%;
    display: grid;
    place-items: center;
    text-align: center;
    padding: 30px;
}

.cart-empty i {
    font-size: 38px;
    color: var(--text-muted);
    margin-bottom: 15px;
}

.cart-empty h4 {
    margin-bottom: 4px;
}

.cart-empty p {
    color: var(--text-muted);
    font-size: 12px;
}

.cart-footer {
    border-top: 1px solid var(--border);
    padding: 18px;
}

.cart-total {
    display: flex;
    justify-content: space-between;
    font-weight: 800;
    margin-bottom: 13px;
}

/* =========================================================
   TOAST
========================================================= */

.toast {
    position: fixed;
    z-index: 500;
    left: 50%;
    bottom: 25px;
    transform: translate(-50%, 20px);
    background: var(--dark);
    color: white;
    border-radius: 999px;
    padding: 11px 17px;
    font-size: 12px;
    font-weight: 600;
    opacity: 0;
    pointer-events: none;
    transition: .25s ease;
    box-shadow: var(--shadow-lg);
}

.toast.show {
    opacity: 1;
    transform: translate(-50%,0);
}

/* =========================================================
   MOBILE BOTTOM NAV
========================================================= */

.mobile-bottom-nav {
    display: none;
}

/* =========================================================
   RESPONSIVE
========================================================= */

@media (max-width: 1100px) {
    .products {
        grid-template-columns: repeat(3,1fr);
    }

    .categories {
        grid-template-columns: repeat(3,1fr);
    }

    .features {
        grid-template-columns: repeat(2,1fr);
    }

    .testimonials {
        grid-template-columns: 1fr 1fr;
    }
}

@media (max-width: 850px) {
    .account-btn {
        display: none;
    }

    .desktop-nav {
        display: none;
    }

    .mobile-menu-btn {
        display: grid;
    }

    .header-top {
        gap: 10px;
    }

    .logo {
        font-size: 18px;
    }

    .logo-icon {
        width: 34px;
        height: 34px;
    }

    .hero-card {
        min-height: 430px;
    }

    .hero-content {
        padding: 35px;
    }

    .deal-card {
        grid-template-columns: 1fr;
    }

    .deal-image {
        min-height: 260px;
        max-height: 300px;
    }

    .newsletter {
        flex-direction: column;
        align-items: stretch;
    }

    .newsletter-form {
        width: 100%;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }
}

@media (max-width: 650px) {

    body {
        padding-bottom: 70px;
    }

    .container {
        width: min(100% - 28px, var(--container));
    }

    .header-top {
        min-height: 62px;
    }

    .header-search {
        order: 3;
        flex-basis: 100%;
        max-width: none;
    }

    .site-header {
        position: sticky;
    }

    .header-top {
        flex-wrap: wrap;
        padding: 8px 0 10px;
    }

    .header-actions {
        margin-left: auto;
    }

    .hero {
        margin-top: 12px;
    }

    .hero-card {
        min-height: 440px;
        border-radius: 20px;
        background:
            linear-gradient(90deg,
            rgba(10,15,25,.93),
            rgba(10,15,25,.65)),
            url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=900&q=80")
            center/cover;
    }

    .hero-content {
        padding: 28px;
    }

    .hero h1 {
        font-size: 37px;
    }

    .features {
        grid-template-columns: 1fr 1fr;
        gap: 8px;
    }

    .feature {
        padding: 13px;
    }

    .feature-icon {
        width: 35px;
        height: 35px;
        flex-basis: 35px;
    }

    .feature strong {
        font-size: 11px;
    }

    .feature span {
        font-size: 9px;
    }

    .section {
        padding: 43px 0;
    }

    .section-title h2 {
        font-size: 23px;
    }

    .categories {
        grid-template-columns: repeat(2,1fr);
        gap: 9px;
    }

    .category {
        padding: 17px 8px;
    }

    .category-icon {
        width: 48px;
        height: 48px;
        border-radius: 14px;
    }

    .products {
        grid-template-columns: repeat(2,1fr);
        gap: 10px;
    }

    .product {
        border-radius: 14px;
    }

    .product-info {
        padding: 11px;
    }

    .product-footer {
        padding: 0 11px 11px;
    }

    .product-title {
        font-size: 12px;
        min-height: 34px;
    }

    .price-current {
        font-size: 14px;
    }

    .product-meta {
        display: block;
    }

    .rating {
        margin-top: 4px;
    }

    .add-cart {
        min-height: 36px;
        font-size: 11px;
    }

    .product-toolbar {
        align-items: flex-start;
        flex-direction: column;
    }

    .sort-select {
        width: 100%;
    }

    .deal-content {
        padding: 28px 22px;
    }

    .deal-content h3 {
        font-size: 25px;
    }

    .testimonials {
        display: flex;
        overflow-x: auto;
        scroll-snap-type: x mandatory;
        padding-bottom: 5px;
    }

    .review {
        min-width: 290px;
        scroll-snap-align: start;
    }

    .newsletter {
        padding: 28px 20px;
        border-radius: 20px;
    }

    .newsletter h2 {
        font-size: 22px;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 28px;
    }

    .mobile-bottom-nav {
        position: fixed;
        display: grid;
        grid-template-columns: repeat(4,1fr);
        left: 0;
        right: 0;
        bottom: 0;
        height: 64px;
        background: rgba(255,255,255,.96);
        backdrop-filter: blur(18px);
        border-top: 1px solid var(--border);
        z-index: 150;
    }

    .mobile-bottom-nav button {
        color: var(--text-muted);
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        gap: 3px;
        font-size: 17px;
        position: relative;
    }

    .mobile-bottom-nav button span {
        font-size: 9px;
        font-weight: 600;
    }

    .mobile-bottom-nav button.active {
        color: var(--brand);
    }

    .mobile-bottom-nav .icon-badge {
        top: 7px;
        right: calc(50% - 17px);
    }
}

@media (max-width: 390px) {
    .hero h1 {
        font-size: 32px;
    }

    .hero p {
        font-size: 13px;
    }

    .hero-actions .btn {
        width: 100%;
    }

    .features {
        grid-template-columns: 1fr;
    }
}

/* =========================================================
   ACCESSIBILITY
========================================================= */

button:focus-visible,
a:focus-visible,
input:focus-visible,
select:focus-visible {
    outline: 3px solid rgba(255,107,74,.3);
    outline-offset: 2px;
}

@media (prefers-reduced-motion: reduce) {
    *,
    *::before,
    *::after {
        scroll-behavior: auto !important;
        transition: none !important;
        animation: none !important;
    }
}
</style>
</head>

<body>

<!-- =========================================================
     HEADER
========================================================= -->

<header class="site-header">

    <div class="container header-top">

        <button
            class="icon-btn mobile-menu-btn"
            id="mobileMenuBtn"
            aria-label="Open menu">
            <i class="fas fa-bars"></i>
        </button>

        <a href="#" class="logo">
            <span class="logo-icon">
                <i class="fas fa-bag-shopping"></i>
            </span>
            <span>Nexus<span>Shop</span></span>
        </a>

        <div class="header-search">

            <i class="fas fa-search search-icon"></i>

            <input
                id="searchInput"
                type="search"
                placeholder="Search products, categories..."
                autocomplete="off"
                aria-label="Search products">

            <button id="searchButton" aria-label="Search">
                <i class="fas fa-arrow-right"></i>
            </button>

        </div>

        <div class="header-actions">

            <button
                class="icon-btn"
                id="wishlistButton"
                aria-label="Wishlist">
                <i class="far fa-heart"></i>
                <span class="icon-badge" id="wishlistCount">0</span>
            </button>

            <button
                class="icon-btn"
                id="cartButton"
                aria-label="Shopping cart">
                <i class="fas fa-bag-shopping"></i>
                <span class="icon-badge" id="cartCount">0</span>
            </button>

            <button class="account-btn">
                <img
                    class="avatar"
                    src="https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?auto=format&fit=crop&w=80&q=80"
                    alt="Account">
                <div class="account-text">
                    <strong>My Account</strong>
                    <span>Welcome back</span>
                </div>
            </button>

        </div>

    </div>

    <div class="desktop-nav">
        <div class="container nav-inner">

            <nav class="nav-links">
                <a href="#" class="active">Home</a>
                <a href="#categories">Categories</a>
                <a href="#products">Shop</a>
                <a href="#deals">Deals</a>
                <a href="#reviews">Reviews</a>
            </nav>

            <div class="shipping-note">
                <strong><i class="fas fa-truck"></i> Free shipping</strong>
                on orders over $50
            </div>

        </div>
    </div>

</header>


<!-- =========================================================
     MAIN
========================================================= -->

<main>

<!-- HERO -->

<section class="hero">

    <div class="container">

        <div class="hero-card">

            <div class="hero-content">

                <div class="hero-label">
                    <i class="fas fa-sparkles"></i>
                    New collection 2026
                </div>

                <h1>
                    Everything you want.
                    One better place.
                </h1>

                <p>
                    Discover carefully selected fashion, technology,
                    accessories and everyday essentials — all in one
                    simple shopping experience.
                </p>

                <div class="hero-actions">

                    <button
                        class="btn btn-primary"
                        id="shopNow">
                        Shop trending
                        <i class="fas fa-arrow-right"></i>
                    </button>

                    <button
                        class="btn btn-light"
                        id="heroDeals">
                        View today's deals
                    </button>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- FEATURES -->

<section class="container">

    <div class="features">

        <div class="feature">
            <div class="feature-icon">
                <i class="fas fa-truck-fast"></i>
            </div>
            <div>
                <strong>Fast delivery</strong>
                <span>2–5 business days</span>
            </div>
        </div>

        <div class="feature">
            <div class="feature-icon">
                <i class="fas fa-shield-halved"></i>
            </div>
            <div>
                <strong>Secure checkout</strong>
                <span>Protected payments</span>
            </div>
        </div>

        <div class="feature">
            <div class="feature-icon">
                <i class="fas fa-rotate-left"></i>
            </div>
            <div>
                <strong>Easy returns</strong>
                <span>30-day returns</span>
            </div>
        </div>

        <div class="feature">
            <div class="feature-icon">
                <i class="fas fa-headset"></i>
            </div>
            <div>
                <strong>Helpful support</strong>
                <span>We're here to help</span>
            </div>
        </div>

    </div>

</section>


<!-- CATEGORIES -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-head">

            <div class="section-title">
                <h2>Shop by category</h2>
                <p>Start with what you're looking for</p>
            </div>

            <a class="text-link" href="#products">
                Browse all
                <i class="fas fa-arrow-right"></i>
            </a>

        </div>

        <div
            class="categories"
            id="categoriesGrid">
        </div>

    </div>

</section>


<!-- PRODUCTS -->

<section class="section" id="products">

    <div class="container">

        <div class="section-head">

            <div class="section-title">
                <h2>Popular right now</h2>
                <p>Products shoppers are loving today</p>
            </div>

            <span class="muted" id="resultCount"></span>

        </div>


        <div class="product-toolbar">

            <div
                class="filter-chips"
                id="filterChips">
            </div>

            <select
                class="sort-select"
                id="sortSelect"
                aria-label="Sort products">

                <option value="featured">Sort: Featured</option>
                <option value="price-low">Price: Low to high</option>
                <option value="price-high">Price: High to low</option>
                <option value="rating">Highest rated</option>

            </select>

        </div>


        <div
            class="products"
            id="productsGrid">
        </div>

    </div>

</section>


<!-- DEAL -->

<section class="section" id="deals">

    <div class="container">

        <div class="section-head">

            <div class="section-title">
                <h2>Deal of the day</h2>
                <p>A limited offer worth checking out</p>
            </div>

        </div>

        <div class="deal-card">

            <div class="deal-image">

                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85"
                    alt="MacBook Air"
                    loading="lazy">

            </div>

            <div class="deal-content">

                <span class="deal-label">
                    <i class="fas fa-bolt"></i>
                    Limited offer
                </span>

                <h3>MacBook Air M2</h3>

                <p>
                    Thin, quiet and powerful. A perfect everyday laptop
                    for work, creativity and entertainment.
                </p>

                <div class="deal-price">
                    $999
                    <del>$1,199</del>
                </div>

                <div class="deal-stock">
                    Only <strong>12</strong> left at this price
                </div>

                <div class="countdown">

                    <div class="time-box">
                        <strong id="days">00</strong>
                        <span>Days</span>
                    </div>

                    <div class="time-box">
                        <strong id="hours">00</strong>
                        <span>Hours</span>
                    </div>

                    <div class="time-box">
                        <strong id="minutes">00</strong>
                        <span>Mins</span>
                    </div>

                    <div class="time-box">
                        <strong id="seconds">00</strong>
                        <span>Secs</span>
                    </div>

                </div>

                <button
                    class="btn btn-primary"
                    id="dealAdd">
                    <i class="fas fa-bag-shopping"></i>
                    Add deal to cart
                </button>

            </div>

        </div>

    </div>

</section>


<!-- REVIEWS -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-head">

            <div class="section-title">
                <h2>Loved by shoppers</h2>
                <p>What customers are saying about NexusShop</p>
            </div>

        </div>

        <div
            class="testimonials"
            id="reviewsList">
        </div>

    </div>

</section>


<!-- NEWSLETTER -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <div>
                <h2>Get the good stuff first.</h2>
                <p>
                    New arrivals, private offers and useful shopping updates.
                </p>
            </div>

            <form
                class="newsletter-form"
                id="newsletterForm">

                <input
                    id="emailInput"
                    type="email"
                    placeholder="Your email address"
                    required>

                <button class="btn btn-primary">
                    Subscribe
                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a class="logo" href="#">
                    <span class="logo-icon">
                        <i class="fas fa-bag-shopping"></i>
                    </span>
                    <span>Nexus<span>Shop</span></span>
                </a>

                <p>
                    A modern shopping experience designed to make
                    discovering and buying products simple.
                </p>

                <div class="socials">
                    <a href="#" aria-label="Instagram">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="#" aria-label="Facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" aria-label="Twitter">
                        <i class="fab fa-x-twitter"></i>
                    </a>
                    <a href="#" aria-label="YouTube">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>

            </div>

            <div class="footer-col">

                <h4>Shop</h4>

                <ul>
                    <li><a href="#products">Trending</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#">New arrivals</a></li>
                </ul>

            </div>

            <div class="footer-col">

                <h4>Help</h4>

                <ul>
                    <li><a href="#">Help center</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Contact us</a></li>
                </ul>

            </div>

            <div class="footer-col">

                <h4>Company</h4>

                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                </ul>

            </div>

        </div>

        <div class="footer-bottom">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>


<!-- =========================================================
     CART
========================================================= -->

<div
    class="overlay"
    id="overlay">
</div>

<aside
    class="cart-drawer"
    id="cartDrawer"
    aria-label="Shopping cart">

    <div class="cart-head">

        <h3>
            Your cart
            <span class="muted" id="cartItemLabel"></span>
        </h3>

        <button
            class="close-btn"
            id="closeCart"
            aria-label="Close cart">
            <i class="fas fa-xmark"></i>
        </button>

    </div>

    <div
        class="cart-items"
        id="cartItems">
    </div>

    <div class="cart-footer">

        <div class="cart-total">
            <span>Total</span>
            <span id="cartTotal">$0</span>
        </div>

        <button
            class="btn btn-primary btn-block"
            id="checkoutButton">
            Continue to checkout
            <i class="fas fa-arrow-right"></i>
        </button>

    </div>

</aside>


<!-- =========================================================
     MOBILE NAV
========================================================= -->

<nav class="mobile-bottom-nav">

    <button
        class="active"
        data-scroll="top">
        <i class="fas fa-house"></i>
        <span>Home</span>
    </button>

    <button data-scroll="categories">
        <i class="fas fa-grid-2"></i>
        <span>Categories</span>
    </button>

    <button data-scroll="products">
        <i class="fas fa-compass"></i>
        <span>Explore</span>
    </button>

    <button id="mobileCart">
        <i class="fas fa-bag-shopping"></i>
        <span>Cart</span>
        <span class="icon-badge" id="mobileCartCount">0</span>
    </button>

</nav>


<!-- TOAST -->

<div
    class="toast"
    id="toast"
    role="status">
</div>


<script>
/* =========================================================
   DATA
========================================================= */

const CATEGORIES = [
    {
        id: "all",
        name: "All",
        icon: "fa-border-all",
        count: 8
    },
    {
        id: "Smartphones",
        name: "Phones",
        icon: "fa-mobile-screen-button",
        count: 24
    },
    {
        id: "Laptops",
        name: "Laptops",
        icon: "fa-laptop",
        count: 18
    },
    {
        id: "Clothing",
        name: "Clothing",
        icon: "fa-shirt",
        count: 42
    },
    {
        id: "Gadgets",
        name: "Gadgets",
        icon: "fa-headphones",
        count: 31
    },
    {
        id: "Footwear",
        name: "Footwear",
        icon: "fa-shoe-prints",
        count: 27
    }
];

const PRODUCTS = [
    {
        id: 1,
        title: "iPhone 14 Pro Max",
        category: "Smartphones",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 2,
        title: 'MacBook Pro 14"',
        category: "Laptops",
        price: 1999,
        rating: 4,
        reviews: 86,
        badge: "",
        image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 3,
        title: "Apple Watch Series 8",
        category: "Gadgets",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "Sale",
        image: "https://images.unsplash.com/photo-1546868871-7041f2a55e0f?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 4,
        title: "Nike Air Max 270",
        category: "Footwear",
        price: 150,
        rating: 4,
        reviews: 53,
        badge: "",
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 5,
        title: "Sony A7 IV Camera",
        category: "Gadgets",
        price: 2499,
        rating: 5,
        reviews: 42,
        badge: "New",
        image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 6,
        title: "Premium Fragrance",
        category: "Clothing",
        price: 120,
        rating: 5,
        reviews: 189,
        badge: "",
        image: "https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 7,
        title: "Travel Backpack",
        category: "Gadgets",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "Sale",
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
    },
    {
        id: 8,
        title: "Sony WH-1000XM5",
        category: "Gadgets",
        price: 399,
        rating: 5,
        reviews: 156,
        badge: "",
        image: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=700&q=85"
    }
];

const REVIEWS = [
    {
        name: "Ava Martin",
        role: "Verified buyer",
        rating: 5,
        text: "The whole experience felt simple. Delivery was quick and everything arrived exactly as expected.",
        image: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
    },
    {
        name: "Michael Lee",
        role: "Frequent shopper",
        rating: 5,
        text: "I really like how easy it is to find products. Checkout was straightforward too.",
        image: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
    },
    {
        name: "Sophia Chen",
        role: "Designer",
        rating: 5,
        text: "Beautiful products, good packaging and a much cleaner shopping experience than most stores.",
        image: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
    }
];


/* =========================================================
   STATE
========================================================= */

let cart = JSON.parse(localStorage.getItem("nexus_cart") || "[]");
let wishlist = JSON.parse(localStorage.getItem("nexus_wishlist") || "[]");

let activeCategory = "all";
let searchQuery = "";
let sortMode = "featured";


/* =========================================================
   DOM
========================================================= */

const productsGrid = document.getElementById("productsGrid");
const categoriesGrid = document.getElementById("categoriesGrid");
const filterChips = document.getElementById("filterChips");

const searchInput = document.getElementById("searchInput");
const sortSelect = document.getElementById("sortSelect");

const cartDrawer = document.getElementById("cartDrawer");
const cartItems = document.getElementById("cartItems");
const cartTotal = document.getElementById("cartTotal");
const cartCount = document.getElementById("cartCount");
const mobileCartCount = document.getElementById("mobileCartCount");
const wishlistCount = document.getElementById("wishlistCount");

const overlay = document.getElementById("overlay");
const toast = document.getElementById("toast");


/* =========================================================
   HELPERS
========================================================= */

function money(value) {
    return "$" + Number(value).toLocaleString();
}

function escapeHtml(value) {
    return String(value).replace(/[&<>"']/g, char => ({
        "&": "&amp;",
        "<": "&lt;",
        ">": "&gt;",
        '"': "&quot;",
        "'": "&#039;"
    }[char]));
}

function saveState() {
    localStorage.setItem("nexus_cart", JSON.stringify(cart));
    localStorage.setItem("nexus_wishlist", JSON.stringify(wishlist));
}

function showToast(message) {
    toast.textContent = message;
    toast.classList.add("show");

    clearTimeout(showToast.timer);

    showToast.timer = setTimeout(() => {
        toast.classList.remove("show");
    }, 2300);
}


/* =========================================================
   CATEGORIES
========================================================= */

function renderCategories() {

    categoriesGrid.innerHTML = CATEGORIES.map(category => `
        <button
            class="category"
            data-category="${escapeHtml(category.id)}">

            <div class="category-icon">
                <i class="fas ${category.icon}"></i>
            </div>

            <strong>${escapeHtml(category.name)}</strong>

            <span>
                ${category.count} items
            </span>

        </button>
    `).join("");

    categoriesGrid.querySelectorAll(".category")
        .forEach(button => {

            button.addEventListener("click", () => {

                activeCategory = button.dataset.category;

                renderFilters();
                renderProducts();

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });
            });

        });
}


/* =========================================================
   FILTERS
========================================================= */

function renderFilters() {

    const filters = [
        {
            id: "all",
            name: "All products"
        },
        ...CATEGORIES
            .filter(x => x.id !== "all")
            .map(x => ({
                id: x.id,
                name: x.name
            }))
    ];

    filterChips.innerHTML = filters.map(filter => `
        <button
            class="filter-chip ${activeCategory === filter.id ? "active" : ""}"
            data-filter="${escapeHtml(filter.id)}">
            ${escapeHtml(filter.name)}
        </button>
    `).join("");

    filterChips.querySelectorAll(".filter-chip")
        .forEach(button => {

            button.addEventListener("click", () => {

                activeCategory = button.dataset.filter;

                renderFilters();
                renderProducts();

            });

        });
}


/* =========================================================
   PRODUCT FILTERING
========================================================= */

function getVisibleProducts() {

    let result = [...PRODUCTS];

    if (activeCategory !== "all") {

        result = result.filter(product =>
            product.category === activeCategory
        );

    }

    if (searchQuery) {

        const q = searchQuery.toLowerCase();

        result = result.filter(product =>
            product.title.toLowerCase().includes(q) ||
            product.category.toLowerCase().includes(q)
        );

    }

    switch (sortMode) {

        case "price-low":
            result.sort((a,b) => a.price - b.price);
            break;

        case "price-high":
            result.sort((a,b) => b.price - a.price);
            break;

        case "rating":
            result.sort((a,b) => b.rating - a.rating);
            break;

    }

    return result;
}


/* =========================================================
   PRODUCTS
========================================================= */

function renderProducts() {

    const products = getVisibleProducts();

    document.getElementById("resultCount").textContent =
        `${products.length} product${products.length !== 1 ? "s" : ""}`;

    if (!products.length) {

        productsGrid.innerHTML = `
            <div class="empty-state">

                <div class="empty-icon">
                    <i class="fas fa-search"></i>
                </div>

                <h3>No products found</h3>

                <p>
                    Try a different search or category.
                </p>

                <button
                    class="btn btn-light"
                    style="margin-top:16px"
                    id="clearSearch">
                    Clear filters
                </button>

            </div>
        `;

        document
            .getElementById("clearSearch")
            .addEventListener("click", () => {

                searchInput.value = "";
                searchQuery = "";
                activeCategory = "all";

                renderFilters();
                renderProducts();

            });

        return;
    }

    productsGrid.innerHTML = products.map(product => {

        const liked = wishlist.includes(product.id);

        const stars =
            "★".repeat(product.rating) +
            "☆".repeat(5 - product.rating);

        return `
            <article class="product">

                <div class="product-image">

                    <img
                        src="${product.image}"
                        alt="${escapeHtml(product.title)}"
                        loading="lazy">

                    ${
                        product.badge
                        ? `
                        <span class="product-badge ${product.badge === "Sale" ? "sale" : ""}">
                            ${escapeHtml(product.badge)}
                        </span>
                        `
                        : ""
                    }

                    <button
                        class="wishlist ${liked ? "active" : ""}"
                        data-wishlist="${product.id}"
                        aria-label="Add ${escapeHtml(product.title)} to wishlist">

                        <i class="${liked ? "fas" : "far"} fa-heart"></i>

                    </button>

                </div>

                <div class="product-info">

                    <div class="product-category">
                        ${escapeHtml(product.category)}
                    </div>

                    <h3 class="product-title">
                        ${escapeHtml(product.title)}
                    </h3>

                    <div class="product-meta">

                        <div class="rating">
                            ${stars}
                            <span>(${product.reviews})</span>
                        </div>

                    </div>

                    <div class="price">

                        <span class="price-current">
                            ${money(product.price)}
                        </span>

                        ${
                            product.oldPrice
                            ? `
                            <span class="price-old">
                                ${money(product.oldPrice)}
                            </span>
                            `
                            : ""
                        }

                    </div>

                </div>

                <div class="product-footer">

                    <button
                        class="add-cart"
                        data-cart="${product.id}">

                        <i class="fas fa-plus"></i>
                        Add to cart

                    </button>

                </div>

            </article>
        `;

    }).join("");

    bindProductEvents();
}


/* =========================================================
   PRODUCT EVENTS
========================================================= */

function bindProductEvents() {

    document
        .querySelectorAll("[data-cart]")
        .forEach(button => {

            button.addEventListener("click", () => {

                const id = Number(button.dataset.cart);

                addToCart(id);

                button.classList.add("added");

                button.innerHTML = `
                    <i class="fas fa-check"></i>
                    Added
                `;

                setTimeout(() => {

                    button.classList.remove("added");

                    button.innerHTML = `
                        <i class="fas fa-plus"></i>
                        Add to cart
                    `;

                }, 1200);

            });

        });


    document
        .querySelectorAll("[data-wishlist]")
        .forEach(button => {

            button.addEventListener("click", () => {

                toggleWishlist(
                    Number(button.dataset.wishlist)
                );

            });

        });

}


/* =========================================================
   CART
========================================================= */

function addToCart(id) {

    const existing = cart.find(item => item.id === id);

    if (existing) {
        existing.quantity++;
    } else {

        cart.push({
            id,
            quantity: 1
        });

    }

    saveState();
    updateCartUI();

    const product = PRODUCTS.find(p => p.id === id);

    showToast(`${product.title} added to your cart`);

}

function removeFromCart(id) {

    cart = cart.filter(item => item.id !== id);

    saveState();
    updateCartUI();

}

function changeQuantity(id, amount) {

    const item = cart.find(item => item.id === id);

    if (!item) return;

    item.quantity += amount;

    if (item.quantity <= 0) {
        removeFromCart(id);
        return;
    }

    saveState();
    updateCartUI();

}

function getCartQuantity() {

    return cart.reduce(
        (total,item) => total + item.quantity,
        0
    );

}

function getCartTotal() {

    return cart.reduce((total,item) => {

        const product =
            PRODUCTS.find(p => p.id === item.id);

        return total +
            (product ? product.price * item.quantity : 0);

    },0);

}


/* =========================================================
   CART UI
========================================================= */

function updateCartUI() {

    const quantity = getCartQuantity();
    const total = getCartTotal();

    cartCount.textContent = quantity;
    mobileCartCount.textContent = quantity;

    cartTotal.textContent = money(total);

    document.getElementById("cartItemLabel").textContent =
        quantity ? `(${quantity})` : "";

    if (!cart.length) {

        cartItems.innerHTML = `
            <div class="cart-empty">

                <div>

                    <i class="fas fa-bag-shopping"></i>

                    <h4>Your cart is empty</h4>

                    <p>
                        Add something you love and it will appear here.
                    </p>

                </div>

            </div>
        `;

        return;
    }

    cartItems.innerHTML = cart.map(item => {

        const product =
            PRODUCTS.find(p => p.id === item.id);

        if (!product) return "";

        return `
            <div class="cart-item">

                <img
                    src="${product.image}"
                    alt="${escapeHtml(product.title)}">

                <div>

                    <h4>
                        ${escapeHtml(product.title)}
                    </h4>

                    <div class="cart-item-price">
                        ${money(product.price)}
                    </div>

                    <div class="qty">

                        <button
                            data-minus="${product.id}"
                            aria-label="Decrease quantity">
                            −
                        </button>

                        <span>
                            ${item.quantity}
                        </span>

                        <button
                            data-plus="${product.id}"
                            aria-label="Increase quantity">
                            +
                        </button>

                    </div>

                </div>

                <button
                    class="remove-item"
                    data-remove="${product.id}"
                    aria-label="Remove product">
                    <i class="fas fa-trash-can"></i>
                </button>

            </div>
        `;

    }).join("");


    cartItems
        .querySelectorAll("[data-minus]")
        .forEach(button => {

            button.addEventListener("click", () => {

                changeQuantity(
                    Number(button.dataset.minus),
                    -1
                );

            });

        });


    cartItems
        .querySelectorAll("[data-plus]")
        .forEach(button => {

            button.addEventListener("click", () => {

                changeQuantity(
                    Number(button.dataset.plus),
                    1
                );

            });

        });


    cartItems
        .querySelectorAll("[data-remove]")
        .forEach(button => {

            button.addEventListener("click", () => {

                removeFromCart(
                    Number(button.dataset.remove)
                );

                showToast("Item removed from cart");

            });

        });

}


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(id) {

    if (wishlist.includes(id)) {

        wishlist =
            wishlist.filter(item => item !== id);

        showToast("Removed from wishlist");

    } else {

        wishlist.push(id);

        showToast("Added to wishlist");

    }

    saveState();

    wishlistCount.textContent =
        wishlist.length;

    renderProducts();

}


/* =========================================================
   CART DRAWER
========================================================= */

function openCart() {

    cartDrawer.classList.add("show");
    overlay.classList.add("show");

    document.body.classList.add("no-scroll");

}

function closeCart() {

    cartDrawer.classList.remove("show");
    overlay.classList.remove("show");

    document.body.classList.remove("no-scroll");

}

document
    .getElementById("cartButton")
    .addEventListener("click", openCart);

document
    .getElementById("mobileCart")
    .addEventListener("click", openCart);

document
    .getElementById("closeCart")
    .addEventListener("click", closeCart);

overlay.addEventListener("click", closeCart);

document.addEventListener("keydown", event => {

    if (event.key === "Escape") {
        closeCart();
    }

});


/* =========================================================
   SEARCH
========================================================= */

function performSearch() {

    searchQuery =
        searchInput.value.trim();

    renderProducts();

    document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

}

document
    .getElementById("searchButton")
    .addEventListener("click", performSearch);

searchInput.addEventListener(
    "keydown",
    event => {

        if (event.key === "Enter") {
            performSearch();
        }

    }
);


/* =========================================================
   SORT
========================================================= */

sortSelect.addEventListener("change", event => {

    sortMode = event.target.value;

    renderProducts();

});


/* =========================================================
   HERO
========================================================= */

document
    .getElementById("shopNow")
    .addEventListener("click", () => {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


document
    .getElementById("heroDeals")
    .addEventListener("click", () => {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


/* =========================================================
   FLASH DEAL
========================================================= */

const dealProduct = {
    id: 99,
    title: "MacBook Air M2",
    category: "Laptops",
    price: 999,
    image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85"
};

document
    .getElementById("dealAdd")
    .addEventListener("click", () => {

        const existing =
            cart.find(item => item.id === dealProduct.id);

        if (existing) {
            existing.quantity++;
        } else {
            cart.push({
                id: dealProduct.id,
                quantity: 1
            });
        }

        /*
         * Add temporary deal product to product lookup
         * so the cart can render it.
         */
        if (!PRODUCTS.some(p => p.id === 99)) {
            PRODUCTS.push(dealProduct);
        }

        saveState();
        updateCartUI();

        showToast("MacBook Air deal added to cart");

    });


/* =========================================================
   COUNTDOWN
========================================================= */

const dealTarget =
    Date.now() + (26 * 60 * 60 * 1000);

function updateCountdown() {

    const difference =
        Math.max(0, dealTarget - Date.now());

    const days =
        Math.floor(
            difference / 86400000
        );

    const hours =
        Math.floor(
            (difference % 86400000) / 3600000
        );

    const minutes =
        Math.floor(
            (difference % 3600000) / 60000
        );

    const seconds =
        Math.floor(
            (difference % 60000) / 1000
        );

    document.getElementById("days").textContent =
        String(days).padStart(2,"0");

    document.getElementById("hours").textContent =
        String(hours).padStart(2,"0");

    document.getElementById("minutes").textContent =
        String(minutes).padStart(2,"0");

    document.getElementById("seconds").textContent =
        String(seconds).padStart(2,"0");

}

updateCountdown();
setInterval(updateCountdown,1000);


/* =========================================================
   REVIEWS
========================================================= */

function renderReviews() {

    document.getElementById("reviewsList").innerHTML =
        REVIEWS.map(review => `

            <article class="review">

                <div class="review-stars">
                    ${"★".repeat(review.rating)}
                </div>

                <blockquote>
                    “${escapeHtml(review.text)}”
                </blockquote>

                <div class="reviewer">

                    <img
                        src="${review.image}"
                        alt="${escapeHtml(review.name)}">

                    <div>

                        <strong>
                            ${escapeHtml(review.name)}
                        </strong>

                        <span>
                            ${escapeHtml(review.role)}
                        </span>

                    </div>

                </div>

            </article>

        `).join("");

}


/* =========================================================
   NEWSLETTER
========================================================= */

document
    .getElementById("newsletterForm")
    .addEventListener("submit", event => {

        event.preventDefault();

        const email =
            document.getElementById("emailInput").value.trim();

        if (!email) return;

        showToast("You're subscribed! 🎉");

        event.target.reset();

    });


/* =========================================================
   CHECKOUT
========================================================= */

document
    .getElementById("checkoutButton")
    .addEventListener("click", () => {

        if (!cart.length) {

            showToast("Your cart is empty");

            return;
        }

        showToast(
            "Checkout is ready for integration"
        );

    });


/* =========================================================
   MOBILE MENU
========================================================= */

document
    .getElementById("mobileMenuBtn")
    .addEventListener("click", () => {

        document
            .getElementById("categories")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


/* =========================================================
   MOBILE NAV
========================================================= */

document
    .querySelectorAll(".mobile-bottom-nav button[data-scroll]")
    .forEach(button => {

        button.addEventListener("click", () => {

            const target =
                button.dataset.scroll;

            if (target === "top") {

                window.scrollTo({
                    top: 0,
                    behavior: "smooth"
                });

                return;
            }

            document
                .getElementById(target)
                ?.scrollIntoView({
                    behavior: "smooth"
                });

        });

    });


/* =========================================================
   WISHLIST BUTTON
========================================================= */

document
    .getElementById("wishlistButton")
    .addEventListener("click", () => {

        if (!wishlist.length) {

            showToast("Your wishlist is empty");

            return;

        }

        activeCategory = "all";
        searchQuery = "";

        searchInput.value = "";

        renderFilters();

        /*
         * Show wishlist products by filtering
         * the normal product grid.
         */
        const wishlistProducts =
            PRODUCTS.filter(product =>
                wishlist.includes(product.id)
            );

        productsGrid.innerHTML =
            wishlistProducts.length
            ? wishlistProducts.map(product => {

                const stars =
                    "★".repeat(product.rating) +
                    "☆".repeat(5-product.rating);

                return `
                    <article class="product">

                        <div class="product-image">

                            <img
                                src="${product.image}"
                                alt="${escapeHtml(product.title)}">

                        </div>

                        <div class="product-info">

                            <div class="product-category">
                                ${escapeHtml(product.category)}
                            </div>

                            <h3 class="product-title">
                                ${escapeHtml(product.title)}
                            </h3>

                            <div class="rating">
                                ${stars}
                            </div>

                            <div class="price">
                                <span class="price-current">
                                    ${money(product.price)}
                                </span>
                            </div>

                        </div>

                        <div class="product-footer">

                            <button
                                class="add-cart"
                                data-cart="${product.id}">
                                <i class="fas fa-plus"></i>
                                Add to cart
                            </button>

                        </div>

                    </article>
                `;

            }).join("")
            : `
                <div class="empty-state">
                    <div class="empty-icon">
                        <i class="far fa-heart"></i>
                    </div>
                    <h3>Your wishlist is empty</h3>
                    <p>Tap the heart on products you want to save.</p>
                </div>
            `;

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

        bindProductEvents();

    });


/* =========================================================
   YEAR
========================================================= */

document.getElementById("year").textContent =
    new Date().getFullYear();


/* =========================================================
   INITIALIZE
========================================================= */

renderCategories();
renderFilters();
renderProducts();
renderReviews();
updateCartUI();

wishlistCount.textContent =
    wishlist.length;

</script>

</body>
</html>
