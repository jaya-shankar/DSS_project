window.addEventListener('DOMContentLoaded', function() {

    sum_weights = function() {
        factors = document.getElementsByClassName('factor');
        var sum = 0;
        for (var i = 0; i < factors.length; i++) {
            sum += parseInt(factors[i].value);
        }
        return sum;
    };
    submit = document.getElementById('submit');
    submit.onclick = function() {
        factors = document.getElementsByClassName('factor');
        var sum=0;
        for (var i = 0; i < factors.length; i++) {
            sum+=parseInt(factors[i].value);
        }
        if (sum!=100) {
            alert("The sum of all weights must be 100");
            return false;
        }
        return false;
    };

    factors = document.getElementsByClassName('factor');
    for (var i = 0; i < factors.length; i++) {
        if (factors[i].value != "") {
            factors[i].onkeyup = function() {
                s = document.getElementById('sum');
                s.innerHTML = 100 - sum_weights(factors);
        };
    };
    }
    
});