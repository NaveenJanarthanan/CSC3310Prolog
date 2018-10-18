/* Prolog Assignment
Naveen Janarthanan*/
/*checks if X1 is equal to X2, if it is the line is vertical */
vertical(point2d(X1,Y1), point2d(X2,Y2)) :-
    (X1 =:= X2).
/*check if Y1 is equal to Y2, if it is the line is horizontal */
horizontal(point2d(X1,Y1), point2d(X2,Y2)) :-
    (Y1 =:= Y2).
/*checks for a line
The line is found by this formula (y3-y1)/(x3-x1) - (y2-y1)/(x2-x1)
It is implement in prolog below*/
line(point2d(X1,Y1), point2d(X2,Y2), point2d(X3,Y3)) :-
    ((Y3-Y1)/(X3-X1))=:=((Y2-Y1)/(X2-X1)).
/*check for a triangle
the equation for a triangle is (x2-x1)*(y3-y1)-(y2-y1)*(x3-x1)
this equation was found online and it is implemented in prolog below*/
triangle(point2d(X1,Y1), point2d(X2,Y2), point2d(X3,Y3)) :-
    (X2 - X1)*(Y3-Y1) - (Y2-Y1)*(X3-X1) =\= 0.

/*checks if the triangle is isosceles
This check is done by checking two sides and seeing if they are equal
if they are then it is an isosceles triangle*/
isosceles(point2d(X1,Y1), point2d(X2,Y2), point2d(X3,Y3)) :-
    sqrt(((X1-X2)**2) + (Y1-Y2)**2) =:=  sqrt(((X1-X3)**2) + (Y1-Y3)**2);
    sqrt(((X2-X3)**2) + (Y2-Y3)**2) =:= sqrt(((X1-X2)**2) + (Y1-Y2)**2);
    sqrt(((X2-X3)**2) + (Y2-Y3)**2) =:=  sqrt(((X1-X3)**2) + (Y1-Y3)**2).
/*equilateral triangle
this check is done by checking all the sides to see if they are equal to each other
if they are it is an equilateral triangle*/
equilateral(point2d(X1,Y1), point2d(X2,Y2), point2d(X3,Y3)) :-
    sqrt(((X1-X2)**2) + (Y1-Y2)**2) =:=  sqrt(((X1-X3)**2) + (Y1-Y3)**2),
    sqrt(((X2-X3)**2) + (Y2-Y3)**2) =:= sqrt(((X1-X2)**2) + (Y1-Y2)**2),
    sqrt(((X2-X3)**2) + (Y2-Y3)**2) =:=  sqrt(((X1-X3)**2) + (Y1-Y3)**2).
/*checks for right triangle
If side A is > side B and side C and B^2 + C^2 = a^2 then it is a right triangle
this is repeated with all the sides and if one turns out turn then it is a right triangle*/
right(point2d(X1,Y1), point2d(X2,Y2), point2d(X3,Y3)) :-
    (sqrt(((X1-X2)**2) + (Y1-Y2)**2)) + (sqrt(((X1-X3)**2) + (Y1-Y3)**2)) =:= (sqrt(((X2-X3)**2) + (Y2-Y3)**2));
    (sqrt(((X1-X2)**2) + (Y1-Y2)**2)) + (sqrt(((X2-X3)**2) + (Y2-Y3)**2)) =:= (sqrt(((X1-X3)**2) + (Y1-Y3)**2));
    (sqrt(((X2-X3)**2) + (Y2-Y3)**2)) + (sqrt(((X1-X3)**2) + (Y1-Y3)**2)) =:= (sqrt(((X1-X2)**2) + (Y1-Y2)**2)).


/*checks for acute triangle
the check is done in the same as the right triangle except A^2 + B^2 > C^2*/
acute(point2d(X1,Y1), point2d(X2,Y2), point2d(X3,Y3)) :-
    (sqrt(((X1-X2)**2) + (Y1-Y2)**2)) + (sqrt(((X1-X3)**2) + (Y1-Y3)**2)) > (sqrt(((X2-X3)**2) + (Y2-Y3)**2));
    (sqrt(((X1-X2)**2) + (Y1-Y2)**2)) + (sqrt(((X2-X3)**2) + (Y2-Y3)**2)) > (sqrt(((X1-X3)**2) + (Y1-Y3)**2));
    (sqrt(((X2-X3)**2) + (Y2-Y3)**2)) + (sqrt(((X1-X3)**2) + (Y1-Y3)**2)) > (sqrt(((X1-X2)**2) + (Y1-Y2)**2)).

  /*checks for obtuse triangle
  the check is done in the same as the right triangle except A^2 + B^2 < C^2*/
obtuse(point2d(X1,Y1), point2d(X2,Y2), point2d(X3,Y3)) :-
    (sqrt(((X1-X2)**2) + (Y1-Y2)**2)) + (sqrt(((X1-X3)**2) + (Y1-Y3)**2)) < (sqrt(((X2-X3)**2) + (Y2-Y3)**2));
    (sqrt(((X1-X2)**2) + (Y1-Y2)**2)) + (sqrt(((X2-X3)**2) + (Y2-Y3)**2)) < (sqrt(((X1-X3)**2) + (Y1-Y3)**2));
    (sqrt(((X2-X3)**2) + (Y2-Y3)**2)) + (sqrt(((X1-X3)**2) + (Y1-Y3)**2)) < (sqrt(((X1-X2)**2) + (Y1-Y2)**2)).
/*scalene triangle
checks that none of the sides are equal to each other*/
scalene(point2d(X1,Y1), point2d(X2,Y2), point2d(X3,Y3)) :-
    sqrt(((X1-X2)**2) + (Y1-Y2)**2) =\=  sqrt(((X1-X3)**2) + (Y1-Y3)**2),
    sqrt(((X2-X3)**2) + (Y2-Y3)**2) =\= sqrt(((X1-X2)**2) + (Y1-Y2)**2),
    sqrt(((X2-X3)**2) + (Y2-Y3)**2) =\=  sqrt(((X1-X3)**2) + (Y1-Y3)**2).
