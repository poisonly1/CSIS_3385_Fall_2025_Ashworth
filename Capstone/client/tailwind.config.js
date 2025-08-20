// tailwind.config.js
module.exports = {
    content: [
        './index.html',
        './src/**/*.{js,ts,jsx,tsx}',
    ],
    theme: {
        extend: {
            fontFamily: {
                butcherman: ['Butcherman', 'cursive'],
            },
            colors: {
                gold: '#FFD700',
                silver: '#C0C0C0',
                werewolf: '#000',
            },
        },
    },
    plugins: [],
}

