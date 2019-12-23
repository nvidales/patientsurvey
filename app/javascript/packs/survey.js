questions = ["1 of 5: Courtesy of staff who admitted you",
              "2 of 5: Room cleanliness",
            "3 of 5:  Noise level in and around your room",
            "4 of 5: Quality of food",
            "5 of 5: Friendliness/courtesy of nurses"];

questionsAnswered = 1;

answers = [];

$(document).ready(function(){
  $("#patientTable").DataTable();

})



$(".question h2").html(questions[0]);

$(".answers div").click(function(){
  //alert("clicked");
  if(this.id === "happy"){
    //alert("clicked happy!");
    answers.push(" Q"+questionsAnswered+":happy")
  }else if (this.id === "neutral"){
    //alert("clicked neutral!");
    answers.push(" Q"+questionsAnswered+":neutral")
  } else if(this.id === "unhappy"){
    //alert("clicked unhappy!");
    answers.push(" Q"+questionsAnswered+":unhappy")
  }
  console.log("answers: ");
  console.log(answers);
  if(questionsAnswered < questions.length){

    console.log(questions[questionsAnswered]);


    $(".question h2").html(questions[questionsAnswered]);
    questionsAnswered += 1;
  } else {
    //alert("survey finished");
    $(".question").toggle();
    $(".answers").toggle();
    $(".patient-info").css("display", "grid");
    $("#answers").attr("value", answers);
  }


})
