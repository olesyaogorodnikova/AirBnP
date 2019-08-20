import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Rent your Smartphone and earn money", "Find your dream Snartphone"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
