function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
      var x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }

//   mysteryScoping1();

  function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
      const x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  
//   mysteryScoping2();

  function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
      var x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  
//   mysteryScoping3();

  function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  
//   mysteryScoping4();

  function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
}

// mysteryScoping5();

function madLib(verb, adj, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`);
}

// madLib('make', 'best', 'guac');

function isSubstring(phrase, sub) {
    return phrase.includes(sub);
}

function fizzBuzz(array) {
    let fbArr = []
    array.forEach(el => {
        if ((el % 3 === 0) || (el % 5 === 0)) {
            fbArr.push(el);
        }
    });
    return fbArr;
}

function isPrime(num) {
    if (num < 2) { return false; }

    for (let i = 2; i < num; i++) {
        if (num % i === 0) {
            return false;
        }
    }
    return true;
}

function sumOfNPrimes(n) {
    let sum = 0
    let count = 0
    let i = 2

    while (count < n) {
        if (isPrime(i)) {
            sum += i;
            count++;
        }
        i++;
    }
    return sum;
}