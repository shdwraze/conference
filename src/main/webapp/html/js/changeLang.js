import {langArr} from './lang.js';
        // pick the element
        const select = document.querySelector('select');

        const allLang = ['en', 'ua'];     

        // registering listener
        select.addEventListener('change', changeURLLanguage);

        // add to URL mark hash
        function changeURLLanguage() {
            let lang = select.value;
            location.href = window.location.pathname + '#' + lang
            location.reload();
            
        }
        // take right hash for change lang
        function changeLanguage() {
            let hash = window.location.hash
            hash = hash.substr(1);
            if (!allLang.includes(hash)) {
                location.href = window.location.pathname + '#en'
                location.reload();
            }
            select.value = hash
            document.getElementById('word').innerHTML = langArr['text'][hash]

        }

        changeLanguage()
        console.log(langArr)

//         document.querySelectorAll('.lang button').forEach((b) => b.addEventListener('click', setLang));

// function setLang() {
//   for (let key in langArr.text) {
//     console.log(key)
//     let elem = document.getElementById('word' + key).textContent
//     console.log(elem)
//     if (elem) {
//       elem.textContent.innerHTML = langArr[key][this.value];
//     }
//   }
// }