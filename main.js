// const chart = document.querySelector("#chart").getContext('2d');
// // var chart = document.getElementById('linechart').getContext('2d');

// // create a new chart
// new chart(chart, {
//     type: 'line',
//     data: {
//         labels: [Senin, Selasa, Rabu, Kamis, Jumat, Sabtu],
        
//         datasets: [
//             {
//                 label: 'pH Air',
//                 data: [7.5, 7.7, 8.0, 7.8, 7.9, 8.1],
//                 borderColor: 'blue',
//                 borderWidth:2
//             },
//             {
//                 label: 'TDS Air',
//                 data: [1200, 1300, 1400, 1500, 1600, 1700],
//                 borderColor: 'blue',
//                 borderWidth:2
//             },
//             {
//                 label: 'SUHU Air',
//                 data: [28, 29, 28, 27, 26, 25],
//                 borderColor: 'yellow',
//                 borderWidth:2
//             },
//             {
//                 label: 'DEBIT Air',
//                 data: [2000, 2100, 2200, 2300, 2400, 2500],
//                 borderColor: 'purple',
//                 borderWidth:2
//             },
//             {
//                 label: 'VOLUME Air',
//                 data: [4000, 4100, 4200, 4300, 4400, 4500],
//                 borderColor: 'gray',
//                 borderWidth:2
//             }
//         ]
//     },
//     options: {
//         resposnsive: true
//     }
// })

// const labels = [
//     'Senin',
//     'Selasa',
//     'Rabu',
//     'Kamis',
//     'Jumat',
//     'Sabtu',
// ];

// const data = {
//     labels : labels,
//     datasets: [
//         {
//         label : 'pH AIR',
//         data: [7.5, 7.7, 8.0, 7.8, 7.9, 8.1],
//         borderColor: 'blue',
//         borderWidth:2,
//     },
//     {
//         label : 'TDS AIR',
//         data: [300, 450, 400, 380, 330, 310],
//         borderColor: 'green',
//         borderWidth:2,
//     },
//     {
//         label : 'SUHU AIR',
//         data: [28,29,27,25,24,40],
//         borderColor: 'orange',
//         borderWidth:2,
//     },
//     {
//         label : 'KEKERUHAN AIR',
//         data: [1000, 1100, 1050, 900, 950, 1000],
//         borderColor: 'gray',
//         borderWidth:2,
//     },
// ],
// };

// const config = {
//     type : 'line',
//     data : data,
//     options : {
//         responsive : true
//     }
// };

// var myChart = new Chart(
//     document.getElementById('myChart'),
//     config
// );



// theme
const themeBtn = document.querySelector('.theme-btn');

themeBtn.addEventListener('click', () => {
    document.body.classList.toggle('dark-theme');

    themeBtn.querySelector('span:first-child').classList.toggle('active');
    themeBtn.querySelector('span:last-child').classList.toggle('active');
})

// SHOW HIDDEN SIDEBAR
const menuBtn = document.querySelector('#menu-btn');
const closeBtn = document.querySelector('#close-btn');
const sidebar = document.querySelector('aside');

menuBtn.addEventListener('click', () =>{
    sidebar.style.display = 'block';
})

closeBtn.addEventListener('click', () =>{
    sidebar.style.display = 'none';
})
