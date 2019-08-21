import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Rent Smartphone and Earn Money", "Find your Dream Smartphone"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
