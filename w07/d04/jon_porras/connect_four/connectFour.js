$(function() {
  console.log('Loaded, bro');
  startGame();

  $('.piece').click(pieceClick);
  $('#restart').click(restartGame);
});

function startGame() {
  var gamePieces = $('.piece');
  // gamePieces.mouseenter(function(){
  //   $(this).addClass('hover')
  // });
  // gamePieces.mouseleave(function(){
  //   $(this).removeClass('hover')
  // });
}

var num = 0;
var pieceClick = function() {
  piece = $(this);
  if(piece.hasClass('red') || piece.hasClass('black')){
        ;
      } else {
        if(num === 0){

          //array of id
          var pieceIds = [];
          var currentColumn = piece.parent().attr('id');
            $("#" + currentColumn + ' .piece').each(function(){

              //piece not already filled
              if($(this).hasClass('red') || $(this).hasClass('black')){
                ;
              }else{

            pieceIds.push(parseInt(this.id));
          }
        });
          console.log(pieceIds);
          //find max id
          var highestId = Math.max.apply(null, pieceIds);

          //assign class red to piece with that id
          $('#' + highestId).addClass('red');

          num = 1;
        } else {

          //array of id
          var pieceIds = [];
          var currentColumn = piece.parent().attr('id');
            $("#" + currentColumn + ' .piece').each(function(){

              //piece not already filled
              if($(this).hasClass('black') || $(this).hasClass('red')){
                ;
              }else{

            pieceIds.push(parseInt(this.id));
          }
        });
          //console.log(pieceIds);
          //find max id
          var highestId = Math.max.apply(null, pieceIds);

          //assign class black to piece with that id
          $('#' + highestId).addClass('black');

          num = 0;
        }
      }

      //array of red pieces
      redArray=[];
      $('.column .piece').each(function() {
        if($(this).hasClass('red')){
          redArray.push(parseInt(this.id));
      //creating winning array
        redArray.sort();

        }
      })

      winningRedArray = [];
      for(var i=0;i<redArray.length;i++){
        var valCheck = redArray[1]-redArray[0];
        if(redArray[i]+valCheck===redArray[i+1]){
          winningRedArray.push(redArray[i])
        } else {
          ;
        }
      }

      if(winningRedArray.length==3){
        alert('Red Wins.')
      }

      //array of black pieces
      blackArray=[];
      $('.column .piece').each(function() {
        if($(this).hasClass('black')){
          blackArray.push(parseInt(this.id));
        }
      })
      //console.log(blackArray);
      // console.log(redArray);
      console.log(winningRedArray);

}

var restartGame = function() {
  $('.column .piece').attr('class', 'piece');
  location.reload();
}
