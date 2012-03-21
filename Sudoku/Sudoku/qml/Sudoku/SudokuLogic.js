var counter=0
var SudokuUserInput = new Array(9);
SudokuUserInput[0] = new Array(9);
SudokuUserInput[1] = new Array(9);
SudokuUserInput[2] = new Array(9);
SudokuUserInput[3] = new Array(9);
SudokuUserInput[4] = new Array(9);
SudokuUserInput[5] = new Array(9);
SudokuUserInput[6] = new Array(9);
SudokuUserInput[7] = new Array(9);
SudokuUserInput[8] = new Array(9);

var SudokuSolution = new Array(9);
SudokuSolution[0]=new Array(9);
SudokuSolution[1]=new Array(9);
SudokuSolution[2]=new Array(9);
SudokuSolution[3]=new Array(9);
SudokuSolution[4]=new Array(9);
SudokuSolution[5]=new Array(9);
SudokuSolution[6]=new Array(9);
SudokuSolution[7]=new Array(9);
SudokuSolution[8]=new Array(9);

var i,j;
var flag=0;

function EasyVerify()
{
        flag=0;

    //first row
       SudokuUserInput[0][0]=text11.text;
       SudokuUserInput[0][1]=text12.text;
       SudokuUserInput[0][2]=text13.text;
       SudokuUserInput[0][3]=text14.text;
       SudokuUserInput[0][4]=text15.text;
       SudokuUserInput[0][5]=text16.text;
       SudokuUserInput[0][6]=text17.text;
       SudokuUserInput[0][7]=text18.text;
       SudokuUserInput[0][8]=text19.text;

        //second row
       SudokuUserInput[1][0]=text21.text;
       SudokuUserInput[1][1]=text22.text;
       SudokuUserInput[1][2]=text23.text;
       SudokuUserInput[1][3]=text24.text;
       SudokuUserInput[1][4]=text25.text;
       SudokuUserInput[1][5]=text26.text;
       SudokuUserInput[1][6]=text27.text;
       SudokuUserInput[1][7]=text28.text;
       SudokuUserInput[1][8]=text29.text;

        //third row
       SudokuUserInput[2][0]=text31.text;
       SudokuUserInput[2][1]=text32.text;
       SudokuUserInput[2][2]=text33.text;
       SudokuUserInput[2][3]=text34.text;
       SudokuUserInput[2][4]=text35.text;
       SudokuUserInput[2][5]=text36.text;
       SudokuUserInput[2][6]=text37.text;
       SudokuUserInput[2][7]=text38.text;
       SudokuUserInput[2][8]=text39.text;

    //fourth row
       SudokuUserInput[3][0]=text41.text;
       SudokuUserInput[3][1]=text42.text;
       SudokuUserInput[3][2]=text43.text;
       SudokuUserInput[3][3]=text44.text;
       SudokuUserInput[3][4]=text45.text;
       SudokuUserInput[3][5]=text46.text;
       SudokuUserInput[3][6]=text47.text;
       SudokuUserInput[3][7]=text48.text;
       SudokuUserInput[3][8]=text49.text;

        //fifth row
       SudokuUserInput[4][0]=text51.text;
       SudokuUserInput[4][1]=text52.text;
       SudokuUserInput[4][2]=text53.text;
       SudokuUserInput[4][3]=text54.text;
       SudokuUserInput[4][4]=text55.text;
       SudokuUserInput[4][5]=text56.text;
       SudokuUserInput[4][6]=text57.text;
       SudokuUserInput[4][7]=text58.text;
       SudokuUserInput[4][8]=text59.text;

        //sixth row
       SudokuUserInput[5][0]=text61.text;
       SudokuUserInput[5][1]=text62.text;
       SudokuUserInput[5][2]=text63.text;
       SudokuUserInput[5][3]=text64.text;
       SudokuUserInput[5][4]=text65.text;
       SudokuUserInput[5][5]=text66.text;
       SudokuUserInput[5][6]=text67.text;
       SudokuUserInput[5][7]=text68.text;
       SudokuUserInput[5][8]=text69.text;

        //seventh row
       SudokuUserInput[6][0]=text71.text;
       SudokuUserInput[6][1]=text72.text;
       SudokuUserInput[6][2]=text73.text;
       SudokuUserInput[6][3]=text74.text;
       SudokuUserInput[6][4]=text75.text;
       SudokuUserInput[6][5]=text76.text;
       SudokuUserInput[6][6]=text77.text;
       SudokuUserInput[6][7]=text78.text;
       SudokuUserInput[6][8]=text79.text;

        //eigth row
       SudokuUserInput[7][0]=text81.text;
       SudokuUserInput[7][1]=text82.text;
       SudokuUserInput[7][2]=text83.text;
       SudokuUserInput[7][3]=text84.text;
       SudokuUserInput[7][4]=text85.text;
       SudokuUserInput[7][5]=text86.text;
       SudokuUserInput[7][6]=text87.text;
       SudokuUserInput[7][7]=text88.text;
       SudokuUserInput[7][8]=text89.text;

        //ninth row
       SudokuUserInput[8][0]=text91.text;
       SudokuUserInput[8][1]=text92.text;
       SudokuUserInput[8][2]=text93.text;
       SudokuUserInput[8][3]=text94.text;
       SudokuUserInput[8][4]=text95.text;
       SudokuUserInput[8][5]=text96.text;
       SudokuUserInput[8][6]=text97.text;
       SudokuUserInput[8][7]=text98.text;
       SudokuUserInput[8][8]=text99.text;


    //first row
        SudokuSolution[0][0]=7;
        SudokuSolution[0][1]=9;
        SudokuSolution[0][2]=4;
        SudokuSolution[0][3]=1;
        SudokuSolution[0][4]=3;
        SudokuSolution[0][5]=5;
        SudokuSolution[0][6]=8;
        SudokuSolution[0][7]=2;
        SudokuSolution[0][8]=6;

    //second row
        SudokuSolution[1][0]=2;
        SudokuSolution[1][1]=5;
        SudokuSolution[1][2]=6;
        SudokuSolution[1][3]=8;
        SudokuSolution[1][4]=9;
        SudokuSolution[1][5]=4;
        SudokuSolution[1][6]=3;
        SudokuSolution[1][7]=1;
        SudokuSolution[1][8]=7;

    //third row
        SudokuSolution[2][0]=1;
        SudokuSolution[2][1]=8;
        SudokuSolution[2][2]=3;
        SudokuSolution[2][3]=7;
        SudokuSolution[2][4]=2;
        SudokuSolution[2][5]=6;
        SudokuSolution[2][6]=5;
        SudokuSolution[2][7]=9;
        SudokuSolution[2][8]=4;

    //fourth row
        SudokuSolution[3][0]=8;
        SudokuSolution[3][1]=2;
        SudokuSolution[3][2]=1;
        SudokuSolution[3][3]=9;
        SudokuSolution[3][4]=4;
        SudokuSolution[3][5]=7;
        SudokuSolution[3][6]=6;
        SudokuSolution[3][7]=3;
        SudokuSolution[3][8]=5;

    //fifth row
        SudokuSolution[4][0]=3;
        SudokuSolution[4][1]=4;
        SudokuSolution[4][2]=9;
        SudokuSolution[4][3]=6;
        SudokuSolution[4][4]=5;
        SudokuSolution[4][5]=2;
        SudokuSolution[4][6]=7;
        SudokuSolution[4][7]=8;
        SudokuSolution[4][8]=1;

    //sixth row
        SudokuSolution[5][0]=6;
        SudokuSolution[5][1]=7;
        SudokuSolution[5][2]=5;
        SudokuSolution[5][3]=3;
        SudokuSolution[5][4]=1;
        SudokuSolution[5][5]=8;
        SudokuSolution[5][6]=2;
        SudokuSolution[5][7]=4;
        SudokuSolution[5][8]=9;

    //seventh row
        SudokuSolution[6][0]=4;
        SudokuSolution[6][1]=6;
        SudokuSolution[6][2]=2;
        SudokuSolution[6][3]=5;
        SudokuSolution[6][4]=8;
        SudokuSolution[6][5]=9;
        SudokuSolution[6][6]=1;
        SudokuSolution[6][7]=7;
        SudokuSolution[6][8]=3;

    //eigth row
        SudokuSolution[7][0]=5;
        SudokuSolution[7][1]=3;
        SudokuSolution[7][2]=8;
        SudokuSolution[7][3]=4;
        SudokuSolution[7][4]=7;
        SudokuSolution[7][5]=1;
        SudokuSolution[7][6]=9;
        SudokuSolution[7][7]=6;
        SudokuSolution[7][8]=2;

    //ninth row
        SudokuSolution[8][0]=9;
        SudokuSolution[8][1]=1;
        SudokuSolution[8][2]=7;
        SudokuSolution[8][3]=2;
        SudokuSolution[8][4]=6;
        SudokuSolution[8][5]=3;
        SudokuSolution[8][6]=4;
        SudokuSolution[8][7]=5;
        SudokuSolution[8][8]=8;

    for(i=0;i<9;i++)
        for(j=0;j<9;j++)
            if(SudokuUserInput[i][j]!=SudokuSolution[i][j])
            {
                flag=1;
                //console.log("a[" + i + "][" + j + "] = "+SudokuUserInput[i][j]+ "  " + SudokuSolution[i][j]);
            }

        if(flag==1)
        {
            console.log("incorrect");
        }
        else
        {
            console.log("correct");
        }

}

