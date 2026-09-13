The following text contains some information about the data
base of order types for small point sets (n<=11). Please
refer to the related papers [1,2,3] for more detailed
background information.

On the web you can find the files and the latest information at
http://www.igi.TUGraz.at/oaich/triangulations/ordertypes.html
Note that because of space limitations on the web no order type
files for n=11 are available, and no result files for n>=10.

Data base queries can also be made via e-mail, see
http://www.igi.TUgraz.at/oaich/infoordertype.html for details.


The provided files contain all inequivalent point sets
(i.e. order types) for 3 to 10 points as well as additional
information computed from these sets. See below for details.

Usage of the data base is free for non-commercial, non-governmental
and non-military purposes (please e-mail us otherwise). In any case
we would like you to inform us about your investigations!


A) General Information

  1) Filenames follow the pattern namexx.yyy where xx is the number
     of points (03 to 10) and yyy is one of b08, b16 or b32: All
     files contain information as unsigned integer, either 8-bit
     (range 0..255, file extension .b08) or 16-bit (range 0..65535,
     file extension .b16, byte order: low-byte/high-byte) or 32-bit
     (range 0..2147483648, order lowest to highest byte, ext. .b32).

  2) Main files are otypes03.b08 to otypes08.b08, otypes09.b16 and
     otypes10.b16. They contain the coordinates of all inequivalent
     point sets (order types) for the given number n of points.

  3) For additional information about properties of the point sets,
     the same convention for file names is used. E.g. the numbers of
     extreme points are stored in extrem03.b08 to extrem10.b08.
     Other examples are trinum03.b08 to trinum08.b08, trinum09.b16
     and trinum10.b16 containing the number of triangulations for
     each set. More about additional files can be found in the
     file applications.txt.


B) Order Types

  1) All different order types are stored as sets of points in the
     Euclidean plane in general position, see C for properties
     of a particular set.

  2) There is exactly one point set for every order type, where for
     each reorientation pair of order types (this corresponds to
     reflection of the sets) only one representative is chosen,
     see C6. The number of sets is:

          n    number of sets
          3            1
          4            2
          5            3
          6           16
          7          135
          8        3 315
          9      158 817
         10   14 309 547

  3) For each fixed number n of points all sets are stored in one file
     where the coordinates of one set are stored in the form x_1, y_1,
     x_2, y_2, ... , x_n, y_n. There are no additional delimitators.

  4) The sets are lexicographically sorted in increasing order by
     their minimal lambda-matrix, see property C6.


C) Properties of a Point Set

  1) All point coordinates are unsigned integer. For n<=8 an 8-bit
     unsigned integer (i.e. one byte, range 0..255) and for n=9,10
     a 16-bit unsigned integer (two byte, order low-byte/high-byte,
     range 0..65535) is used. 

  2) Each point set is in general position, meaning that no three
     points lie on a common line. Moreover, the minimum distance
     between a line through two points and a third point is at
     least 1.0 (actually for most sets it will be much larger).

  3) No two points have the same x respective y coordinate. Thus e.g.
     sorting the points by one of their coordinates is easy
     and unique.

  4) There is a minimum Euclidean distance between two points of
     approx. 4.12 or in other words: d_x^2+d_y^2 > 16 (actually for
     most sets the distance will be much larger). Thus if O is
     a point in the integer grid, the *-shaped area in the following
     figure is empty of points (note that by the previous property
     there is also no point in the same row or column).

            *    
          *****  
         ******* 
         ******* 
        ****O****
         ******* 
         ******* 
          *****  
            *    

  5) There are no concyclic points, i.e. no four points lie on a
     common circle. Thus algorithms using Delaunay triangulations
     like e.g. variants of Reverse Search can simply be applied.

  6) The labelling of the points (i.e. the sequence in the file)
     is chosen in a way such that the resulting lambda-matrix is
     lexicographically minimized among all possible permutations
     of the labelling. As a consequence, the first line of each
     lambda-matrix is 0, 0, 1, 2, ... , n-2. In other words point
     p_1 is extreme (i.e. lies on the convex hull) and points p_2,
     p_3, ..., p_n are sorted clockwise around p_1. Note that
     for a set and its reflected counterpart the one with the
     smaller minimized lambda-matrix is chosen.


D) Why is Our Data Base Reliable?

     The most involved step is to determine the number N of
     different point sets that have to be realized. This is done by
     grouping all candidates (obtained via pseudoline arrangements)
     into classes with the same projective order type. Either each
     or no set of a class is realizable.
     Moreover it is known how many (but not which) classes are not
     realizable, say k. So by realizing at least one representative
     for each but k classes, N can be computed. See the full paper
     for more details.
     
     Once N and all realizable classes are known we used several
     methods to realize the sets. However, the methods we used are
     not relevant, as long as correctness of the result is provided:

     Since all point coordinates are integer and there are no
     collinear points it is simple and numerically reliable to derive
     the lambda-matrix from a given point set. By property C6 it
     is easy to compare and sort these sets. Therefore by checking
     that property C6 is fulfilled for every set (numerically
     reliable integer manipulation), then checking that the sets
     appear in lexicographically sorted order within the file, and
     finally testing that no two neighboured sets (in sorted order)
     have the same lambda-matrix, we guarantee that all sets
     obtained have different order types. By equality of the number
     of computed sets to N, correctness is proven.


E) Applications

For a collection of possible applications and interesting results
obtained from our data base please refer to the file applications.txt.


REFERENCES

[1] O. Aichholzer and F. Aurenhammer and H. Krasser
    Enumerating Order Types for Small Point Sets with Applications
    In Proc. 17th Ann. ACM Symp. Computational Geometry, Medford,
    SoCG 2001, pages 11-18, Massachusetts, USA, 2001.

[2] O. Aichholzer and H. Krasser
    The Point Set Order Type Data Base: A Collection
    of Applications and Results
    In Proc. 13th Annual Canadian Conference on Computational Geometry
    CCCG 2001, pages 17-20, Waterloo, Ontario, Canada, 2001.

[3] O. Aichholzer and H. Krasser
    Abstract order type extension and new results on the
    rectilinear crossing number.
    Computational Geometry: Theory and Applications, 36(1):2-15, 2006.
