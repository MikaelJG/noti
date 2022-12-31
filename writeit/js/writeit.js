const languages = ["js", "rb", "bash", "sh", "html", "rs", "ts", "css"];

let args = process.argv.slice(2);

//function ifInLanguages(args) {
//    args.forEach((arg) => {
//        if (languages.includes(arg)) {
//            console.log(`in include, and ${arg} is in too`);
//        }
//    });
//};

//ifInLanguages(args);

if (args.length === 1 && languages.includes(args[0])) {
    console.log(`args length is 1`);

    const arg = args[0];
    const manual = `${arg}man`;
    console.log(manual);
    const dir = `~/code/myman/${manual}`
    console.log(dir);

    var fs = require('fs');
    var files = fs.readdir(dir, (event) => {
        console.log(event);
    });

} else {
    console.log(`args length is more than 3`);
}