function IntermediateVerify()
{
        flag=0;

    //first row
       SudokuUserInput[0][0]=text11.text;
       SudokuUserInput[0][1]=text12.text;
       SudokuUserInput[0][2]=text13.text;
       SudokuUserInput[0][3]=text14.text;
       SudokuUserInput[0][4]=text15.text;
       SudokuUserInput[0][5]=text16.text;
       SudokuUserInput[0][6]=text17.text;
       SudokuUserInput[0][7]=text18.text;
       SudokuUserInput[0][8]=text19.text;

        //second row
       SudokuUserInput[1][0]=text21.text;
       SudokuUserInput[1][1]=text22.text;
       SudokuUserInput[1][2]=text23.text;
       SudokuUserInput[1][3]=text24.text;
       SudokuUserInput[1][4]=text25.text;
       SudokuUserInput[1][5]=text26.text;
       SudokuUserInput[1][6]=text27.text;
       SudokuUserInput[1][7]=text28.text;
       SudokuUserInput[1][8]=text29.text;

        //third row
       SudokuUserInput[2][0]=text31.text;
       SudokuUserInput[2][1]=text32.text;
       SudokuUserInput[2][2]=text33.text;
       SudokuUserInput[2][3]=text34.text;
       SudokuUserInput[2][4]=text35.text;
       SudokuUserInput[2][5]=text36.text;
       SudokuUserInput[2][6]=text37.text;
       SudokuUserInput[2][7]=text38.text;
       SudokuUserInput[2][8]=text39.text;

    //fourth row
       SudokuUserInput[3][0]=text41.text;
       SudokuUserInput[3][1]=text42.text;
       SudokuUserInput[3][2]=text43.text;
       SudokuUserInput[3][3]=text44.text;
       SudokuUserInput[3][4]=text45.text;
       SudokuUserInput[3][5]=text46.text;
       SudokuUserInput[3][6]=text47.text;
       SudokuUserInput[3][7]=text48.text;
       SudokuUserInput[3][8]=text49.text;

        //fifth row
       SudokuUserInput[4][0]=text51.text;
       SudokuUserInput[4][1]=text52.text;
       SudokuUserInput[4][2]=text53.text;
       SudokuUserInput[4][3]=text54.text;
       SudokuUserInput[4][4]=text55.text;
       SudokuUserInput[4][5]=text56.text;
       SudokuUserInput[4][6]=text57.text;
       SudokuUserInput[4][7]=text58.text;
       SudokuUserInput[4][8]=text59.text;

        //sixth row
       SudokuUserInput[5][0]=text61.text;
       SudokuUserInput[5][1]=text62.text;
       SudokuUserInput[5][2]=text63.text;
       SudokuUserInput[5][3]=text64.text;
       SudokuUserInput[5][4]=text65.text;
       SudokuUserInput[5][5]=text66.text;
       SudokuUserInput[5][6]=text67.text;
       SudokuUserInput[5][7]=text68.text;
       SudokuUserInput[5][8]=text69.text;

        //seventh row
       SudokuUserInput[6][0]=text71.text;
       SudokuUserInput[6][1]=text72.text;
       SudokuUserInput[6][2]=text73.text;
       SudokuUserInput[6][3]=text74.text;
       SudokuUserInput[6][4]=text75.text;
       SudokuUserInput[6][5]=text76.text;
       SudokuUserInput[6][6]=text77.text;
       SudokuUserInput[6][7]=text78.text;
       SudokuUserInput[6][8]=text79.text;

        //eigth row
       SudokuUserInput[7][0]=text81.text;
       SudokuUserInput[7][1]=text82.text;
       SudokuUserInput[7][2]=text83.text;
       SudokuUserInput[7][3]=text84.text;
       SudokuUserInput[7][4]=text85.text;
       SudokuUserInput[7][5]=text86.text;
       SudokuUserInput[7][6]=text87.text;
       SudokuUserInput[7][7]=text88.text;
       SudokuUserInput[7][8]=text89.text;

        //ninth row
       SudokuUserInput[8][0]=text91.text;
       SudokuUserInput[8][1]=text92.text;
       SudokuUserInput[8][2]=text93.text;
       SudokuUserInput[8][3]=text94.text;
       SudokuUserInput[8][4]=text95.text;
       SudokuUserInput[8][5]=text96.text;
       SudokuUserInput[8][6]=text97.text;
       SudokuUserInput[8][7]=text98.text;
       SudokuUserInput[8][8]=text99.text;


    //first row
        SudokuSolution[0][0]=4;
        SudokuSolution[0][1]=8;
        SudokuSolution[0][2]=2;
        SudokuSolution[0][3]=7;
        SudokuSolution[0][4]=9;
        SudokuSolution[0][5]=6;
        SudokuSolution[0][6]=3;
        SudokuSolution[0][7]=5;
        SudokuSolution[0][8]=1;

        //second row
        SudokuSolution[1][0]=7;
        SudokuSolution[1][1]=9;
        SudokuSolution[1][2]=6;
        SudokuSolution[1][3]=5;
        SudokuSolution[1][4]=1;
        SudokuSolution[1][5]=3;
        SudokuSolution[1][6]=4;
        SudokuSolution[1][7]=8;
        SudokuSolution[1][8]=2;

        //third row
        SudokuSolution[2][0]=1;
        SudokuSolution[2][1]=5;
        SudokuSolution[2][2]=3;
        SudokuSolution[2][3]=2;
        SudokuSolution[2][4]=8;
        SudokuSolution[2][5]=4;
        SudokuSolution[2][6]=6;
        SudokuSolution[2][7]=7;
        SudokuSolution[2][8]=9;

    //fourth row
        SudokuSolution[3][0]=6;
        SudokuSolution[3][1]=1;
        SudokuSolution[3][2]=9;
        SudokuSolution[3][3]=8;
        SudokuSolution[3][4]=2;
        SudokuSolution[3][5]=7;
        SudokuSolution[3][6]=5;
        SudokuSolution[3][7]=3;
        SudokuSolution[3][8]=4;

        //fifth row
        SudokuSolution[4][0]=2;
        SudokuSolution[4][1]=3;
        SudokuSolution[4][2]=5;
        SudokuSolution[4][3]=4;
        SudokuSolution[4][4]=6;
        SudokuSolution[4][5]=9;
        SudokuSolution[4][6]=7;
        SudokuSolution[4][7]=1;
        SudokuSolution[4][8]=8;

        //sixth row
        SudokuSolution[5][0]=8;
        SudokuSolution[5][1]=4;
        SudokuSolution[5][2]=7;
        SudokuSolution[5][3]=1;
        SudokuSolution[5][4]=3;
        SudokuSolution[5][5]=5;
        SudokuSolution[5][6]=2;
        SudokuSolution[5][7]=9;
        SudokuSolution[5][8]=6;

        //seventh row
        SudokuSolution[6][0]=5;
        SudokuSolution[6][1]=6;
        SudokuSolution[6][2]=8;
        SudokuSolution[6][3]=3;
        SudokuSolution[6][4]=4;
        SudokuSolution[6][5]=1;
        SudokuSolution[6][6]=9;
        SudokuSolution[6][7]=2;
        SudokuSolution[6][8]=7;

        //eigth row
        SudokuSolution[7][0]=3;
        SudokuSolution[7][1]=2;
        SudokuSolution[7][2]=4;
        SudokuSolution[7][3]=9;
        SudokuSolution[7][4]=7;
        SudokuSolution[7][5]=8;
        SudokuSolution[7][6]=1;
        SudokuSolution[7][7]=6;
        SudokuSolution[7][8]=5;

        //ninth row
        SudokuSolution[8][0]=9;
        SudokuSolution[8][1]=7;
        SudokuSolution[8][2]=1;
        SudokuSolution[8][3]=6;
        SudokuSolution[8][4]=5;
        SudokuSolution[8][5]=2;
        SudokuSolution[8][6]=8;
        SudokuSolution[8][7]=4;
        SudokuSolution[8][8]=3;

    for(i=0;i<9;i++)
        for(j=0;j<9;j++)
            if(SudokuUserInput[i][j]!=SudokuSolution[i][j])
            {
                flag=1;
               //console.log("a[" + i + "][" + j + "] = "+SudokuUserInput[i][j]+ "  " + SudokuSolution[i][j]);
            }

        if(flag==1)
        {
            console.log("incorrect now");
        }
        else
        {
            console.log("correct");
        }

}

function HardVerify()
{
        flag=0;

    //first row
       SudokuUserInput[0][0]=text11.text;
       SudokuUserInput[0][1]=text12.text;
       SudokuUserInput[0][2]=text13.text;
       SudokuUserInput[0][3]=text14.text;
       SudokuUserInput[0][4]=text15.text;
       SudokuUserInput[0][5]=text16.text;
       SudokuUserInput[0][6]=text17.text;
       SudokuUserInput[0][7]=text18.text;
       SudokuUserInput[0][8]=text19.text;

        //second row
       SudokuUserInput[1][0]=text21.text;
       SudokuUserInput[1][1]=text22.text;
       SudokuUserInput[1][2]=text23.text;
       SudokuUserInput[1][3]=text24.text;
       SudokuUserInput[1][4]=text25.text;
       SudokuUserInput[1][5]=text26.text;
       SudokuUserInput[1][6]=text27.text;
       SudokuUserInput[1][7]=text28.text;
       SudokuUserInput[1][8]=text29.text;

        //third row
       SudokuUserInput[2][0]=text31.text;
       SudokuUserInput[2][1]=text32.text;
       SudokuUserInput[2][2]=text33.text;
       SudokuUserInput[2][3]=text34.text;
       SudokuUserInput[2][4]=text35.text;
       SudokuUserInput[2][5]=text36.text;
       SudokuUserInput[2][6]=text37.text;
       SudokuUserInput[2][7]=text38.text;
       SudokuUserInput[2][8]=text39.text;

    //fourth row
       SudokuUserInput[3][0]=text41.text;
       SudokuUserInput[3][1]=text42.text;
       SudokuUserInput[3][2]=text43.text;
       SudokuUserInput[3][3]=text44.text;
       SudokuUserInput[3][4]=text45.text;
       SudokuUserInput[3][5]=text46.text;
       SudokuUserInput[3][6]=text47.text;
       SudokuUserInput[3][7]=text48.text;
       SudokuUserInput[3][8]=text49.text;

        //fifth row
       SudokuUserInput[4][0]=text51.text;
       SudokuUserInput[4][1]=text52.text;
       SudokuUserInput[4][2]=text53.text;
       SudokuUserInput[4][3]=text54.text;
       SudokuUserInput[4][4]=text55.text;
       SudokuUserInput[4][5]=text56.text;
       SudokuUserInput[4][6]=text57.text;
       SudokuUserInput[4][7]=text58.text;
       SudokuUserInput[4][8]=text59.text;

        //sixth row
       SudokuUserInput[5][0]=text61.text;
       SudokuUserInput[5][1]=text62.text;
       SudokuUserInput[5][2]=text63.text;
       SudokuUserInput[5][3]=text64.text;
       SudokuUserInput[5][4]=text65.text;
       SudokuUserInput[5][5]=text66.text;
       SudokuUserInput[5][6]=text67.text;
       SudokuUserInput[5][7]=text68.text;
       SudokuUserInput[5][8]=text69.text;

        //seventh row
       SudokuUserInput[6][0]=text71.text;
       SudokuUserInput[6][1]=text72.text;
       SudokuUserInput[6][2]=text73.text;
       SudokuUserInput[6][3]=text74.text;
       SudokuUserInput[6][4]=text75.text;
       SudokuUserInput[6][5]=text76.text;
       SudokuUserInput[6][6]=text77.text;
       SudokuUserInput[6][7]=text78.text;
       SudokuUserInput[6][8]=text79.text;

        //eigth row
       SudokuUserInput[7][0]=text81.text;
       SudokuUserInput[7][1]=text82.text;
       SudokuUserInput[7][2]=text83.text;
       SudokuUserInput[7][3]=text84.text;
       SudokuUserInput[7][4]=text85.text;
       SudokuUserInput[7][5]=text86.text;
       SudokuUserInput[7][6]=text87.text;
       SudokuUserInput[7][7]=text88.text;
       SudokuUserInput[7][8]=text89.text;

        //ninth row
       SudokuUserInput[8][0]=text91.text;
       SudokuUserInput[8][1]=text92.text;
       SudokuUserInput[8][2]=text93.text;
       SudokuUserInput[8][3]=text94.text;
       SudokuUserInput[8][4]=text95.text;
       SudokuUserInput[8][5]=text96.text;
       SudokuUserInput[8][6]=text97.text;
       SudokuUserInput[8][7]=text98.text;
       SudokuUserInput[8][8]=text99.text;


    //first row
        SudokuSolution[0][0]=9;
        SudokuSolution[0][1]=5;
        SudokuSolution[0][2]=6;
        SudokuSolution[0][3]=2;
        SudokuSolution[0][4]=4;
        SudokuSolution[0][5]=7;
        SudokuSolution[0][6]=3;
        SudokuSolution[0][7]=8;
        SudokuSolution[0][8]=1;

        //second row
        SudokuSolution[1][0]=7;
        SudokuSolution[1][1]=3;
        SudokuSolution[1][2]=4;
        SudokuSolution[1][3]=9;
        SudokuSolution[1][4]=1;
        SudokuSolution[1][5]=8;
        SudokuSolution[1][6]=2;
        SudokuSolution[1][7]=5;
        SudokuSolution[1][8]=6;

        //third row
        SudokuSolution[2][0]=2;
        SudokuSolution[2][1]=1;
        SudokuSolution[2][2]=8;
        SudokuSolution[2][3]=3;
        SudokuSolution[2][4]=6;
        SudokuSolution[2][5]=5;
        SudokuSolution[2][6]=7;
        SudokuSolution[2][7]=4;
        SudokuSolution[2][8]=9;

    //fourth row
        SudokuSolution[3][0]=3;
        SudokuSolution[3][1]=8;
        SudokuSolution[3][2]=2;
        SudokuSolution[3][3]=4;
        SudokuSolution[3][4]=9;
        SudokuSolution[3][5]=6;
        SudokuSolution[3][6]=1;
        SudokuSolution[3][7]=7;
        SudokuSolution[3][8]=5;

        //fifth row
        SudokuSolution[4][0]=5;
        SudokuSolution[4][1]=4;
        SudokuSolution[4][2]=7;
        SudokuSolution[4][3]=8;
        SudokuSolution[4][4]=2;
        SudokuSolution[4][5]=1;
        SudokuSolution[4][6]=9;
        SudokuSolution[4][7]=6;
        SudokuSolution[4][8]=3;

        //sixth row
        SudokuSolution[5][0]=6;
        SudokuSolution[5][1]=9;
        SudokuSolution[5][2]=1;
        SudokuSolution[5][3]=7;
        SudokuSolution[5][4]=5;
        SudokuSolution[5][5]=3;
        SudokuSolution[5][6]=4;
        SudokuSolution[5][7]=2;
        SudokuSolution[5][8]=8;

        //seventh row
        SudokuSolution[6][0]=4;
        SudokuSolution[6][1]=2;
        SudokuSolution[6][2]=3;
        SudokuSolution[6][3]=6;
        SudokuSolution[6][4]=8;
        SudokuSolution[6][5]=9;
        SudokuSolution[6][6]=5;
        SudokuSolution[6][7]=1;
        SudokuSolution[6][8]=7;

        //eigth row
        SudokuSolution[7][0]=8;
        SudokuSolution[7][1]=7;
        SudokuSolution[7][2]=5;
        SudokuSolution[7][3]=1;
        SudokuSolution[7][4]=3;
        SudokuSolution[7][5]=4;
        SudokuSolution[7][6]=6;
        SudokuSolution[7][7]=9;
        SudokuSolution[7][8]=2;

        //ninth row
        SudokuSolution[8][0]=1;
        SudokuSolution[8][1]=6;
        SudokuSolution[8][2]=9;
        SudokuSolution[8][3]=5;
        SudokuSolution[8][4]=7;
        SudokuSolution[8][5]=2;
        SudokuSolution[8][6]=8;
        SudokuSolution[8][7]=3;
        SudokuSolution[8][8]=4;

    for(i=0;i<9;i++)
        for(j=0;j<9;j++)
            if(SudokuUserInput[i][j]!=SudokuSolution[i][j])
            {
                flag=1;
               // console.log("a[" + i + "][" + j + "] = "+SudokuUserInput[i][j]+ "  " + SudokuSolution[i][j]);
            }

        if(flag==1)
        {
            console.log("incorrect");
        }
        else
        {
            console.log("correct");
        }

}
